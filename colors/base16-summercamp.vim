" vi:syntax=vim

" base16-vim (https://github.com/chriskempson/base16-vim)
" by Chris Kempson (http://chriskempson.com)
" summercamp scheme by zoe firi (zoefiri.github.io)

" This enables the coresponding base16-shell script to run so that
" :colorscheme works in terminals supported by base16-shell scripts
" User must set this variable in .vimrc
"   let g:base16_shell_path=base16-builder/output/shell/
if !has("gui_running")
  if exists("g:base16_shell_path")
    execute "silent !/bin/sh ".g:base16_shell_path."/base16-summercamp.sh"
  endif
endif

" GUI color definitions
let s:gui00        = "1c1810"
let g:base16_gui00 = "1c1810"
let s:gui01        = "2a261c"
let g:base16_gui01 = "2a261c"
let s:gui02        = "3a3527"
let g:base16_gui02 = "3a3527"
let s:gui03        = "504b38"
let g:base16_gui03 = "504b38"
let s:gui04        = "5f5b45"
let g:base16_gui04 = "5f5b45"
let s:gui05        = "736e55"
let g:base16_gui05 = "736e55"
let s:gui06        = "bab696"
let g:base16_gui06 = "bab696"
let s:gui07        = "f8f5de"
let g:base16_gui07 = "f8f5de"
let s:gui08        = "e35142"
let g:base16_gui08 = "e35142"
let s:gui09        = "fba11b"
let g:base16_gui09 = "fba11b"
let s:gui0A        = "f2ff27"
let g:base16_gui0A = "f2ff27"
let s:gui0B        = "5ceb5a"
let g:base16_gui0B = "5ceb5a"
let s:gui0C        = "5aebbc"
let g:base16_gui0C = "5aebbc"
let s:gui0D        = "489bf0"
let g:base16_gui0D = "489bf0"
let s:gui0E        = "FF8080"
let g:base16_gui0E = "FF8080"
let s:gui0F        = "F69BE7"
let g:base16_gui0F = "F69BE7"

" Terminal color definitions
let s:cterm00        = "00"
let g:base16_cterm00 = "00"
let s:cterm03        = "08"
let g:base16_cterm03 = "08"
let s:cterm05        = "07"
let g:base16_cterm05 = "07"
let s:cterm07        = "15"
let g:base16_cterm07 = "15"
let s:cterm08        = "01"
let g:base16_cterm08 = "01"
let s:cterm0A        = "03"
let g:base16_cterm0A = "03"
let s:cterm0B        = "02"
let g:base16_cterm0B = "02"
let s:cterm0C        = "06"
let g:base16_cterm0C = "06"
let s:cterm0D        = "04"
let g:base16_cterm0D = "04"
let s:cterm0E        = "05"
let g:base16_cterm0E = "05"
if exists("base16colorspace") && base16colorspace == "256"
  let s:cterm01        = "18"
  let g:base16_cterm01 = "18"
  let s:cterm02        = "19"
  let g:base16_cterm02 = "19"
  let s:cterm04        = "20"
  let g:base16_cterm04 = "20"
  let s:cterm06        = "21"
  let g:base16_cterm06 = "21"
  let s:cterm09        = "16"
  let g:base16_cterm09 = "16"
  let s:cterm0F        = "17"
  let g:base16_cterm0F = "17"
else
  let s:cterm01        = "10"
  let g:base16_cterm01 = "10"
  let s:cterm02        = "11"
  let g:base16_cterm02 = "11"
  let s:cterm04        = "12"
  let g:base16_cterm04 = "12"
  let s:cterm06        = "13"
  let g:base16_cterm06 = "13"
  let s:cterm09        = "09"
  let g:base16_cterm09 = "09"
  let s:cterm0F        = "14"
  let g:base16_cterm0F = "14"
endif

