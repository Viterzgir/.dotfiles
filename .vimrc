"           ██
"          ░░
"  ██    ██ ██ ██████████  ██████  █████
" ░██   ░██░██░░██░░██░░██░░██░░█ ██░░░██
" ░░██ ░██ ░██ ░██ ░██ ░██ ░██ ░ ░██  ░░
"  ░░████  ░██ ░██ ░██ ░██ ░██   ░██   ██
"   ░░██   ░██ ███ ░██ ░██░███   ░░█████
"    ░░    ░░ ░░░  ░░  ░░ ░░░     ░░░░░
"
" colors
set t_Co=256
if (has("termguicolors"))
set termguicolors
endif

colorscheme spacemacs-theme

" background
set background=dark

" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

"let g:gruvbox_contrast_dark='hard'
let g:Powerline_symbols = 'fancy'
set guifont=Ubuntu\Mono\derivative\Powerline\ 10

" redraw only when we need to
"set lazyredraw
"set nolazyredraw 
set ttyfast 
set hidden                  " current buffer can be put into background
set showcmd 

" make backspace work 
set backspace=2

" show line numbers
set number

" linenumber color
highlight LineNr ctermfg=015

" show matching brackets/parenthesis
set showmatch

" show extended menu
set wildmenu

" disable startup message
set shortmess+=I

" disable beep signal
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" disable preview scratch
set completeopt-=preview

" stop unnecessary rendering
set lazyredraw

" no line wrapping
set nowrap

" no folding
set foldlevel=99
set foldminlines=99

" don't wrap long lines
set nowrap

" highlight column
set cursorcolumn

" Don’t add empty newlines at the end of files
set binary
set noeol
call plug#begin('~/.vim/plugged')

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Airline status bar
Plug 'bling/vim-airline'

"Airline themes
Plug 'vim-airline/vim-airline-themes'

" Vim theme
Plug 'morhetz/gruvbox'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'rakr/vim-two-firewatch'

" Better color highliting
Plug 'justinmk/vim-syntax-extra'

" Git integration
Plug 'tpope/vim-fugitive'

" Cpp enhanced highlight
Plug 'octol/vim-cpp-enhanced-highlight'

" Dart Plugin
Plug 'dart-lang/dart-vim-plugin'

"Elixir Plugin
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'

" Rust plugin
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

" Go plugin
Plug 'fatih/vim-go'
Plug 'garyburd/go-explorer'

" Xdebug integration
Plug 'joonty/vdebug', { 'for': 'php' }

Plug 'tpope/vim-surround'

"Multiple cursor
Plug 'terryma/vim-multiple-cursors'

" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Tagbar
Plug 'majutsushi/tagbar'

" Autocomplete with Tab
Plug 'ervandew/supertab'

" PHPComplete
Plug 'm2mdas/phpcomplete-extended', { 'for': 'php' }

" Python
Plug 'klen/python-mode'	
Plug 'mitsuhiko/vim-python-combined'

" Vimproc execution library
Plug 'Shougo/vimproc'

" Unite
Plug 'Shougo/unite.vim'

" Fuzzy search
Plug 'kien/ctrlp.vim'

" HTML tag autoclose
Plug 'alvan/vim-closetag'

" Tern for vim
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

" Tern node express
Plug 'angelozerr/tern-node-express', { 'do': 'npm install' }

" HTML5 autocomplete
Plug 'othree/html5.vim'

" Match tags in html, similar to paren support
Plug 'gregsexton/MatchTag', { 'for': 'html' }

" Multi-line commenting
Plug 'scrooloose/nerdcommenter'

" Syntastic: requires jshint/pylint/flow{-bin}
Plug 'scrooloose/syntastic'

" Requires cmake, clang
Plug 'Valloric/YouCompleteMe', { 'do': 'python2 install.py --clang-completer --system-libclang --tern-completer --racer-completer --system-boost' }

" YCM-Generator 
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

" Format code with clang 
Plug 'rhysd/vim-clang-format'

" Plugin that allow compile and run c++ program
Plug 'vim-scripts/SingleCompile'

" Javascript support
Plug 'pangloss/vim-javascript'

" JavaScript syntax plugin
Plug 'othree/yajs.vim', { 'for': 'javascript' }

" JSON support
Plug 'elzr/vim-json', { 'for': 'json' }

" ES6 and beyond syntax
Plug 'othree/es.next.syntax.vim', { 'for': 'javascript' } 

