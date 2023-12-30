return {
    "0x5a4/oogway.nvim",
    --[[ cmd = { "Oogway" }, ]] -- no lazy loading when commented out
    init = function()
        local oogway = require("oogway")
        vim.api.nvim_create_autocmd({ "VimEnter", "BufNewFile" },
            {
                callback = function()
                    -- just the quote
                    vim.notify(oogway.what_is_your_wisdom())
                    -- quote and ascii picture
                    --[[ { vim.notify(oogway.sense_the_dragon_warrior()) }) ]]
                end
            })
    end
}