" Neovim terminal colours
if has("nvim")
  let g:terminal_color_0 =  "#1c1810"
  let g:terminal_color_1 =  "#e35142"
  let g:terminal_color_2 =  "#5ceb5a"
  let g:terminal_color_3 =  "#f2ff27"
  let g:terminal_color_4 =  "#489bf0"
  let g:terminal_color_5 =  "#FF8080"
  let g:terminal_color_6 =  "#5aebbc"
  let g:terminal_color_7 =  "#736e55"
  let g:terminal_color_8 =  "#504b38"
  let g:terminal_color_9 =  "#e35142"
  let g:terminal_color_10 = "#5ceb5a"
  let g:terminal_color_11 = "#f2ff27"
  let g:terminal_color_12 = "#489bf0"
  let g:terminal_color_13 = "#FF8080"
  let g:terminal_color_14 = "#5aebbc"
  let g:terminal_color_15 = "#f8f5de"
  let g:terminal_color_background = g:terminal_color_0
  let g:terminal_color_foreground = g:terminal_color_5
  if &background == "light"
    let g:terminal_color_background = g:terminal_color_7
    let g:terminal_color_foreground = g:terminal_color_2
  endif
elseif has("terminal")
  let g:terminal_ansi_colors = [
        \ "#1c1810",
        \ "#e35142",
        \ "#5ceb5a",
        \ "#f2ff27",
        \ "#489bf0",
        \ "#FF8080",
        \ "#5aebbc",
        \ "#736e55",
        \ "#504b38",
        \ "#e35142",
        \ "#5ceb5a",
        \ "#f2ff27",
        \ "#489bf0",
        \ "#FF8080",
        \ "#5aebbc",
        \ "#f8f5de",
        \ ]
endif

" Theme setup
hi clear
syntax reset
let g:colors_name = "base16-summercamp"

" Highlighting function
" Optional variables are attributes and guisp
function! g:Base16hi(group, guifg, guibg, ctermfg, ctermbg, ...)
  let l:attr = get(a:, 1, "")
  let l:guisp = get(a:, 2, "")

  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if l:attr != ""
    exec "hi " . a:group . " gui=" . l:attr . " cterm=" . l:attr
  endif
  if l:guisp != ""
    exec "hi " . a:group . " guisp=#" . l:guisp
  endif
endfunction


fun <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  call g:Base16hi(a:group, a:guifg, a:guibg, a:ctermfg, a:ctermbg, a:attr, a:guisp)
endfun

