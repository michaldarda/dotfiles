if(vim.g.vscode) then
else
  vim.o.termguicolors = true
  vim.o.syntax = 'on'
  vim.o.errorbells = false
  vim.o.smartcase = true
  vim.o.showmode = false
  vim.bo.swapfile = false
  vim.o.backup = false
  vim.o.undofile = true
  vim.o.incsearch = true
  vim.o.hidden = true
  vim.o.completeopt='menuone,noinsert,noselect'
  vim.bo.autoindent = true
  vim.bo.smartindent = true
  vim.o.tabstop = 2
  vim.o.softtabstop = 2
  vim.o.shiftwidth = 2
  vim.o.expandtab = true
  vim.wo.number = true
  vim.wo.relativenumber = false
  vim.wo.wrap = false
  vim.o.clipboard = "unnamedplus"

  vim.g.mapleader = ','

  local vim = vim
  local execute = vim.api.nvim_command
  local fn = vim.fn
  -- ensure that packer is installed
  local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
  end
  vim.cmd [[packadd packer.nvim]]

  require('packer').startup(function()
    use 'tpope/vim-commentary'
    use { "williamboman/mason.nvim" }
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig' 
    use 'simrat39/rust-tools.nvim'
    use 'quanganhdo/grb256'

    -- Completion framework:
    use 'hrsh7th/nvim-cmp' 

    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'

    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                             
    use 'hrsh7th/cmp-path'                              
    use 'hrsh7th/cmp-buffer'                            
    use 'hrsh7th/vim-vsnip'                             
    
    use 'nvim-treesitter/nvim-treesitter'

    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
  end)
  require("mason").setup()
  require('telescope').setup{
    pickers = {
      find_files = {
        theme = "dropdown",
      }
    },
  }
  local builtin = require('telescope.builtin')
  vim.keymap.set('n', 'ff', builtin.find_files, {})
  local rt = {
      server = {
          settings = {
              on_attach = function(_, bufnr)
                  -- Hover actions
                  vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
                  -- Code action groups
                  vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
                  require 'illuminate'.on_attach(client)
              end,
              ["rust-analyzer"] = {
                  checkOnSave = {
                      command = "clippy"
                  }, 
              },
          }
      },
  }
  require('rust-tools').setup(rt)
  -- LSP Diagnostics Options Setup 
  local sign = function(opts)
    vim.fn.sign_define(opts.name, {
      texthl = opts.name,
      text = opts.text,
      numhl = ''
    })
  end

  sign({name = 'DiagnosticSignError', text = ''})
  sign({name = 'DiagnosticSignWarn', text = ''})
  sign({name = 'DiagnosticSignHint', text = ''})
  sign({name = 'DiagnosticSignInfo', text = ''})

  vim.diagnostic.config({
      virtual_text = false,
      signs = true,
      update_in_insert = true,
      underline = true,
      severity_sort = false,
      float = {
          border = 'rounded',
          source = 'always',
          header = '',
          prefix = '',
      },
  })

  -- vim.cmd([[
  -- set signcolumn=yes
  -- autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
  -- ]])

  vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
  vim.opt.shortmess = vim.opt.shortmess + { c = true}
  vim.api.nvim_set_option('updatetime', 300) 

  -- Fixed column for diagnostics to appear
  -- Show autodiagnostic popup on cursor hover_range
  -- Goto previous / next diagnostic warning / error 
  -- Show inlay_hints more frequently 
  -- vim.cmd([[
  -- set signcolumn=yes
  -- autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
  -- ]])

  -- Completion Plugin Setup
  local cmp = require'cmp'
  cmp.setup({
    -- Enable LSP snippets
    snippet = {
      expand = function(args)
          vim.fn["vsnip#anonymous"](args.body)
      end,
    },
    mapping = {
      ['<C-p>'] = cmp.mapping.select_prev_item(),
      ['<C-n>'] = cmp.mapping.select_next_item(),
      -- Add tab support
      ['<S-Tab>'] = cmp.mapping.select_prev_item(),
      ['<Tab>'] = cmp.mapping.select_next_item(),
      ['<C-S-f>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Insert,
        select = true,
      })
    },
    -- Installed sources:
    sources = {
      { name = 'path' },                              -- file paths
      { name = 'nvim_lsp', keyword_length = 3 },      -- from language server
      { name = 'nvim_lsp_signature_help'},            -- display function signatures with current parameter emphasized
      { name = 'nvim_lua', keyword_length = 2},       -- complete neovim's Lua runtime API such vim.lsp.*
      { name = 'buffer', keyword_length = 2 },        -- source current buffer
      { name = 'vsnip', keyword_length = 2 },         -- nvim-cmp source for vim-vsnip 
      { name = 'calc'},                               -- source for math calculation
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    formatting = {
        fields = {'menu', 'abbr', 'kind'},
        format = function(entry, item)
            local menu_icon ={
                nvim_lsp = 'λ',
                vsnip = '⋗',
                buffer = 'Ω',
                path = '🖫',
            }
            item.menu = menu_icon[entry.source.name]
            return item
        end,
    },
  })

  vim.cmd('colorscheme grb256');

    -- Treesitter Plugin Setup 
  require('nvim-treesitter.configs').setup {
    ensure_installed = { "lua", "rust", "toml" },
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting=false,
    },
    ident = { enable = true }, 
    rainbow = {
      enable = true,
      extended_mode = true,
      max_file_lines = nil,
    }
  }
end
