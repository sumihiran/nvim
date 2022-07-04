local options = {
    background = "dark",
    -- syntax = "on", -- switched to treesitter
    showmode = false,
    mouse = "a",

    expandtab = true,                        -- convert tabs to spaces 
    shiftwidth = 4,                          -- the number of spaces inserted for each indentation
    tabstop = 4,                             -- insert 4 spaces for a tab

    ignorecase = true,			             -- case insensitive search unless capital letters are used
    smartcase = true,

    undofile = true,

    splitbelow = true,
    splitright = true,

    incsearch = true,
    hlsearch = false,
    termguicolors = true,
    number = true,                           -- set numbered lines
    relativenumber = true,
    shiftwidth = 4,
    numberwidth = 4,                         -- set number column width to 4
    signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
    wrap = false,                            -- display lines as one long line
    scrolloff = 8,                           
    sidescrolloff = 8,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
