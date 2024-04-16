local keymap = vim.keymap

local opts = { noremap = true, silent = false }

-- neo-tree
--
-- vim.keymap.set("n", "<leader>m", ":Neotree filesystem reveal left<CR>", {})
vim.keymap.set("n", "<leader>m", ":Neotree reveal toggle <CR>", {})

-- Pane and Window Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate Left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate Up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate Right
keymap.set("t", "<C-h>", "[[<Cmd>wincmd h<CR>]]", opts) -- Navigate Left
keymap.set("t", "<C-j>", "[[<Cmd>wincmd j<CR>]]", opts) -- Navigate Down
keymap.set("t", "<C-k>", "[[<Cmd>wincmd k<CR>]]", opts) -- Navigate Up
keymap.set("t", "<C-l>", "[[<Cmd>wincmd l<CR>]]", opts) -- Navigate Right
keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", opts) -- Navigate Left
keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", opts) -- Navigate Down
keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", opts) -- Navigate Up
keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", opts) -- Navigate Right
keymap.set("i", "jk", "<Esc>", opts)
--
--
--
--
--
--
vim.g.vrc_set_default_mappings = 0
vim.g.vrc_response_default_content_type = "application/json"
keymap.set("n", "<leader>xr", ":call VrcQuery()<CR>") -- Open REST Console
--
--
--
--
--
vim.keymap.set("i", "<C-p>", 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true

-- Window Management
keymap.set("n", "<leader>/", ":vsplit<CR>", opts) -- Split Vertically
keymap.set("n", "<leader>-", ":split<CR>", opts) -- Split Horizontally
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- Toggle Minimize

-- Indenting
keymap.set("v", "<", "<gv") -- Shift Indentation to Left
keymap.set("v", ">", ">gv") -- Shift Indentation to Right

-- Show Full File-Path
keymap.set("n", "<leader>pa", ":echo expand('%:p')<CR>", opts) -- Show Full File Path

-- Comments
keymap.set("n", "<C-_>", "gtc", { noremap = false })
keymap.set("v", "<C-_>", "goc", { noremap = false })

-- tchis scripts
-- Define a function to prompt for input and run the script with the input
function Tsrfce()
  local component_name = vim.fn.input("Component name: ")
  if component_name ~= "" then
    vim.fn.termopen("tsrfce " .. component_name)
  end
end

-- Map a key to invoke the custom function
vim.api.nvim_set_keymap("n", "<leader>ac", ":lua Tsrfce()<CR>", { noremap = true, silent = true })
