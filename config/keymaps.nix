{
  globals.mapleader = " ";

  plugins.vim-colemak.enable = true;

  keymaps = [
    {
      mode = "n";
      key = "<leader>gf";
      # TODO: This action has a bug that it creates a file relative to Vim's
      # CWD as opposed to being relative to the buffer. My existing Nvim
      # suffers from the same bug, I'm leaving a note for myself to fix it.
      action = ":e <cfile><CR>";
      options = {
        desc = "Open file at cursor even if non-existing";
      };
    }
    {
      mode = "n";
      key = "<leader>=";
      action = ":normal! gg=G``<CR>";
      options = {
        desc = "Format the entire file";
      };
    }
    {
      mode = "n";
      key = "<leader>cd";
      action = ":lcd %:h<CR>";
      options = {
        desc = "Change to the directory containing the file in the buffer";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>md";
      action = ":!mkdir -p %:p:h<CR>";
      options = {
        desc = "Create the directory containing the file in the buffer";
        silent = true;
      };
    }
    {
      # http://vimcasts.org/e/14
      mode = "n";
      key = "<leader>ew";
      action = ":e <C-R>=expand('%:h').'/'<CR>";
      options = {
        desc = "Open a file from the same directory in the current buffer";
      };
    }
    {
      # http://vimcasts.org/e/14
      mode = "n";
      key = "<leader>es";
      action = ":sp <C-R>=expand('%:h').'/'<CR>";
      options = {
        desc = "Open a file from the same directory in a horizontal split";
      };
    }
    {
      # http://vimcasts.org/e/14
      mode = "n";
      key = "<leader>ev";
      action = ":vsp <C-R>=expand('%:h').'/'<CR>";
      options = {
        desc = "Open a file from the same directory in a vertical split";
      };
    }
    {
      # http://vimcasts.org/e/14
      mode = "n";
      key = "<leader>et";
      action = ":tabe <C-R>=expand('%:h').'/'<CR>";
      options = {
        desc = "Open a file from the same directory in a new tab";
      };
    }
    {
      mode = "n";
      key = "gw";
      action = ''
        :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'
      '';
      options = {
        desc = "Swap two words";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fc";
      action = "<ESC>/\v^[<=>]{7}( .*\|$)<CR>";
      options = {
        desc = "Find merge conflict markers";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>hs";
      action = ":set hlsearch! hlsearch?<CR>";
      options = {
        desc = "Toggle hlsearch";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ww";
      action = ":wall<CR>";
      options = {
        desc = "Save all buffers";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>wa";
      action = ":%bd<CR>";
      options = {
        desc = "Close all buffers";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>cd";
      action = "vim.diagnostic.open_float";
      options = {
        desc = "Line Diagnostics";
      };
    }
    {
      mode = "n";
      key = "]d";
      action = "diagnostic_goto(true)";
      options = {
        desc = "Next Diagnostic";
      };
    }
    {
      mode = "n";
      key = "[d";
      action = "diagnostic_goto(false)";
      options = {
        desc = "Prev Diagnostic";
      };
    }
    {
      mode = "n";
      key = "]e";
      action = "diagnostic_goto(true 'ERROR')";
      options = {
        desc = "Next Error";
      };
    }
    {
      mode = "n";
      key = "[e";
      action = "diagnostic_goto(false 'ERROR')";
      options = {
        desc = "Prev Error";
      };
    }
    {
      mode = "n";
      key = "]w";
      action = "diagnostic_goto(true 'WARN')";
      options = {
        desc = "Next Warning";
      };
    }
    {
      mode = "n";
      key = "[w";
      action = "diagnostic_goto(false 'WARN')";
      options = {
        desc = "Prev Warning";
      };
    }
    {
      mode = "n";
      key = "<leader>ui";
      action = "vim.show_pos";
      options = {
        desc = "Inspect Pos";
      };
    }
  ];
}
