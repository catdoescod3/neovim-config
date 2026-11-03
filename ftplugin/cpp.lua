local clangd_config = function()
    local root_patterns = { '.git', 'compile_commands.json', '.clangd', '.clang-format' }
    return {
        cmd = {
            'clangd',
            '--clang-tidy',
            '--enable-config'
        },

        root_dir = vim.fs.root(0, root_patterns),
        filetypes = { 'c', 'cpp', 'h', 'hpp' },
        root_markers = { '.clang-format', '.clangd', 'compile_commands.json' } 
    }
end

local bufid = vim.api.nvim_get_current_buf()
local client_id = vim.lsp.start(clangd_config())
local client = vim.lsp.get_client_by_id(client_id)

local opts = { buffer = bufid, silent = true }
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)

vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = { '*.c', '*.cpp', '*.h', '*.hpp' },
    callback = function(args)
      vim.lsp.buf.format({ bufnr = args.buf, id = client.id, timeout_ms = 1000 })
    end
})
