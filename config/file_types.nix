{
  autoGroups = {
    filetypes = { };
  };

  files = {
    "ftdetect/bicepft.lua".autoCmd = [
      {
        group = "filetypes";
        event = [
          "BufRead"
          "BufNewFile"
        ];
        pattern = [
          "*.bicep"
          "*.bicepparam"
        ];
        command = "set ft=bicep";
      }
    ];

    "ftdetect/helm.lua".autoCmd = [
      {
        group = "filetypes";
        event = [
          "BufRead"
          "BufNewFile"
        ];
        pattern = [
          "*.helm"
        ];
        command = "set ft=helm";
      }
    ];

    "ftdetect/terraformft.lua".autoCmd = [
      {
        group = "filetypes";
        event = [
          "BufRead"
          "BufNewFile"
        ];
        pattern = [
          "*.tf"
          " *.tfvars"
          " *.hcl"
        ];
        command = "set ft=terraform";
      }
    ];
  };
}
