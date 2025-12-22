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

  config.plugins.startup = {
    enable = true;

    settings = {
      colors = {
        background = "#ffffff";
        foldedSection = "#ffffff";
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
            "ff"
          ]
          [
            "󰍉 Find Word"
            "Telescope live_grep"
            "fr"
          ]
          [
            " Recent Files"
            "Telescope oldfiles"
            "fg"
          ]
          [
            " File Browser"
            "Telescope file_browser"
            "fe"
          ]
          [
            " Copilot Chat"
            "CopilotChat"
            "ct"
          ]
          [
            "󰧑 SecondBrain"
            "edit ~/projects/personal/SecondBrain"
            "sb"
          ]
        ];
        highlight = "string";
        defaultColor = "";
        oldfilesAmount = 0;
      };
    };
  };
}
