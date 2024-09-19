local dap = require('dap')



-- Helper function to get the current Conda environment's Python path
local function get_conda_python_path()
    local conda_prefix = os.getenv("CONDA_PREFIX")
    if conda_prefix then
        return conda_prefix .. "/bin/python"
    else
        return "/Users/rchouhan/miniconda3/envs/qure/bin/python" -- Fallback to system Python
    end
end

dap.adapters.python = {
    type = 'executable',
    command = get_conda_python_path(),
    args = { '-m', 'debugpy.adapter' },
}

dap.configurations.python = {
    {
        type = 'python',
        request = 'launch',
        name = "Launch file",
        program = "${file}",
        pythonPath = get_conda_python_path,
    },
}


------------------------------- Set Up nvim-dap-ui-------------------------------
require("dapui").setup()
-- Automatically open/close the UI during debugging
dap.listeners.after.event_initialized["dapui_config"] = function()
  require("dapui").open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  require("dapui").close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  require("dapui").close()
end
---------------------------------------------------------------------------------


----------------  Basic Debugging Workflow --------------------------------------
vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})

-- vim.api.nvim_set_keymap('n', '<F5>', ":lua require'dap'.continue()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>deb', ":lua require'dap'.continue()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F10>', ":lua require'dap'.step_over()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F11>', ":lua require'dap'.step_into()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F12>', ":lua require'dap'.step_out()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>b', ":lua require'dap'.toggle_breakpoint()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>dr', ":lua require'dap'.repl.open()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>dl', ":lua require'dap'.run_last()<CR>", { noremap = true, silent = true })

----------------  END Basic Debugging Workflow ------------------------------------