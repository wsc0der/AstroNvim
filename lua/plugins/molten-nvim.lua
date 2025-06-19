return {
    {
        "benlubas/molten-nvim",
        version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
        dependencies = { "3rd/image.nvim" },
        build = ":UpdateRemotePlugins",
        init = function()
            -- these are examples, not defaults. Please see the readme
            vim.g.molten_image_provider = "image.nvim"
            vim.g.molten_output_win_max_height = 20
        end,
        keys = {
            {
                "<leader>mi",
                "<cmd>MoltenInit<cr>",
                silent = true,
                desc = "Initialize the plugin",
            },
            {
                "<leader>mI",
                "<cmd>MoltenInfo<cr>",
                silent = true,
                desc = "Show information"
            },
            {
                "<leader>mo",
                "<cmd>MoltenEvaluateOperator<cr>",
                silent = true,
                desc = "run operator selection",
            },
            {
                "<leader>ml",
                "<cmd>MoltenEvaluateLine<cr>",
                silent = true,
                desc = "evaluate line",
            },
            {
                "<leader>mr",
                "<cmd>MoltenReevaluateCell<cr>",
                silent = true,
                desc = "re-evaluate cell",
            },
            {
                "<leader>mv",
                ":<C-u>MoltenEvaluateVisual<cr>",
                mode = "v",
                silent = true,
                desc = "evaluate visual selection",
            },
        },
    },
    {
        -- see the image.nvim readme for more information about configuring this plugin
        "3rd/image.nvim",
        opts = {
            backend = "kitty", -- whatever backend you would like to use
            max_width = 100,
            max_height = 12,
            max_height_window_percentage = math.huge,
            max_width_window_percentage = math.huge,
            window_overlap_clear_enabled = true, -- toggles images when windows are overlapped
            window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
        },
    }
}