" Vim editor colors
call <sid>hi("Normal",                     s:gui05, s:gui00, s:cterm05, s:cterm00, "",              "")
call <sid>hi("Bold",                       "",      "",      "",        "",        "bold",          "")
call <sid>hi("Debug",                      s:gui08, "",      s:cterm08, "",        "",              "")
call <sid>hi("Directory",                  s:gui0D, "",      s:cterm0D, "",        "",              "")
call <sid>hi("Error",                      s:gui08, "none",  s:cterm08, "none",    "undercurl",     "none")
call <sid>hi("ErrorMsg",                   s:gui08, s:gui00, s:cterm08, s:cterm00, "",              "")
call <sid>hi("Exception",                  s:gui08, "",      s:cterm08, "",        "",              "")
call <sid>hi("FoldColumn",                 s:gui0C, s:gui01, s:cterm0C, s:cterm01, "",              "")
call <sid>hi("Folded",                     s:gui03, s:gui01, s:cterm03, s:cterm01, "",              "")
call <sid>hi("IncSearch",                  s:gui01, s:gui09, s:cterm01, s:cterm09, "none",          "")
call <sid>hi("Italic",                     "",      "",      "",        "",        "italic",        "")
call <sid>hi("Macro",                      s:gui08, "",      s:cterm08, "",        "",              "")
call <sid>hi("MatchParen",                 "none",  "none",  "none",    "none",    "boldunderline", "")
call <sid>hi("ModeMsg",                    s:gui0B, "",      s:cterm0B, "",        "",              "")
call <sid>hi("MoreMsg",                    s:gui0B, "",      s:cterm0B, "",        "",              "")
call <sid>hi("Question",                   s:gui0D, "",      s:cterm0D, "",        "",              "")
call <sid>hi("Search",                     s:gui01, s:gui0A, s:cterm01, s:cterm0A, "",              "")
call <sid>hi("Substitute",                 s:gui01, s:gui0A, s:cterm01, s:cterm0A, "none",          "")
call <sid>hi("SpecialKey",                 s:gui03, "",      s:cterm03, "",        "",              "")
call <sid>hi("TooLong",                    s:gui08, "",      s:cterm08, "",        "",              "")
call <sid>hi("Underlined",                 s:gui08, "",      s:cterm08, "",        "",              "")
call <sid>hi("Visual",                     "",      s:gui01, "",        s:cterm01, "",              "")
call <sid>hi("VisualNOS",                  s:gui08, "",      s:cterm08, "",        "",              "")
call <sid>hi("WarningMsg",                 s:gui08, "",      s:cterm08, "",        "",              "")
call <sid>hi("WildMenu",                   s:gui08, s:gui0A, s:cterm08, "",        "",              "")
call <sid>hi("Title",                      s:gui0D, "",      s:cterm0D, "",        "none",          "")
call <sid>hi("Conceal",                    s:gui0D, s:gui00, s:cterm0D, s:cterm00, "",              "")
call <sid>hi("Cursor",                     s:gui00, s:gui05, s:cterm00, s:cterm05, "",              "")
call <sid>hi("NonText",                    s:gui03, "",      s:cterm03, "",        "",              "")
call <sid>hi("LineNr",                     s:gui03, s:gui00, s:cterm03, s:cterm00, "",              "")
call <sid>hi("SignColumn",                 s:gui03, s:gui00, s:cterm03, s:cterm00, "",              "")
call <sid>hi("StatusLine",                 s:gui04, s:gui01, s:cterm04, s:cterm01, "none",          "")
call <sid>hi("StatusLineNC",               s:gui03, s:gui01, s:cterm03, s:cterm01, "none",          "")
call <sid>hi("VertSplit",                  s:gui01, s:gui01, s:cterm01, s:cterm01, "none",          "")
call <sid>hi("ColorColumn",                "",      s:gui01, "",        s:cterm01, "none",          "")
call <sid>hi("CursorColumn",               "",      s:gui01, "",        s:cterm01, "none",          "")
call <sid>hi("CursorLine",                 "",      s:gui01, "",        s:cterm01, "none",          "")
call <sid>hi("CursorLineNr",               s:gui04, s:gui01, s:cterm04, s:cterm01, "",              "")
call <sid>hi("QuickFixLine",               "",      s:gui01, "",        s:cterm01, "none",          "")
call <sid>hi("PMenu",                      s:gui05, s:gui01, s:cterm05, s:cterm01, "",              "")
call <sid>hi("PMenuSel",                   s:gui01, s:gui05, s:cterm01, s:cterm05, "",              "")
call <sid>hi("TabLine",                    s:gui03, s:gui01, s:cterm03, s:cterm01, "none",          "")
call <sid>hi("TabLineFill",                s:gui03, s:gui01, s:cterm03, s:cterm01, "none",          "")
call <sid>hi("TabLineSel",                 s:gui05, s:gui00, s:cterm05, s:cterm00, "bold",          "")

" Standard syntax highlighting
call <sid>hi("Boolean",                    s:gui09, "",      s:cterm09, "",        "",              "")
call <sid>hi("Character",                  s:gui08, "",      s:cterm08, "",        "",              "")
call <sid>hi("Comment",                    s:gui03, "",      s:cterm03, "",        "italic",        "")
call <sid>hi("Conditional",                s:gui0E, "",      s:cterm0E, "",        "",              "")
call <sid>hi("Constant",                   s:gui09, "",      s:cterm09, "",        "",              "")
call <sid>hi("Define",                     s:gui0E, "",      s:cterm0E, "",        "none",          "")
call <sid>hi("Delimiter",                  s:gui0F, "",      s:cterm0F, "",        "",              "")
call <sid>hi("Float",                      s:gui09, "",      s:cterm09, "",        "",              "")
call <sid>hi("Function",                   s:gui0D, "",      s:cterm0D, "",        "",              "")
call <sid>hi("Identifier",                 s:gui08, "",      s:cterm08, "",        "none",          "")
call <sid>hi("Include",                    s:gui0D, "",      s:cterm0D, "",        "",              "")
call <sid>hi("Keyword",                    s:gui0E, "",      s:cterm0E, "",        "",              "")
call <sid>hi("Label",                      s:gui0A, "",      s:cterm0A, "",        "",              "")
call <sid>hi("Number",                     s:gui09, "",      s:cterm09, "",        "",              "")
call <sid>hi("Operator",                   s:gui05, "",      s:cterm05, "",        "none",          "")
call <sid>hi("PreProc",                    s:gui0A, "",      s:cterm0A, "",        "",              "")
call <sid>hi("Repeat",                     s:gui0A, "",      s:cterm0A, "",        "",              "")
call <sid>hi("Special",                    s:gui0C, "",      s:cterm0C, "",        "",              "")
call <sid>hi("SpecialChar",                s:gui0F, "",      s:cterm0F, "",        "",              "")
call <sid>hi("Statement",                  s:gui08, "",      s:cterm08, "",        "",              "")
call <sid>hi("StorageClass",               s:gui0A, "",      s:cterm0A, "",        "",              "")
call <sid>hi("String",                     s:gui0B, "",      s:cterm0B, "",        "",              "")
call <sid>hi("Structure",                  s:gui0E, "",      s:cterm0E, "",        "",              "")
call <sid>hi("Tag",                        s:gui0A, "",      s:cterm0A, "",        "",              "")
call <sid>hi("Todo",                       s:gui0A, s:gui01, s:cterm0A, s:cterm01, "",              "")
call <sid>hi("Type",                       s:gui0A, "",      s:cterm0A, "",        "none",          "")
call <sid>hi("Typedef",                    s:gui0A, "",      s:cterm0A, "",        "",              "")

