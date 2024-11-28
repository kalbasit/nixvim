{
  plugins = {
    vim-colemak.enable = true;

    mini = {
      modules = {
        indentscope = {
          mappings = {
            object_scope = "";
          };
        };
      };
    };

    neo-tree = {
      # Disable the default keymappings
      useDefaultMappings = false;

      window.mappings = {
        "<CR>" = "open";
        "<esc>" = "revert_preview";
        P = {
          command = "toggle_preview";
          config = {
            use_float = true;
          };
        };
        l = "focus_preview";
        s = "open_split";
        S = "open_vsplit";
        t = "open_tabnew";
        R = "refresh";
        a = {
          command = "add";
          # some commands may take optional config options, see `:h neo-tree-mappings` for details
          config = {
            show_path = "none"; # "none", "relative", "absolute"
          };
        };
        A = "add_directory"; # also accepts the config.show_path and config.insert_as options.
        d = "delete";
        r = "rename";
        c = "copy_to_clipboard";
        x = "cut_to_clipboard";
        v = "paste_from_clipboard";
        q = "close_window";
        "?" = "show_help";
        "<" = "prev_source";
        ">" = "next_source";
      };
    };
  };
}
