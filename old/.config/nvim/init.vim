set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set relativenumber
set nu
set hlsearch " Highligh search results
set title " Show the filename in the window titlebar
set noerrorbells
set smartindent
set smartcase
set hidden
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set signcolumn=yes
set cmdheight=1
set colorcolumn=80
set completeopt=menuone,noselect
set nocompatible " wikivim
set nospell

call plug#begin('~/.vim/plugged')
Plug 'neovim/nvim-lspconfig'
" cmp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
"cmp
" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" telescope
Plug 'ThePrimeagen/harpoon'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'mbbill/undotree'
Plug 'machakann/vim-highlightedyank'
Plug 'sbdchd/neoformat'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'elixir-editors/vim-elixir'
" themes
Plug 'morhetz/gruvbox'
Plug 'haishanh/night-owl.vim'
Plug 'sheerun/vim-polyglot'
"github
Plug 'pwntester/octo.nvim'
Plug 'mhinz/vim-mix-format'
" spellcheck
Plug 'kamykn/spelunker.vim'
Plug 'vimwiki/vimwiki'
call plug#end()


set termguicolors

 """"" enable the theme
syntax enable
"colorscheme gruvbox 
colorscheme night-owl 

filetype plugin on " wikivim

:lua << EOF
  require'lspconfig'.tsserver.setup{}
EOF

:lua << EOF
  require'lspconfig'.gopls.setup{}
EOF

" :lua << EOF
"   require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
" EOF
:lua << EOF
  require'lspconfig'.pyright.setup{}
EOF

:lua << EOF
  require'lspconfig'.elixirls.setup{ cmd = { "/Users/takuya/elixir-ls/release/language_server.sh" } }
EOF

:lua << EOF
  require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules, *.lock, /public"} } }
EOF


:lua << EOF
  require('octo').setup{}
EOF



"enable treesitter 
:lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,             
  },
}
EOF

set completeopt=menuone,noinsert,noselect 
"let g:completion_matching_strategy_list=['exact', 'substring', 'fuzzy']
"
:lua <<EOF
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      end
    },
    mapping = {
      ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close()
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true })
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' }
    }, {
      { name = 'buffer' }
    })
  })

  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  require('lspconfig')['tsserver'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['elixirls'].setup {
    cmd = { "/Users/takuya/elixir-ls/release/language_server.sh" },
  }
  require('lspconfig')['gopls'].setup {}
EOF

" autocmd BufWritePre * Neoformat
augroup fmt
  autocmd!
  autocmd BufWritePre * Neoformat
augroup END

let g:mix_format_on_save = 1

let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'typescript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

let g:highlightedyank_highlight_duration=100

" use markdown syntax in vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]



" Disable parentheses matching depends on system. This way we should address all cases (?)
set noshowmatch
" NoMatchParen " This doesnt work as it belongs to a plugin, which is only loaded _after_ all files are.
" Trying disable MatchParen after loading all plugins
"
function! g:FckThatMatchParen ()
    if exists(":NoMatchParen")
        :NoMatchParen
    endif
endfunction

augroup plugin_initialize
    autocmd!
    autocmd VimEnter * call FckThatMatchParen()
augroup END

let mapleader = " " 
" General key bingings
" Write file
nnoremap <leader>w :w<cr> 
nnoremap <leader>q :q<cr> 
nnoremap <leader>ex :Ex<cr> 
nnoremap <leader>V :Vex<cr> 
nnoremap <leader>S :Sex<cr> 
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <C-p> <cmd>Telescope git_files<cr>
nnoremap <leader>lb <cmd>Telescope buffers<cr>
nnoremap <leader>lg <cmd>Telescope live_grep<cr>
" nnoremap gd <cmd>lua vim.lsp.buf.definition()<cr> 
nnoremap gd <cmd> lua require('telescope.builtin').lsp_definitions()<cr> 
nnoremap ca <cmd> lua require('telescope.builtin').lsp_code_actions()<cr> 
nnoremap <leader>gs <cmd>G<cr>
nnoremap <leader>gc <cmd>Git commit<cr>
nnoremap <leader>ut :UndotreeToggle<CR>
" format file
nnoremap <leader>ff ggVG=<C-o>

" Clear search register
nnoremap <leader>cs :let @/ = ""<CR>
" easy replace
vnoremap <leader>p "_dp
vnoremap D "_d
" yank to the clipboard
vnoremap <leader>cy "+y

" yank the rest of line
nnoremap Y y$

" Keep it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z 

nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" hapoon 
nnoremap <leader>lh :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <leader>ah :lua require("harpoon.mark").add_file()<CR>

" octo
nnoremap <leader>lp <cmd>Octo pr list<cr>
nnoremap <leader>cp <cmd>Octo pr checkout<cr>
nnoremap <leader>sr <cmd>Octo review start<cr>
nnoremap <leader>er <cmd>Octo review submit<cr>

" Go 
autocmd FileType go setlocal tabstop=4 softtabstop=4
autocmd FileType go setlocal shiftwidth=4