" C highlighting
call <sid>hi("cOperator",                  s:gui0C, "",      s:cterm0C, "",        "",              "")
call <sid>hi("cPreCondit",                 s:gui0E, "",      s:cterm0E, "",        "",              "")

" C# highlighting
call <sid>hi("csClass",                    s:gui0A, "",      s:cterm0A, "",        "",              "")
call <sid>hi("csAttribute",                s:gui0A, "",      s:cterm0A, "",        "",              "")
call <sid>hi("csModifier",                 s:gui0E, "",      s:cterm0E, "",        "",              "")
call <sid>hi("csType",                     s:gui08, "",      s:cterm08, "",        "",              "")
call <sid>hi("csUnspecifiedStatement",     s:gui0D, "",      s:cterm0D, "",        "",              "")
call <sid>hi("csContextualStatement",      s:gui0E, "",      s:cterm0E, "",        "",              "")
call <sid>hi("csNewDecleration",           s:gui08, "",      s:cterm08, "",        "",              "")

" CSS highlighting
call <sid>hi("cssBraces",                  s:gui05, "",      s:cterm05, "",        "",              "")
call <sid>hi("cssClassName",               s:gui0E, "",      s:cterm0E, "",        "",              "")
call <sid>hi("cssColor",                   s:gui0C, "",      s:cterm0C, "",        "",              "")

" Diff highlighting
call <sid>hi("DiffAdd",                    s:gui0B, s:gui01, s:cterm0B, s:cterm01, "",              "")
call <sid>hi("DiffChange",                 s:gui03, s:gui01, s:cterm03, s:cterm01, "",              "")
call <sid>hi("DiffDelete",                 s:gui08, s:gui01, s:cterm08, s:cterm01, "",              "")
call <sid>hi("DiffText",                   s:gui0D, s:gui01, s:cterm0D, s:cterm01, "",              "")
call <sid>hi("DiffAdded",                  s:gui0B, s:gui00, s:cterm0B, s:cterm00, "",              "")
call <sid>hi("DiffFile",                   s:gui08, s:gui00, s:cterm08, s:cterm00, "",              "")
call <sid>hi("DiffNewFile",                s:gui0B, s:gui00, s:cterm0B, s:cterm00, "",              "")
call <sid>hi("DiffLine",                   s:gui0D, s:gui00, s:cterm0D, s:cterm00, "",              "")
call <sid>hi("DiffRemoved",                s:gui08, s:gui00, s:cterm08, s:cterm00, "",              "")

