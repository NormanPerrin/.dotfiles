local M = {}

M.init = function()
  local lsp = require("lsp-zero")

  lsp.preset("recommended")

  -- Fix Undefined global "vim"
  lsp.configure("sumneko_lua", {
    settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" }
        }
      }
    }
  })

  local cmp = require("cmp")
  local cmp_select = { behaviour = cmp.SelectBehavior.Select }
  local cmp_mappings = lsp.defaults.cmp_mappings {
    ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
    ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
    ["<C-y>"] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
  }

  -- disable completion with tab
  -- this helps with copilot setup
  cmp_mappings["<Tab>"] = nil
  cmp_mappings["<S-Tab>"] = nil

  lsp.setup_nvim_cmp({
    mapping = cmp_mappings,
  })

  lsp.on_attach(function(client, bufnr)
    -- local opts = { noremap=true, silent=true }
    local opts = { buffer = bufnr, remap = false }

    if client.name == "eslint" then
      vim.cmd.LspStop("eslint")
      return
    end

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "gy", vim.lsp.buf.type_definition, opts)
    vim.keymap.set("n", "<space>f", vim.lsp.buf.format, opts)
    vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)
    vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
    vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<space>rr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
  end)

  lsp.setup()
end

return M
