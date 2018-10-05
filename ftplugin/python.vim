" ------------------------------ python.vim -----------------------------------
"
"  Settings to be used only when editing python files.


" ------------------------------ Text Formatting ------------------------------
"
"  textwidth:  Set to 88 to align with black code style.
setlocal textwidth=88


" ------------------------------ Motion ---------------------------------------
"
" The 'python.vim' ftplugin file that is bundled with the vim distribution in
" my repos redefines a number of vim's motion commands to be useful in python
" files. Here is a brief description of what they do.
"
" ]]:  Jump to te next top level class/function definition.
" [[:  Jump to the previous top level class/function definition.
" ]m:  Jump to the next class/function.
" [m:  Jump to the previous class/function.
"
" It does define a few more but I can't seem to make them do anything.


" ------------------------------ Documentation --------------------------------
"
" iskeyword:   Which characters are to be considered part of a keyword
" keywordprg:  What command to run when looking for documentation with 'K'
setlocal iskeyword+=.
setlocal keywordprg=pydoc


" ------------------------------ Keys -----------------------------------------
"
inoremap """ """"""<esc>2hi
