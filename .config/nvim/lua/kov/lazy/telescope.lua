return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function ()
        local telescope = require("telescope")
        local config = require("telescope.config")

        local vimgrep_arguments = {
            unpack(config.values.vimgrep_arguments),
        }
        table.insert(vimgrep_arguments, "--hidden")
        table.insert(vimgrep_arguments, "--glob")
        table.insert(vimgrep_arguments, "!**/.git/*")

        telescope.setup({
            defaults = {
                vimgrep_arguments = vimgrep_arguments,
            },
            pickers = {
                find_files = {
                    find_command = { "rg", "--files", "--hidden", "--glob",
                        "!**/.git/*" },
                },
            },
        })

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", '<leader>pf', builtin.find_files, {})
        vim.keymap.set("n", "<leader>ps", function ()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
    end
}

