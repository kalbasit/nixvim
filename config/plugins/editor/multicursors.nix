{
  plugins.multicursors = {
    enable = true;
  };

  keymaps = [
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>mcn";
      action = ":MCstart<CR>";
      options = {
        desc = "Select the word under the cursor and start listening for the actions. In visual mode, it acts like MCvisual.";
      };
    }
    {
      mode = "n";
      key = "<leader>mcp";
      action = ":MCpattern<CR>";
      options = {
        desc = "Prompts for a pattern and selects every match in the buffer.";
      };
    }
    {
      mode = "v";
      key = "<leader>mcp";
      action = ":MCvisualPattern<CR>";
      options = {
        desc = "Prompts for a pattern and selects every match in the visual selection.";
      };
    }
  ];
}
