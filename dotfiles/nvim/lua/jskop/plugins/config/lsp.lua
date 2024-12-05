local function get_html_capabilities()
 local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.completion.completionItem.snippetSupport = true
 return capabilities
end

  require("mason").setup()
  require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "rust_analyzer", "gopls", "tailwindcss", "cssls", "ts_ls", "html", "clangd" },
  })
  local lspc = require("lspconfig")
  lspc.clangd.setup({})
   lspc.cssls.setup({
    capabilities = get_html_capabilities()
  })
  lspc.gopls.setup({})
  lspc.html.setup({
    capabilities = get_html_capabilities()
  })
  lspc.ts_ls.setup({})
  lspc.lua_ls.setup({
    on_init = function(client)
      if client.workspace_folders then
        local path = client.workspace_folders[1].name
        if vim.loop.fs_stat(path .. '/.luarc.json') or vim.loop.fs_stat(path .. '/.luarc.jsonc') then
          return
        end
      end

      client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
        runtime = {
          version = 'LuaJIT'
        },
        workspace = {
          checkThirdParty = false,
          library = {
            vim.env.VIMRUNTIME
          }
        }
      })
    end,
    settings = {
      Lua = {}
    }
  })
  lspc.rust_analyzer.setup({
    settings = {
      ['rust-analyzer'] = {
        diagnostics = {
          enable = true,
        }
      }
    }
  })

  local km = vim.keymap

  km.set({ "n", "i" }, "<C-.>", vim.lsp.buf.code_action, { desc = "Code action" })
  km.set({ "n", "i" }, "<C-S-I>", vim.lsp.buf.format, { desc = "Format buffer" })
  km.set({ "n", "i" }, "<C-Space>", vim.lsp.buf.hover, { desc = "Hover info" })
  km.set({ "n", "i" }, "<C-S-Space>", vim.lsp.buf.signature_help, { desc = "Signature info" })
  km.set({ "n", "i" }, "<C-S-R>", vim.lsp.buf.rename, { desc = "Rename" })
  km.set({ "n", "i" }, "<F12>", vim.lsp.buf.declaration, { desc = "Go to declaration" })
  km.set({ "n", "i" }, "<S-F12>", vim.lsp.buf.definition, { desc = "Go to definition" })
  km.set({ "n", "i" }, "<C-F12>", vim.lsp.buf.implementation, { desc = "Go to implementation" })
  km.set({ "n", "i" }, "<M-S-R>", vim.lsp.buf.references, { desc = "List references" })
