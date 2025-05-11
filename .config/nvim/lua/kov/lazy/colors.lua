local colors = {
    dark = "#313830",
    light = "#c4ddc2",
    grey = "#80917e",
    orange = "#f0d3bd",
    black = "#131713",
}

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = colors.light, fg = colors.black })
vim.api.nvim_set_hl(0, "LineNr", { fg = colors.grey })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = colors.light, fg = colors.black })
vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = colors.orange })

return {}

