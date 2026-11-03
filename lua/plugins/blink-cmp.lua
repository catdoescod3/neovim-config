return {
  'Saghen/blink.cmp',
  version = '1.*',
  opts = {
    
    keymap = { 
        preset = 'default',

        ['<M-j>'] = { 'select_next'},
        ['<M-k>'] = { 'select_prev'},
        ['<M-h>'] = { 'accept' }
    },
    completion = { 

        accept = { 
            auto_brackets = { enabled = true }
        },

        list = { selection = { auto_insert = false } } ,
        documentation = { auto_show = false },
        ghost_text = { enabled = true },
    }
  }
}
