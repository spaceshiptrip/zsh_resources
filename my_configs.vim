"""""""""""
"
" NOTE:  For use with the gist: https://gist.github.com/spaceshiptrip/b828a4e76b5b7ad08017ba55aeab5fd9
"
"""""""""""

"""""""""""
" Folding lines Settings
"""""""""""
set nofoldenable

"""""""""""
" tabs
"""""""""""
set expandtab
set tabstop=2
set shiftwidth=2

"""""""""""
" NERDTree Settings
"""""""""""
autocmd VimEnter * NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeWinPos = "left"
map <leader>nn :NERDTreeToggle<cr>
"""""""""""
" Font Settings
"""""""""""
set guifont=Consolas:h11
"""""""""""
" Airline Theme
"""""""""""
" theme template: let g:airline_theme='<theme>'
" see https://github.com/vim-airline/vim-airline/wiki/Screenshots for themes
let g:airline_theme='dark'
" solarized dark is different:
"let g:airline_theme='solarized'
"let g:airline_solarized_bg='dark'
"let g:airline_theme='badwolf'
"let g:airline_theme='wombat'
let g:airline#extensions#tabline#enabled = 1
" top line buffer path theme: ~/full/path-to/file-name.js
"let g:airline#extensions#tabline#formatter = 'default'  " f/p/file-name.js
let g:airline#extensions#tabline#formatter = 'jsformatter' " path-to/f
"let g:airline#extensions#tabline#formatter = 'unique_tail' " file-name.js
"let g:airline#extensions#tabline#formatter = 'unique_tail_improved' " f/p/file-name.js
let g:airline_powerline_fonts = 1                                                                                                         
let g:airline_section_b = '%{getcwd()}' " in section B of the status line display the CWD                                                 
" let g:airline#extensions#tabline#enabled = 1           " enable airline tabline                                                           
" let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline                                            
" let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
" let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)      
" let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab                                                    
" let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right                                                           
" let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline                                                 
" let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline                                  
" let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline               
" let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers                                                              
" let g:airline#extensions#tabline#show_tab_type = 0     " disables the weird ornage arrow on the tabline
" Note: You must define the dictionary first before setting values.
" Also, it's a good idea to check whether it exists as to avoid 
" accidentally overwriting its contents.
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
"""""""""""
" Airline buffer remaps CTRL arrow keys
"""""""""""
nnoremap <S-Left> :bp<CR>
nnoremap <S-Right> :bn<CR>
"""""""""""
" CoC Conquer of Completion
" To Disable --> :CocDisable
"""""""""""
let g:coc_disable_startup_warning = 1
" map <CR> for CoC Command Complete
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
" Give more space for displaying messages.
set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
"  other plugin before putting this into your config.
" local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
" keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
"""""""""""
" Remapping space and c-space because ultimate / awesome vim 
" sets it up for find
"""""""""""
"map <space> <c-d>
map <space> <space>
map <c-space> <c-u>
"""""""""""
" Matching brackets turn red and highlighted
"""""""""""
hi MatchParen cterm=bold ctermbg=none ctermfg=red  
"""""""""""
" NERDTreeGitStatus
"""""""""""
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeGitStatusShowIgnored = 1 " a heavy feature may cost much more time. default: 0

"""""""""""
" Higlighted Yank
"""""""""""
" specify duration in milliseconds
" let g:highlightedyank_highlight_duration = 1000
" A negative number makes the highlight persistent.
let g:highlightedyank_highlight_duration = -1
"""""""""""
" Mini-map
"""""""""""
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
let g:minimap_highlight_search = 1
let g:minimap_git_colors = 1
""""""""""""
" Line numbers
"""""""""""
set nu
"""""""""""
" Make splits start below current
"""""""""""
set splitbelow
"""""""""""
" Default terminal size is 10 lines high
"""""""""""
"set termwinsize=10x0 " to unset use: set termwinsize=0x0
"""""""""""
" Make tabs 2 instead of default 8
"""""""""""
set tabstop=2
"""""""""""
" Enable mouse
"""""""""""
set mouse=a
"enable mouse scroll on term!
function! ExitNormalMode()
    unmap <buffer> <silent> <RightMouse>
    call feedkeys("a")
endfunction
function! EnterNormalMode()
    if &buftype == 'terminal' && mode('') == 't'
        call feedkeys("\<c-w>N")
        call feedkeys("\<c-y>")
        map <buffer> <silent> <RightMouse> :call ExitNormalMode()<CR>
    endif
endfunction
tmap <silent> <ScrollWheelUp> <c-w>:call EnterNormalMode()<CR>
 
"""""""""""
" Used for Devicons: https://github.com/ryanoasis/vim-devicons
"""""""""""
set encoding=UTF-8
