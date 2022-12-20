local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
    return
end

local actions_setup, actions = pcall(require, "actions")
if not actions_setup then
    return
end

telescope.setup({
    defaults = {
        mappings = {
            i = {
                ["<C-k>"] = actions.move_selection_previous,
                ["<Cqj>"] = actions.move_selection_next,
                ["<C-q>"] = actions.move_selection_to_qflist + actions.open_qflist,
            }
        }
    }
})

telescope.load_extension("fzf")
