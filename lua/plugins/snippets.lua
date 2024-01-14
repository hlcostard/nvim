return {
    "L3MON4D3/LuaSnip",
    tag = "v2.*",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
        local ls = require("luasnip")
        require("luasnip.loaders.from_vscode").lazy_load()

        vim.keymap.set({"i", "s"}, "<C-j>", function() ls.jump(-1) end, {silent = true})
        vim.keymap.set({"i", "s"}, "<C-k>", function() ls.jump(1) end, {silent = true})
    end
}