" Git highlighting
call <sid>hi("gitcommitOverflow",          s:gui08, "",      s:cterm08, "",        "",              "")
call <sid>hi("gitcommitSummary",           s:gui0B, "",      s:cterm0B, "",        "",              "")
call <sid>hi("gitcommitComment",           s:gui03, "",      s:cterm03, "",        "",              "")
call <sid>hi("gitcommitUntracked",         s:gui03, "",      s:cterm03, "",        "",              "")
call <sid>hi("gitcommitDiscarded",         s:gui03, "",      s:cterm03, "",        "",              "")
call <sid>hi("gitcommitSelected",          s:gui03, "",      s:cterm03, "",        "",              "")
call <sid>hi("gitcommitHeader",            s:gui0E, "",      s:cterm0E, "",        "",              "")
call <sid>hi("gitcommitSelectedType",      s:gui0D, "",      s:cterm0D, "",        "",              "")
call <sid>hi("gitcommitUnmergedType",      s:gui0D, "",      s:cterm0D, "",        "",              "")
call <sid>hi("gitcommitDiscardedType",     s:gui0D, "",      s:cterm0D, "",        "",              "")
call <sid>hi("gitcommitBranch",            s:gui09, "",      s:cterm09, "",        "bold",          "")
call <sid>hi("gitcommitUntrackedFile",     s:gui0A, "",      s:cterm0A, "",        "",              "")
call <sid>hi("gitcommitUnmergedFile",      s:gui08, "",      s:cterm08, "",        "bold",          "")
call <sid>hi("gitcommitDiscardedFile",     s:gui08, "",      s:cterm08, "",        "bold",          "")
call <sid>hi("gitcommitSelectedFile",      s:gui0B, "",      s:cterm0B, "",        "bold",          "")

" GitGutter highlighting
call <sid>hi("GitGutterAdd",               s:gui0B, "none",  s:cterm0B, "none",    "",              "")
call <sid>hi("GitGutterChange",            s:gui0D, "none",  s:cterm0D, "none",    "",              "")
call <sid>hi("GitGutterDelete",            s:gui08, "none",  s:cterm08, "none",    "",              "")
call <sid>hi("GitGutterChangeDelete",      s:gui0E, "none",  s:cterm0E, "none",    "",              "")

" HTML highlighting
call <sid>hi("htmlBold",                   s:gui0A, "",      s:cterm0A, "",        "",              "")
call <sid>hi("htmlItalic",                 s:gui0E, "",      s:cterm0E, "",        "",              "")
call <sid>hi("htmlEndTag",                 s:gui05, "",      s:cterm05, "",        "",              "")
call <sid>hi("htmlTag",                    s:gui05, "",      s:cterm05, "",        "",              "")

" JavaScript highlighting
call <sid>hi("javaScript",                 s:gui05, "",      s:cterm05, "",        "",              "")
call <sid>hi("javaScriptBraces",           s:gui05, "",      s:cterm05, "",        "",              "")
call <sid>hi("javaScriptNumber",           s:gui09, "",      s:cterm09, "",        "",              "")
" pangloss/vim-javascript highlighting
call <sid>hi("jsOperator",                 s:gui0D, "",      s:cterm0D, "",        "",              "")
call <sid>hi("jsStatement",                s:gui0E, "",      s:cterm0E, "",        "",              "")
call <sid>hi("jsReturn",                   s:gui0E, "",      s:cterm0E, "",        "",              "")
call <sid>hi("jsThis",                     s:gui08, "",      s:cterm08, "",        "",              "")
call <sid>hi("jsClassDefinition",          s:gui0A, "",      s:cterm0A, "",        "",              "")
call <sid>hi("jsFunction",                 s:gui0E, "",      s:cterm0E, "",        "",              "")
call <sid>hi("jsFuncName",                 s:gui0D, "",      s:cterm0D, "",        "",              "")
call <sid>hi("jsFuncCall",                 s:gui0D, "",      s:cterm0D, "",        "",              "")
call <sid>hi("jsClassFuncName",            s:gui0D, "",      s:cterm0D, "",        "",              "")
call <sid>hi("jsClassMethodType",          s:gui0E, "",      s:cterm0E, "",        "",              "")
call <sid>hi("jsRegexpString",             s:gui0C, "",      s:cterm0C, "",        "",              "")
call <sid>hi("jsGlobalObjects",            s:gui0A, "",      s:cterm0A, "",        "",              "")
call <sid>hi("jsGlobalNodeObjects",        s:gui0A, "",      s:cterm0A, "",        "",              "")
call <sid>hi("jsExceptions",               s:gui0A, "",      s:cterm0A, "",        "",              "")
call <sid>hi("jsBuiltins",                 s:gui0A, "",      s:cterm0A, "",        "",              "")

