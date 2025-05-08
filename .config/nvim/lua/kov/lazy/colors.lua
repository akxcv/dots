local colors = {
    dark = "#2f2c40",
    light = "#c2acc1",
    grey = "#62646a",
    black = "#070711",
    orange = "#bc6755",
    red = "#b34358",
}

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = colors.light, fg = colors.dark })
vim.api.nvim_set_hl(0, "LineNr", { fg = colors.grey })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = colors.light })
vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = colors.orange })

return {}

