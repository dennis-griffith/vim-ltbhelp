" Title:        Lauterbach Help Helper
" Description:  Converts a text file into HTML with links to Lauterbach's help system.
" Last Change:  2023-07-16
" Maintainer:   Dennis Griffith <dennis.eric.griffith@gmail.com>
"
" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if exists("g:loaded_ltbhelp")
    finish
    endif
    let g:loaded_ltbhelp = 1
"
    " Exposes the plugin's functions for use as commands in Vim.
    command! -nargs=0 DisplayTime call ltbhelp#DisplayTime()
    command! -nargs=0 DefineWord call ltbhelp#DefineWord()
    command! -nargs=0 AspellCheck call ltbhelp#AspellCheck()
        
