local lspconfig = require('lspconfig')
lspconfig.ocamllsp.setup {
  on_attach = function(_,bufnbr)
    vim.keymap.set("n","K",vim.lsp.buf.hover, {buffer = bufnbr})
  end
}
