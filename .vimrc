""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" coding tytle                                       "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 1.set tap problem
set tabstop=4
set shiftwidth=4
set expandtab


" 2.language UTF8 problem
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set nu


" 3.ignore case and search word
set ic
set hlsearch


" hight line
"highlight TempKeyword1 cterm=underline,bold ctermbg=1 ctermfg=15
"highlight TempKeyword2 cterm=underline,bold ctermbg=2 ctermfg=15
"highlight TempKeyword3 cterm=underline,bold ctermbg=3 ctermfg=15
"highlight TempKeyword4 cterm=underline,bold ctermbg=4 ctermfg=15
"highlight TempKeyword5 cterm=underline,bold ctermbg=5 ctermfg=15
"highlight TempKeyword6 cterm=underline,bold ctermbg=White ctermfg=DarkYellow
"highlight TempKeyword7 cterm=underline,bold ctermbg=White ctermfg=DarkRed
"highlight TempKeyword8 cterm=underline,bold ctermbg=White ctermfg=DarkGreen
"highlight TempKeyword9 cterm=underline,bold ctermbg=White ctermfg=DarkBlue
"highlight TempKeyword0 cterm=underline,bold ctermbg=White ctermfg=DarkMagenta
"nmap <leader>1 :call AddTempKeywords(1, "<C-R>=expand("<cword>")<CR>")<CR>
"nmap <leader>2 :call AddTempKeywords(2, "<C-R>=expand("<cword>")<CR>")<CR>
"nmap <leader>3 :call AddTempKeywords(3, "<C-R>=expand("<cword>")<CR>")<CR>
"nmap <leader>4 :call AddTempKeywords(4, "<C-R>=expand("<cword>")<CR>")<CR>
"nmap <leader>5 :call AddTempKeywords(5, "<C-R>=expand("<cword>")<CR>")<CR>
"nmap <leader>6 :call AddTempKeywords(6, "<C-R>=expand("<cword>")<CR>")<CR>
"nmap <leader>7 :call AddTempKeywords(7, "<C-R>=expand("<cword>")<CR>")<CR>
"nmap <leader>8 :call AddTempKeywords(8, "<C-R>=expand("<cword>")<CR>")<CR>
"nmap <leader>9 :call AddTempKeywords(9, "<C-R>=expand("<cword>")<CR>")<CR>
"nmap <leader>0 :call AddTempKeywords(0, "<C-R>=expand("<cword>")<CR>")<CR>
"nmap <leader>ca :call clearmatches()<CR>
"nmap <leader>c1 :call DeleteTempKeywords(1)<CR>
"nmap <leader>c2 :call DeleteTempKeywords(2)<CR>
"nmap <leader>c3 :call DeleteTempKeywords(3)<CR>
"nmap <leader>c4 :call DeleteTempKeywords(4)<CR>
"nmap <leader>c5 :call DeleteTempKeywords(5)<CR>
"nmap <leader>c6 :call DeleteTempKeywords(6)<CR>
"nmap <leader>c7 :call DeleteTempKeywords(7)<CR>
"nmap <leader>c8 :call DeleteTempKeywords(8)<CR>
"nmap <leader>c9 :call DeleteTempKeywords(9)<CR>
"nmap <leader>c0 :call DeleteTempKeywords(0)<CR>
"function! AddTempKeywords(index, pattern)
"    let list_name='g:TempKeywordList' . a:index
"    let group_name='TempKeyword' . a:index
"    if !exists(list_name)
"        let {list_name}=[]
"    endif
"    let {list_name}=add({list_name}, matchadd(group_name, a:pattern))
"    return len({list_name})
"endfunction
"function! DeleteTempKeywords(index)
"    let list_name='g:TempKeywordList' . a:index
"    if !exists(list_name)
"        return -1
"    endif
"    for id in {list_name}
"        if id != ''
"            :call matchdelete(id)
"        endif
"    endfor
"    let {list_name}=[]
"    return 0
"endfunction




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Add plugin vim BEGIN()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" NERdtses
" Plugin 'scrooloose/nerdtree'
" Plugin 'SrcExpl'
" Plugin 'Xuyuanp/nerdtree-git-plugin'"