" Mail highlighting
call <sid>hi("mailQuoted1",                s:gui0A, "",      s:cterm0A, "",        "",              "")
call <sid>hi("mailQuoted2",                s:gui0B, "",      s:cterm0B, "",        "",              "")
call <sid>hi("mailQuoted3",                s:gui0E, "",      s:cterm0E, "",        "",              "")
call <sid>hi("mailQuoted4",                s:gui0C, "",      s:cterm0C, "",        "",              "")
call <sid>hi("mailQuoted5",                s:gui0D, "",      s:cterm0D, "",        "",              "")
call <sid>hi("mailQuoted6",                s:gui0A, "",      s:cterm0A, "",        "",              "")
call <sid>hi("mailURL",                    s:gui0D, "",      s:cterm0D, "",        "",              "")
call <sid>hi("mailEmail",                  s:gui0D, "",      s:cterm0D, "",        "",              "")

" Markdown highlighting
call <sid>hi("markdownCode",               s:gui0B, "",      s:cterm0B, "",        "",              "")
call <sid>hi("markdownError",              s:gui05, s:gui00, s:cterm05, s:cterm00, "",              "")
call <sid>hi("markdownCodeBlock",          s:gui0B, "",      s:cterm0B, "",        "",              "")
call <sid>hi("markdownHeadingDelimiter",   s:gui0D, "",      s:cterm0D, "",        "",              "")

" PHP highlighting
call <sid>hi("phpMemberSelector",          s:gui05, "",      s:cterm05, "",        "",              "")
call <sid>hi("phpComparison",              s:gui05, "",      s:cterm05, "",        "",              "")
call <sid>hi("phpParent",                  s:gui05, "",      s:cterm05, "",        "",              "")
call <sid>hi("phpMethodsVar",              s:gui0C, "",      s:cterm0C, "",        "",              "")

" Python highlighting
call <sid>hi("pythonOperator",             s:gui0E, "",      s:cterm0E, "",        "",              "")
call <sid>hi("pythonRepeat",               s:gui0E, "",      s:cterm0E, "",        "",              "")
call <sid>hi("pythonInclude",              s:gui0E, "",      s:cterm0E, "",        "",              "")
call <sid>hi("pythonStatement",            s:gui0E, "",      s:cterm0E, "",        "",              "")

" Ruby highlighting
call <sid>hi("rubyAttribute",              s:gui0D, "",      s:cterm0D, "",        "",              "")
call <sid>hi("rubyConstant",               s:gui0A, "",      s:cterm0A, "",        "",              "")
call <sid>hi("rubyInterpolationDelimiter", s:gui0F, "",      s:cterm0F, "",        "",              "")
call <sid>hi("rubyRegexp",                 s:gui0C, "",      s:cterm0C, "",        "",              "")
call <sid>hi("rubySymbol",                 s:gui0B, "",      s:cterm0B, "",        "",              "")
call <sid>hi("rubyStringDelimiter",        s:gui0B, "",      s:cterm0B, "",        "",              "")

" SASS highlighting
call <sid>hi("sassidChar",                 s:gui08, "",      s:cterm08, "",        "",              "")
call <sid>hi("sassClassChar",              s:gui09, "",      s:cterm09, "",        "",              "")
call <sid>hi("sassInclude",                s:gui0E, "",      s:cterm0E, "",        "",              "")
call <sid>hi("sassMixing",                 s:gui0E, "",      s:cterm0E, "",        "",              "")
call <sid>hi("sassMixinName",              s:gui0D, "",      s:cterm0D, "",        "",              "")

" Signify highlighting
call <sid>hi("SignifySignAdd",             s:gui0B, s:gui01, s:cterm0B, s:cterm01, "",              "")
call <sid>hi("SignifySignChange",          s:gui0D, s:gui01, s:cterm0D, s:cterm01, "",              "")
call <sid>hi("SignifySignDelete",          s:gui08, s:gui01, s:cterm08, s:cterm01, "",              "")

" Spelling highlighting
call <sid>hi("SpellBad",                   "",      "",      "",        "",        "undercurl",     s:gui08)
call <sid>hi("SpellLocal",                 "",      "",      "",        "",        "undercurl",     s:gui0C)
call <sid>hi("SpellCap",                   "",      "",      "",        "",        "undercurl",     s:gui0D)
call <sid>hi("SpellRare",                  "",      "",      "",        "",        "undercurl",     s:gui0E)

" Java highlighting
call <sid>hi("javaOperator",               s:gui0D, "",      s:cterm0D, "",        "",              "")

