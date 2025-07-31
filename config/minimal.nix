{
  imports = [
    # General Configuration
    ./settings.nix
    ./auto_cmds.nix
    ./file_types.nix

    # Keymaps
    ./keymaps

    # Themes
    ./plugins/themes

    # Completion
    ./plugins/cmp/autopairs.nix

    # Editor plugins and configurations
    ./plugins/editor/undotree.nix
    ./plugins/editor/todo-comments.nix

    # UI plugins
    ./plugins/ui/startup.nix

    # Utils
    ./plugins/utils/telescope.nix
    ./plugins/utils/whichkey.nix
    ./plugins/utils/mini.nix
    ./plugins/utils/toggleterm.nix
    ./plugins/utils/web-devicons.nix
  ];

  viAlias = true;
  vimAlias = true;

  withRuby = false;
  withPython3 = false;
}
