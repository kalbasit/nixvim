{
  config = {
    extraConfigLuaPre =
      # lua
      ''
        vim.fn.sign_define("diagnosticsignerror", { text = " ", texthl = "diagnosticerror", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsignwarn", { text = " ", texthl = "diagnosticwarn", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsignhint", { text = "󰌵", texthl = "diagnostichint", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsigninfo", { text = " ", texthl = "diagnosticinfo", linehl = "", numhl = "" })
      '';

    clipboard = {
      providers.xsel.enable = true;
    };

    opts = {
      # Show line numbers
      number = true;

      # Show relative line numbers
      relativenumber = true;

      # Number of spaces that represent a <TAB>
      tabstop = 2;
      softtabstop = 2;

      # Show tabline always
      showtabline = 2;

      # Use spaces instead of tabs
      expandtab = true;

      # Enable smart indentation
      smartindent = true;

      # Number of spaces to use for each step of (auto)indent
      shiftwidth = 2;

      # Enable break indent
      breakindent = true;

      # Highlight the screen line of the cursor
      cursorline = true;

      # Minimum number of screen lines to keep above and below the cursor
      scrolloff = 8;

      # Disable mouse support
      mouse = "";

      # Set folding method to manual
      foldmethod = "manual";

      # Disable folding by default
      foldenable = false;

      # Wrap long lines at a character in 'breakat'
      linebreak = true;

      # Disable spell checking
      spell = false;

      # Time in milliseconds to wait for a mapped sequence to complete
      timeoutlen = 300;

      # Enable 24-bit RGB color in the TUI
      termguicolors = true;

      # Ignore case when searching
      ignorecase = true;

      # Remember undo chains between sessions
      undofile = true;

      # Remember things between sessions
      #
      # '20  - remember marks for 20 previous files
      # <50 - save 50 lines for each register
      # :20  - remember 20 items in command-line history
      # %    - remember the buffer list (if vim started without a file arg)
      # n    - set name of viminfo file
      shada = "'20,<50,:20,%,n~/.config/nvim/_nviminfo";

      # Don't show mode in the command line
      showmode = false;

      # Open new split below the current window
      splitbelow = true;

      # Keep the screen when splitting
      splitkeep = "screen";

      # Open new split to the right of the current window
      splitright = true;

      # Hide command line unless needed
      cmdheight = 0;

      # Remove EOB
      fillchars = {
        eob = " ";
      };
    };
  };
}
