" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" Vim configuration file
" author: VlaSard
" github: https://github.com/VlaSard
" ~/.vimrc
" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
"
"   ▐▌░▐▌ ▀ █▄░▄█ █▀▀▄ ▄▀
"   ░▀▄▀░ █ █░█░█ █▐█▀ █░
" ░▀░░▀░░ ▀ ▀░░░▀ ▀░▀▀ ░▀
"
" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

" отключить режим совместимости с классическим Vi
set nocompatible

" no modelines [http://www.guninski.com/vim1.html]
set modelines=0

" задает имя пользователя
let username = "VlaSard"

" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

" Colors and theme {

    " установить цветовую схему
    colorscheme slate

    " установить цвет фона
    set background=dark

    " Разрешить смену фона
    function! ToggleBG()
        let s:tbg = &background

        if s:tbg == "dark"
            set background=light
        else
            set background=dark
        endif

    endfunction
    " noremap <leader>bg :call ToggleBG()<CR>

" }

" GUI {

    " Mouse {

        " автоматически включить использование мыши
        set mouse=a

        " скрывать мышь при наборе текста
        set mousehide

    " }

    if has('cmdline_info')
        set ruler
        set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
        set showcmd
    endif

    set lines=80 columns=90

    " отступ от левой границы окна
    set foldcolumn=2

    " визуальный сигнал
    set visualbell

    " хранить историю
    set history=200

    " выделить текущую строку
    set cursorline

    " the 'more' prompt
    set more

" }

" автоматически определять тип файла
filetype plugin indent on

" включить подсветку синтаксиса
syntax on

" utf-8 по умолчанию
set enc=utf-8

" разрешить курсор за последним символом
set virtualedit=onemore

set backspace=indent,eol,start

" отображать номера строк
set number

set showmatch

" не переносить длинные строки
set wrap

" включить подсветку поиска
set hlsearch

" установить тип переноса
set ffs=unix,dos,mac

" разрешить редактирование нескольких несохраненных буферов
set hidden

" следить за изменениями файлов другими программами
set autoread

" Backup and swap {

    " создавать *~ резервные файлы
    set backup

    " добавить ~ в конец файлов резервных копий
    set backupext=~

" }

" Tab and space {

    " Используйте отступы в 4 пробела
    set shiftwidth=4
    
    " Табы - это пробелы, а не табы
    set expandtab
    
    " Отступ через каждые четыре столбца
    set tabstop=4
    
    " Пусть backspace удалить отступ
    set softtabstop=4
    
    " Предотвращает вставку двух пробелов после знаков препинания
    " при соединении.
    set nojoinspaces

" }

" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

"hotkeys {

    " ctrl + q - выйти без сохранения
    nnoremap <C-q> :q!<CR>

    " ctrl + s - сохранить файл
    nnoremap <C-s> :w<CR>

    " F12 - изменение фона
    noremap <f12> :call ToggleBG()<CR>

" }