" Format javascript code
Plug 'maksimr/vim-jsbeautify'

" Nodejs support
Plug 'myhere/vim-nodejs-complete'
"Plug 'mmalecki/vim-node.js'
"Plug 'guileen/vim-node-dict'

" Typescript support
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }

" JSHint integration
Plug 'Shutnik/jshint2.vim'

" detect extensionless node scripts (executables) via shebang
" and add gf for going to node_modules files
Plug 'moll/vim-node'

"React JSX syntax highlighting and indenting
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'

" runtime css.vim provides @media syntax highlighting where hail2u doesn't
" JulesWang/css.vim is the active repo for the css.vim bundled with vim
" hail2u extends vim's css highlighting
Plug 'JulesWang/css.vim'
      \| Plug 'hail2u/vim-css3-syntax'
      \| Plug 'cakebaker/scss-syntax.vim'


" Add plugins to &runtimepath
call plug#end()

filetype plugin indent on

"Unite
" "--------------------------------
" Автоматический insert mode
let g:unite_enable_start_insert = 1

" Отображаем Unite в нижней части экрана
let g:unite_split_rule = "botright"

" Отключаем замену статус строки
let g:unite_force_overwrite_statusline = 0

" Размер окна Unite
let g:unite_winheight = 10

" Красивые стрелочки
let g:unite_candidate_icon="▷"

