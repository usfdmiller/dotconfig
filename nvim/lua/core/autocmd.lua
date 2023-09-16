local autocmd = vim.api.nvim_create_autocmd

autocmd("FileType", {
    pattern = "terraform, json",
    callback = function()
        vim.opt.shiftwidth = 2
        vim.opt.softtabstop = 2
        vim.opt.tabstop = 2
    end
})

autocmd("FileType", {
    pattern = "TelescopeResults",
    callback = function()
        vim.opt.foldmethod = "manual"
    end
})

autocmd("BufWritePre", {
    pattern = "*",
    callback = function() vim.lsp.buf.format() end
})
