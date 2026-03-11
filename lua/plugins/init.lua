return {
  {
    'nvim-telescope/telescope.nvim', version = '0.2.1',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    }
  },
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate'
  },
  'tpope/vim-fugitive',
  'neovim/nvim-lspconfig',
  {
    'mason-org/mason.nvim',
    opts = {}
  },
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      {
        'GarciaBarreiro/cmp-buffer',
        branch = 'keyword_pattern'
      },
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
    }
  },
}