call <sid>hi("ALEErrorSign",               s:gui08, "none",  s:cterm08, "none",    "",              "")
call <sid>hi("ALEWarningSign",             s:gui0A, "none",  s:cterm0A, "none",    "",              "")
call <sid>hi("ALEVirtualTextError",        s:gui08, "",      s:cterm08, "",        "italic",        "")
call <sid>hi("ALEVirtualTextStyleError",   s:gui08, "",      s:cterm08, "",        "italic",        "")
call <sid>hi("ALEVirtualTextWarning",      s:gui0A, "",      s:cterm0A, "",        "italic",        "")
call <sid>hi("ALEVirtualTextStyleWarning", s:gui0A, "",      s:cterm0A, "",        "italic",        "")
call <sid>hi("ALEVirtualTextInfo",         s:gui0D, "",      s:cterm0D, "",        "italic",        "")

" coc
call <sid>hi("CocErrorHighlight",          s:gui08, "",      s:cterm08, "",        "undercurl",     "")
call <sid>hi("CocWarningHighlight",        s:gui0A, "",      s:cterm0A, "",        "undercurl",     "")
call <sid>hi("CocInfoHighlight",           s:gui0D, "",      s:cterm0D, "",        "undercurl",     "")
call <sid>hi("CocHintHighlight",           s:gui0D, "",      s:cterm0D, "",        "undercurl",     "")

call <sid>hi("CocErrorSign",               s:gui08, "none",  s:cterm08, "none",    "",              "")
call <sid>hi("CocWarningSign",             s:gui0A, "none",  s:cterm0A, "none",    "",              "")
call <sid>hi("CocInfoSign",                s:gui0D, "none",  s:cterm0D, "none",    "",              "")
call <sid>hi("CocHintSign",                s:gui0D, "none",  s:cterm0D, "none",    "",              "")

call <sid>hi("CocErrorVirtualText",        s:gui08, "",      s:cterm08, "",        "italic",        "")
call <sid>hi("CocWarningVirtualText",      s:gui0A, "",      s:cterm0A, "",        "italic",        "")
call <sid>hi("CocInfoVirtualText",         s:gui0D, "",      s:cterm0D, "",        "italic",        "")
call <sid>hi("CocHintVirtualText",         s:gui0D, "",      s:cterm0D, "",        "italic",        "")
call <sid>hi("CocHintVirtualText",         s:gui0D, "",      s:cterm0D, "",        "italic",        "")

call <sid>hi("CocHighlightText",           "",      "",      "",        "",        "underline",     "")

call <sid>hi("HighlightedyankRegion",      s:gui00, s:gui0A, s:cterm00, s:cterm0A, "",              "")

call <sid>hi("DiffAdd",                    s:gui0B, "none",  s:cterm0B, "none",    "",              "")
call <sid>hi("DiffChange",                 s:gui0D, "none",  s:cterm0D, "none",    "",              "")
call <sid>hi("DiffDelete",                 s:gui08, "none",  s:cterm08, "none",    "",              "")
call <sid>hi("DiffChangeDelete",           s:gui0E, "none",  s:cterm0E, "none",    "",              "")

" Remove functions
delf <sid>hi

" JSX tag colors
hi link xmlEndTag xmlTag

" Fzf
let g:fzf_colors =  {'fg':['fg','Normal'],'bg':['bg','Normal'],
  \ 'hl':['fg','Comment'],'fg+':['fg','CursorLine','CursorColumn','Normal'],
  \ 'bg+':['bg', 'CursorLine','CursorColumn'],
  \ 'hl+':['fg','Statement'],'info':['fg','PreProc'],
  \ 'border':['fg','Ignore'],'prompt':['fg','Conditional'],
  \ 'pointer':['fg','Exception'],'marker':['fg','Keyword'],
  \ 'spinner': ['fg', 'Label'],'header':['fg', 'Comment'] }

" Remove color variables
unlet s:gui00 s:gui01 s:gui02 s:gui03  s:gui04  s:gui05  s:gui06  s:gui07  s:gui08  s:gui09 s:gui0A  s:gui0B  s:gui0C  s:gui0D  s:gui0E  s:gui0F
unlet s:cterm00 s:cterm01 s:cterm02 s:cterm03 s:cterm04 s:cterm05 s:cterm06 s:cterm07 s:cterm08 s:cterm09 s:cterm0A s:cterm0B s:cterm0C s:cterm0D s:cterm0E s:cterm0F