" bookmark
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'vasconcelloslf/vim-interestingwords'
Plugin 'taglist.vim'
Plugin 'ifdef-highlighting'
Plugin 'airblade/vim-gitgutter'

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Check your systastic and compler error
Plugin 'scrooloose/syntastic'

" Another GDB
" Plugin 'vim-scripts/Conque-GDB'

"install ntatb control windows
" Plugin 'Trinity'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""END() """""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Plugin Setup
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"
" 1.ConqueGDB
"
let g:ConqueTerm_Color = 2         " 1: strip color after 200 lines, 2: always with color
let g:ConqueTerm_CloseOnEnd = 1    " close conque when program ends running
let g:ConqueTerm_StartMessages = 0 " display warning messages if conqueTerm is configured


"
" 2.taglist
"
let Tlist_Ctags_Cmd='ctags'
let Tlist_Show_One_File=1               "不同时显示多个文件的tag，只显示当前文件的
let Tlist_WinWidt =28                   "设置taglist的宽度
let Tlist_Exit_OnlyWindow=1             "如果taglist窗口是最后一个窗口，则退出vim
"let Tlist_Use_Right_Window=1           "在右侧窗口中显示taglist窗口
let Tlist_Use_Top_Windo =1             "在左侧窗口中显示taglist窗口:

let g:tagbar_ctags_bin='ctags'          "ctags程序的路径
let g:tagbar_width=50                   "窗口宽度的设置

"
" 3.airline set
"
set laststatus=2
" 使用powerline打過補丁的字體
let g:airline_powerline_fonts = 1
" 開啟tabline
let g:airline#extensions#tabline#enabled = 1
" tabline中當前buffer兩端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
" tabline中未激活buffer兩端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline中buffer顯示編號
let g:airline#extensions#tabline#buffer_nr_show = 1
" 映射切換buffer的鍵位
nmap .. :bn<CR>
nmap ,, :bp<CR>
"nmap q : bd<CR>


"
" 4.scrooloose/syntastic
"
let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='>'
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_enable_highlighting=1
let g:syntastic_python_checkers=['pyflakes'] " 使用pyflakes,速度比pylint快
let g:syntastic_javascript_checkers = ['jsl', 'jshint']
let g:syntastic_html_checkers=['tidy', 'jshint']
" 修改高亮的背景色, 适应主题
highlight SyntasticErrorSign guifg=white guibg=black

" to see error location list
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_loc_list_height = 5
function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction
nnoremap <Leader>s :call ToggleErrors()<cr>
" nnoremap <Leader>sn :lnext<cr>
" nnoremap <Leader>sp :lprevious<cr>




"
" 5.cscope setting
"
" [S] Find this C symbol
cs add $CSCOPE_DB
nmap cs :cs find s

" [G] Find this definition
nmap cg :cs find g

" [C] Find functions calling this function
nmap cc :cs find c

" [T] Find this text string
nmap ct :cs find t

" [E] Find this egreo pattern
nmap ce :cs find e

nmap cf :cs find f

" [I] Find files #including this file
nmap ci :cs find i ^=expand("")$

" [D] Find functions called by this function
nmap cd :cs find d



"
" 6.Source Explorer
"
" // The switch of the
nmap <F8> :SrcExplToggle<CR>
" // Set the height of Source Explorer window
let g:SrcExpl_winHeight = 30

" // Set 100 ms for refreshing the Source Explorer
let g:SrcExpl_refreshTime = 300

" // Set "Enter" key to jump into the exact definition context
let g:SrcExpl_jumpKey = "<ENTER>"

" // Set "Space" key for back from the definition context
let g:SrcExpl_gobackKey = "<SPACE>"

" // In order to avoid conflicts, the Source Explorer should know what plugins
" // except itself are using buffers. And you need add their buffer names into
" // below listaccording to the command ":buffers!"
let g:SrcExpl_pluginList = [
        \ "__Tag_List__"
    \ ]

        "\ "_NERD_tree_"
" // Enable/Disable the local definition searching, and note that this is not
" // guaranteed to work, the Source Explorer doesn't check the syntax for now.
" // It only searches for a match with the keyword according to command 'gd'
let g:SrcExpl_searchLocalDef = 1

" // Do not let the Source Explorer update the tags file when opening
let g:SrcExpl_isUpdateTags = 0



"pen and close all the three plugins on the same time
nmap <F5>  :TrinityToggleAll<CR>

" Open and close the Source Explorer separately
nmap <F4>  :TrinityToggleSourceExplorer<CR>

" Open and close the Taglist separately
nmap <F3> :TrinityToggleTagList<CR>

" Open and close the NERD Tree separately
nmap <F2> :TrinityToggleNERDTree<CR>
let g:NERDTreeWinSize = 60



"
" 6.bookmark
"
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=20 ctermfg=NONE
let g:bookmark_no_default_key_mappings = 1
function! BookmarkMapKeys()
    nmap mm :BookmarkToggle<CR>
    nmap mi :BookmarkAnnotate<CR>
    nmap mn :BookmarkNext<CR>
    nmap mp :BookmarkPrev<CR>
    nmap ma :BookmarkShowAll<CR>
    nmap mc :BookmarkClear<CR>
    nmap mx :BookmarkClearAll<CR>
    nmap mkk :BookmarkMoveUp
    nmap mjj :BookmarkMoveDown
endfunction
function! BookmarkUnmapKeys()
    unmap mm
    unmap mi
    unmap mn
    unmap mp
    unmap mc
    unmap ma
    unmap mx
    unmap mkk
    unmap mjj
endfunction
autocmd BufEnter * :call BookmarkMapKeys()
autocmd BufEnter NERD_tree_* :call BookmarkUnmapKeys()
let g:bookmark_manage_per_buffer = 1
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1
let g:bookmark_highlight_lines = 1



""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  nmap other hot key                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" remove remainder space
nmap rs :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))<CR>
nmap nu :set nu<CR>
nmap nonu :set nonu<CR>

" paste
set paste

" auto completer () {} []
" 補齊括弧
" 語法
" inoremap  triger_char  mapping_str
" 映射指令     觸發字元     映射字串
"
" 註：<LEFT> 為向右鍵字元

""inoremap ( ()<LEFT>
"""小括號補齊，並將輸入游標左移一個字元
""
""inoremap [ []<LEFT>
"""中括號補齊，並將輸入游標左移一個字元
""
""inoremap { {}<LEFT>
"""大括號補齊，並將輸入游標左移一個字元
""
""inoremap ' ''<LEFT>
"""單引號補齊，並將輸入游標左移一個字元
""
""inoremap " ""<LEFT>
"""雙引號補齊，並將輸入游標左移一個字元




" 5.color display
syntax on
set t_Co=256       " Explicitly tell Vim that the terminal supports 256 colors


colorscheme slate
" colorscheme monokai

" High light unwanted spaces in end of line
highlight ExtraWhitespace ctermbg=darkred guibg=darkcyan
autocmd BufEnter * if &ft != 'help' | match ExtraWhitespace /\s\+$/ | endif
autocmd BufEnter * if &ft == 'help' | match none /\s\+$/ | endif



hi CursorLine   cterm=NONE ctermbg=237 ctermfg=NONE
hi CursorColumn   cterm=NONE ctermbg=240 ctermfg=NONE
set cursorcolumn
set cursorline


" define your region
highlight Foo ctermbg=16 guibg=#000000
syntax region Foo start=/^\s*#ifdef.*_DEBUG/ end=/^\s*#endif/

set nonu
