# Nvim-colorscheme-theme-chaos_the
This is only my theme for Nvim/vim. Just put this in your Vim/Nvim color file.

#################################################################################

You can modify it any way you want, just modify the hexadecimal code for Gui colors, and cterm for cmd/prompt colors.

_* cterm does not accept hexadecimal code, only numeric code from 0 to 255 *_

Have in mind:

1. fg is text color;
2. bg is background color of the text;
3. only gui or ctem is for text style.   Example: gui=italic  |  cterm=italic ;
4. cterm is for prompt colors like windows cmd, they just accept simple colors (0 to 16) but some simulators accept (0 to 255) like ConEmu;
5. gui is for gui prompt colors like nvim-qt, dah~ , hexadecimal color, i don't need to explain, right?;
6. you can simply add more support for other languages. Ada Example:   highlight AdaComment guifg=#848484;
7. some times colors don't be applied, maybe is in conflict with another highlight or plugin.

Thats it, have fun! Modify this theme :)