" Default mapping multi cursor
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-l>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Autocmd options
" "--------------------------------
autocmd BufReadPost *.doc silent %!antiword "%" 
autocmd BufWriteCmd *.doc set readonly
autocmd BufReadPost *.odt,*.odp silent %!odt2txt "%"
autocmd BufWriteCmd *.odt set readonly
autocmd BufReadPost *.pdf  silent %!pdftotext -nopgbrk -layout -q -eol unix "%" - | fmt -w78
autocmd BufWriteCmd *.pdf set readonly
autocmd BufReadPost *.rtf silent %!unrtf --text "%"
autocmd BufWriteCmd *.rtf set readonly
autocmd BufRead,BufNewFile ~/.mutt/tmp/* set filetype=mail | set textwidth=72 | set spell |  set wrap | setlocal spell spelllang=nl,en

" YouCompleteMe
" -------------------------------
let g:ycm_auto_trigger = 1
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_key_list_previous_completion=['<Up>']
let g:ycm_show_diagnostics_ui = 0
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_python_binary_path = '/usr/bin/python'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.', '::', '#', 're![a-zA-Z]'],
  \   'objc' : ['->', '.'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::', '#', 're![a-zA-Z]'],
  \   'javascript,go,,python,python2,rust,elixir' : ['->', '.', '::', '#', 're![a-zA-Z]'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::', '.', 're![a-zA-Z]'],
  \   'cs,java,d,dart,vim,perl6,scala,vb' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \   'html': ['<'],
  \   'css': ['.'],
  \ }
let g:ycm_rust_src_path = '/usr/src/rust/src'

" Apply YCM FixIt
map <F9> :YcmCompleter FixIt<CR>

" Clang format option
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11"}
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
nmap <Leader>C :ClangFormatAutoToggle<CR>


" Search
" -------------------------------
set hlsearch

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsListSnippets        = "<c-l>" "List possible snippets based on current file
let g:UltiSnipsUsePythonVersion=2

" RST Live Preview
" --------------------------------
"autocmd FileType rst silent :! (file="%"; rst2pdf % &>/dev/null && evince "${file/.rst/.pdf}" &>/dev/null) &
"command! Reload :! (rst2pdf  % &>/dev/null) &
"au BufWritePost *.rst silent Reload

" fugitive git bindings
" http://www.reddit.com/r/vim/comments/21f4gm/best_workflow_when_using_fugitive/
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gt :Gcommit -v -q %:p<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>gr :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gb :Git branch<Space>
nnoremap <space>go :Git checkout<Space>
nnoremap <space>gps :Git push<CR>
nnoremap <space>gpl :Git pull<CR>

" Vim-airline
" -------------------------------
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0
let g:airline_detect_crypt = 0
let g:airline_theme='base16' 
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline#extensions#syntastic#enabled = 1

" add some symbols
set listchars=tab:▸\ ,eol:¬,trail:.,nbsp:%
set list
let base16colorspace=256 

" Cpp enhanced highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1

" NERDTree tweaks 
" sets the working directory to the current file's directory:
"autocmd BufEnter * lcd %:p:h
" source: http://superuser.com/questions/195022/vim-how-to-synchronize-nerdtree-with-current-opened-tab-file-path

map <F1> :NERDTreeToggle %:p:h<CR>
" open Nerd Tree in folder of file in active buffer
map <Leader>nt :NERDTreeToggle %:p:h<CR>
" source: http://stackoverflow.com/questions/5800840/nerdtree-load-particular-directory-automatically

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

au VimEnter * call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
au VimEnter * call NERDTreeHighlightFile('html', 'green', 'none', 'green', '#151515')
au VimEnter * call NERDTreeHighlightFile('slim', 'green', 'none', 'green', '#151515')
au VimEnter * call NERDTreeHighlightFile('coffee', '5', 'none', '#ff00ff', '#151515')
au VimEnter * call NERDTreeHighlightFile('styl', '5', 'none', '#ff00ff', '#151515')
au VimEnter * call NERDTreeHighlightFile('less', '5', 'none', '#ff00ff', '#151515')
au VimEnter * call NERDTreeHighlightFile('scss', '5', 'none', '#ff00ff', '#151515')
au VimEnter * call NERDTreeHighlightFile('sass', '5', 'none', '#ff00ff', '#151515')
au VimEnter * call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
au VimEnter * call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
au VimEnter * call NERDTreeHighlightFile('js', 'cyan', 'none', 'cyan', '#151515')
au VimEnter * call NERDTreeHighlightFile('rb', 'Red', 'none', '#ffa500', '#151515')
au VimEnter * call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

" Tagbar
let g:tagbar_width= 25
let g:tagbar_autofocus = 1
let g:tagbar_compact = 1
let g:tagbar_show_visibility = 0
let g:tagbar_indent = 1
let g:tagbar_foldlevel = 2
let g:tagbar_ctags_bin = '/usr/bin/ctags'
nmap <F8> :TagbarToggle<CR>
" Ctags for cpp files
let g:tagbar_type_cpp = {
    \ 'kinds' : [
        \ 'd:macros:1',
        \ 'g:enums',
        \ 't:typedefs:0:0',
        \ 'e:enumerators:0:0',
        \ 'n:namespaces',
        \ 'c:classes',
        \ 's:structs',
        \ 'u:unions',
        \ 'f:functions',
        \ 'm:members:0:0',
        \ 'v:global:0:0',
        \ 'x:external:0:0',
        \ 'l:local:0:0'
    \ ]
\ } 
let g:tagbar_type_rust = {
    \ 'ctagstype' : 'rust',
    \ 'kinds' : [
        \'T:types,type definitions',
        \'f:functions,function definitions',
        \'g:enum,enumeration names',
        \'s:structure names',
        \'m:modules,module names',
        \'c:consts,static constants',
        \'t:traits,traits',
        \'i:impls,trait implementations',
    \]
\}

syntax on

" Mouse
if has('mouse')
  set mouse=a
endif

" GUI Options GVIM
set guioptions-=mrL

" Autoclose
ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O

" indenting
set cindent
set smartindent
set autoindent
set complete+=s

" Spell
set spell spelllang=en
set nospell
let g:tex_comment_nospell= 1

" Python stuff
autocmd FileType python let python_highlight_all = 1
autocmd FileType python let python_slow_sync = 1
autocmd FileType python set expandtab shiftwidth=4 softtabstop=4
"autocmd FileType python set completeopt=preview

" Python-mode settings
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'
" check code
"let g:pymode_lint = 1
"let g:pymode_lint_checker = "pyflakes,pep8"
"let g:pymode_lint_ignore="E501,W601,C0110"
" check code after save
let g:pymode_lint_write = 0
let g:pymode_virtualenv = 1
" установка breakpoints
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'
" подстветка синтаксиса
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" отключить autofold по коду
let g:pymode_folding = 0

" возможность запускать код
let g:pymode_run = 0

" Javascript and Nodejs stuff
let g:nodejs_complete_config = {
\  'js_compl_fn': 'jscomplete#CompleteJS',
\  'max_node_compl_len': 15
\}
autocmd FileType javascript setlocal omnifunc=nodejscomplete#CompleteJS
if !exists('g:neocomplcache_omni_functions')
  let g:neocomplcache_omni_functions = {}
endif
let g:neocomplcache_omni_functions.javascript = 'nodejscomplete#CompleteJS'
let g:node_usejscomplete = 1
let g:jsx_ext_required = 0

"format code with beautify
autocmd FileType javascript noremap <buffer> <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" Go stuff
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>e <Plug>(go-rename)
au FileType go nmap <Leader>i <Plug>(go-info)
let g:go_gotags_bin = "gotags"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"
" use goimports for formatting
let g:go_fmt_command = "goimports"
" turn highlighting on
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" PKGBUILD stuff
autocmd FileType PKGBUILD set expandtab shiftwidth=2 softtabstop=4
"
" sh stuff
autocmd FileType sh set expandtab shiftwidth=2 softtabstop=4 

" html
autocmd Filetype html setlocal ts=2 sts=2 sw=2
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"

" LaTeX
autocmd Filetype tex,latex set grepprg=grep\ -nH\ $
autocmd Filetype tex,latex setlocal spell 
autocmd Filetype tex,latex set grepprg=grep\ -nH\ $
autocmd Filetype tex,latex let g:tex_flavor = "latex"

" Vim-debug
" ------------------------------
let g:vdebug_options = { "break_on_open" : 0, }

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_full_redraws=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol='✗'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_cpp_checkers = ['g++']
let g:syntastic_cpp_compiler = 'g++'
"let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -Wall -Wextra -Werror -pedantic'
let g:syntastic_c_checkers = ['gcc'] 
let g:syntastic_c_compiler = 'gcc'
let g:syntastic_c_compiler_options = '-std=c11 -Wall -Wextra -pedantic '
"let g:syntastic_c_include_dirs = ['/usr/include/gtk-3.0','/usr/include/glib-2.0','/usr/include/gio-unix-2.0']
let g:syntastic_c_config_file = '.config_c'
"let g:syntastic_c_no_include_search = 1
let g:syntastic_c_check_header = 1
let g:ycm_show_diagnostics_ui = 1
"let g:syntastic_mode_map={'mode': 'passive'}
let g:syntastic_python_python_exec = 'python2'
let g:syntastic_html_checkers = ['jshint']
"let g:syntastic_java_javac_options = "-g:none -source 8 -Xmaxerrs 5 -Xmaswarns 5"
"let g:syntastic_javascript_jshint_args = ' --config /home/serge/.jshint/.jshintrc'
"let g:syntastic_javascript_checkers=['jshint', '$(npm bin)/eslint', 'standard']
let g:syntastic_javascript_checkers=['eslint', 'jshint', 'standard']
let g:typescript_compiler_options = "--target es5"
let g:syntastic_typescript_tsc_args = '--target ES5'
let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_python_checkers = ['autopep8','flake8', 'pylint', 'pyflakes']
let g:syntastic_go_checkers = ['gofmt', 'govet', 'errcheck', 'go']
let g:syntastic_ruby_checkers = ['mri']
let g:syntastic_sh_checkers = ['shellcheck']
"function SetPython2()
"    let g:syntastic_python_flake8_exec = 'python2'
"    let g:syntastic_python_flake8_args = ['-m', 'flake8']
"endfunction
"function SetPython3()
"    let g:syntastic_python_flake8_exec = 'python'
"    let g:syntastic_python_flake8_args = ['-m', 'flake8']
"endfunction
"call SetPython2()

"Map key for check syntastic
nmap <leader>sc :SyntasticCheck<CR>

" Make it easier to browser through errors
nnoremap <space>ln :lnext<CR>
nnoremap <space>lp :lprev<CR>

augroup AutoSyntastic
     autocmd!
     autocmd BufWritePost *.c,*.cpp call s:syntastic()
   augroup END
   function! s:syntastic()
     SyntasticCheck
    endfunction

" tern
if exists('g:plugs["tern_for_vim"]')
  let g:tern_map_keys=1
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
"autocmd FileType javascript set completeopt=preview
endif

" Enables HTML/CSS syntax highlighting in your JavaScript file.
let g:javascript_enable_domhtmlcss = 1
" source: https://github.com/pangloss/vim-javascript

" jshint validation
nnoremap <silent><F6> :JSHint<CR>
inoremap <silent><F6> <C-O>:JSHint<CR>
vnoremap <silent><F6> :JSHint<CR>

"if has('python')
"py << EOF
"import os.path
"import sys
"import vim
"sys.path.insert(0, os.path.join(os.path.expanduser('~'), '.cache/fakegir/'))
"EOF
"endif

" c++ compile and run
nmap <F3> :SCCompile<cr>
nmap <F2> :SCCompileRun<cr>