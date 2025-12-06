require("packer-config")
require("mason-config")
require("nvim-tree-config")

require("settings")
require("mappings")
require("colorschemes-config.solarized")

-- Prepend mise shims to PATH
vim.env.PATH = vim.env.HOME .. "/.local/share/mise/shims:" .. vim.env.PATH
