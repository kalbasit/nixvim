{ config, lib, ... }:

{
  options = {
    neoVimStartupLogo = lib.mkOption {
      type = lib.types.str;
      # Use https://fsymbols.com/generators/carty/ to generate this art
      default = ''
        ████████╗██████╗░██╗██████╗░██╗███╗░░██╗░░░████████╗███████╗░█████╗░██╗░░██╗
        ╚══██╔══╝██╔══██╗██║██╔══██╗██║████╗░██║░░░╚══██╔══╝██╔════╝██╔══██╗██║░░██║
        ░░░██║░░░██████╔╝██║██████╔╝██║██╔██╗██║░░░░░░██║░░░█████╗░░██║░░╚═╝███████║
        ░░░██║░░░██╔══██╗██║██╔═══╝░██║██║╚████║░░░░░░██║░░░██╔══╝░░██║░░██╗██╔══██║
        ░░░██║░░░██║░░██║██║██║░░░░░██║██║░╚███║██╗░░░██║░░░███████╗╚█████╔╝██║░░██║
        ░░░╚═╝░░░╚═╝░░╚═╝╚═╝╚═╝░░░░░╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚══════╝░╚════╝░╚═╝░░╚═╝
      '';
      description = "Logo";
    };
  };

  config = {
    plugins.startup = {
      enable = true;

      colors = {
        background = "#ffffff";
        foldedSection = "#ffffff";
      };

      sections = {
        header = {
          type = "text";
          oldfilesDirectory = false;
          align = "center";
          foldSection = false;
          title = "Header";
          margin = 5;
          content = lib.strings.splitString "\n" config.neoVimStartupLogo;
          highlight = "Statement";
          defaultColor = "";
          oldfilesAmount = 0;
        };

        body = {
          type = "mapping";
          oldfilesDirectory = false;
          align = "center";
          foldSection = false;
          title = "Menu";
          margin = 5;
          content = [
            [
              " Find File"
              "Telescope find_files"
              "<leader>ff"
            ]
            [
              "󰍉 Find Word"
              "Telescope live_grep"
              "<leader>fr"
            ]
            [
              " Recent Files"
              "Telescope oldfiles"
              "<leader>fr"
            ]
            [
              " File Browser"
              "Telescope file_browser"
              "<leader>fe"
            ]
            [
              " Copilot Chat"
              "CopilotChat"
              "<leader>ct"
            ]
          ];
          highlight = "string";
          defaultColor = "";
          oldfilesAmount = 0;
        };
      };

      options = {
        paddings = [
          1
          3
        ];
      };

      parts = [
        "header"
        "body"
      ];
    };
  };
}
