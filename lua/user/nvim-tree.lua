local tree_cb =  require("nvim-tree.config").nvim_tree_callback

require("nvim-tree").setup {
    hijack_directories = {
    	enable = false,
    },
    view = {
	    width = 30,
	    height = 30,
	    hide_root_folder = false,
	    side = "left",
    -- auto_resize = true,
    mappings = {
      custom_only = false,
      list = {
        { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        { key = "h", cb = tree_cb "close_node" },
        { key = "v", cb = tree_cb "vsplit" },
      },
    },
    number = false,
    relativenumber = false,
  }
}
