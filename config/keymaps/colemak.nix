{
  plugins = {
    cmp.settings.mapping = {
      "<C-Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
      "<C-e>" = "cmp.mapping.select_next_item()";
      "<C-i>" = "cmp.mapping.select_prev_item()";
      "<C-c>" = "cmp.mapping.abort()";
      "<C-b>" = "cmp.mapping.scroll_docs(-4)";
      "<C-f>" = "cmp.mapping.scroll_docs(4)";
      "<C-Space>" = "cmp.mapping.complete()";
      "<C-CR>" = "cmp.mapping.confirm({ select = true })";
      "<S-CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
    };

    mini = {
      modules = {
        indentscope = {
          mappings = {
            object_scope = "";
          };
        };
      };
    };

    multicursors = {
      extendKeys = {
        "h" = {
          method = false;
        };
        "j" = {
          method = false;
        };
        "k" = {
          method = false;
        };
        "l" = {
          method = false;
        };
        "w" = {
          method = false;
        };

        "y" = {
          method = "require 'multicursors.extend_mode'.w_method";
          opts = {
            desc = "start word forward";
          };
        };
        "u" = {
          method = "require 'multicursors.extend_mode'.e_method";
          opts = {
            desc = "end word forward";
          };
        };
        "n" = {
          method = "require 'multicursors.extend_mode'.h_method";
          opts = {
            desc = "char left";
          };
        };
        "e" = {
          method = "require 'multicursors.extend_mode'.j_method";
          opts = {
            desc = "char down";
          };
        };
        "i" = {
          method = "require 'multicursors.extend_mode'.k_method";
          opts = {
            desc = "char up";
          };
        };
        "o" = {
          method = "require 'multicursors.extend_mode'.l_method";
          opts = {
            desc = "char right";
          };
        };
      };

      normalKeys = {
        "j" = {
          method = false;
        };
        "J" = {
          method = false;
        };
        "n" = {
          method = false;
        };
        "N" = {
          method = false;
        };
        "p" = {
          method = false;
        };
        "P" = {
          method = false;
        };
        "y" = {
          method = false;
        };
        "Y" = {
          method = false;
        };

        "c" = {
          method = "require 'multicursors.normal_mode'.yank";
          opts = {
            desc = "Yank";
          };
        };
        "cc" = {
          method = "require 'multicursors.normal_mode'.yank_line";
          opts = {
            desc = "Yank line";
          };
        };
        "C" = {
          method = "require 'multicursors.normal_mode'.yank_end";
          opts = {
            desc = "Yank end";
          };
        };
        "k" = {
          method = "require 'multicursors.normal_mode'.find_next";
          opts = {
            desc = "Find next";
          };
        };
        "K" = {
          method = "require 'multicursors.normal_mode'.find_prev";
          opts = {
            desc = "Find prev";
          };
        };
        "e" = {
          method = "require 'multicursors.normal_mode'.create_down";
          opts = {
            desc = "Create down";
          };
        };
        "E" = {
          method = "require 'multicursors.normal_mode'.skip_create_down";
          opts = {
            desc = "Skip create down";
          };
        };
        "i" = {
          method = "require 'multicursors.normal_mode'.create_up";
          opts = {
            desc = "Create up";
          };
        };
        "I" = {
          method = "require 'multicursors.normal_mode'.skip_create_up";
          opts = {
            desc = "Skip create up";
          };
        };
        "v" = {
          method = "require 'multicursors.normal_mode'.paste_after";
          opts = {
            desc = "Paste after";
          };
        };
        "V" = {
          method = "require 'multicursors.normal_mode'.paste_before";
          opts = {
            desc = "Paste before";
          };
        };
      };

      extraOptions = {
        mode_keys = {
          append = "t";
          change = "w";
          extend = "u";
          insert = "s";
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

    telescope = {
      extensions = {
        undo = {
          settings = {
            mappings = {
              n = {
                "c" = "require('telescope-undo.actions').yank_additions";
                "C" = "require('telescope-undo.actions').yank_deletions";
                "z" = "require('telescope-undo.actions').restore";
              };
            };
          };
        };
      };
    };

    vim-colemak.enable = true;
  };
}
