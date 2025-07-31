{
  description = "Wael Nasreddine (kalbasit) NeoVim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    flake-parts.url = "github:hercules-ci/flake-parts";

    nixvim = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:nix-community/nixvim";
    };

    pre-commit-hooks = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:cachix/pre-commit-hooks.nix";
    };
  };

  outputs =
    {
      nixpkgs,
      nixvim,
      flake-parts,
      pre-commit-hooks,
      ...
    }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "aarch64-linux"
        "x86_64-linux"
        "aarch64-darwin"
        "x86_64-darwin"
      ];

      perSystem =
        {
          system,
          pkgs,
          self',
          lib,
          ...
        }:
        let
          nixvimLib = nixvim.lib.${system};
          nixvim' = nixvim.legacyPackages.${system};

          full = nixvim'.makeNixvimWithModule nvimFullModule;
          nvimFullModule = {
            inherit pkgs;
            module = import ./config/full.nix;
            extraSpecialArgs = {
              # inherit (inputs) foo;
            };
          };

          small = nixvim'.makeNixvimWithModule nvimSmallModule;
          nvimSmallModule = {
            inherit pkgs;
            module = import ./config/minimal.nix;
            # You can use `extraSpecialArgs` to pass additional arguments to your module files
            extraSpecialArgs = {
              # inherit (inputs) foo;
            };
          };
        in
        {
          checks = {
            full = nixvimLib.check.mkTestDerivationFromNixvimModule nvimFullModule;
            small = nixvimLib.check.mkTestDerivationFromNixvimModule nvimSmallModule;

            pre-commit-check = pre-commit-hooks.lib.${system}.run {
              src = ./.;
              hooks = {
                statix.enable = true;
                nixfmt-rfc-style.enable = true;
              };
            };
          };

          formatter = pkgs.nixfmt-rfc-style;

          packages = {
            inherit
              full
              small
              ;

            default = full;
          };

          devShells = {
            default = with pkgs; mkShell { inherit (self'.checks.pre-commit-check) shellHook; };
          };
        };
    };
}
