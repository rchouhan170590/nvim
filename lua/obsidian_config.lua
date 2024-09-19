require('obsidian').setup({
    dir = '/Users/rchouhan/Documents/PersonalDoc/Osbian', -- path to Obsidian vault path
    mappings = {
        -- Set up your preferred keybindings
        ['<leader>on'] = ':ObsidianNewNote<CR>',
        ['<leader>oo'] = ':ObsidianOpen<CR>',
    }
})
