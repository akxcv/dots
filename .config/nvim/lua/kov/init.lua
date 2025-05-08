require("kov.set")
require("kov.remap")
require("kov.lazy_init")

local augroup = vim.api.nvim_create_augroup
local kov_group = augroup("kov", {})

local autocmd = vim.api.nvim_create_autocmd

-- Clean up trailing spaces
autocmd({"BufWritePre"}, {
    group = kov_group,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

-- Ensure single newline at end of file
autocmd({"BufWritePre"}, {
    group = kov_group,
    pattern = "*",
    callback = function ()
        local n_lines = vim.api.nvim_buf_line_count(0)
        local last_nonblank = vim.fn.prevnonblank(n_lines)
        if last_nonblank <= n_lines then
            pcall(vim.cmd, "silent! undojoin")
            vim.api.nvim_buf_set_lines(
                0, last_nonblank, n_lines, true, { '' }
            )
        end
    end,
})

