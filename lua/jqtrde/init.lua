local lush = require('lush')
local hsl = lush.hsl
local c = require('jqtrde.colors')

-- stylua: ignore start
local theme = lush(function()

  -- colors:
  -- gray, blue_gray, blue, indigo, violet, magenta, red, orange, gold, yellow, lime, green, teal, cyan
  return {
    -- The following are all the Neovim default highlight groups from the docs
    -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
    -- probably style all of these at a bare minimum.
    --
    -- Referenced/linked groups must come before being referenced/lined,
    -- so the order shown ((mostly) alphabetical) is likely
    -- not the order you will end up with.
    --
    -- You can uncomment these and leave them empty to disable any
    -- styling for that group (meaning they mostly get styled as Normal)
    -- or leave them commented to apply vims default colouring or linking.

    Normal       { bg = c.blue_gray_11, fg = c.gray_1 },

    Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    Bold       { gui = "bold" },
    Italic     { gui = "italic" },

    Error        { bg = c.orange_6 }, -- (preferred) any erroneous construct
    ErrorMsg	{ Error }, -- error messages on the command line
    WarningMsg   { fg = c.red_5, gui = "bold" }, -- warning messages
    Todo           { bg = c.orange_8 }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    Comment      { fg = c.blue_gray_7 },
    Conceal      { bg = c.blue_gray_8 }, -- placeholder characters substituted for concealed text (see 'conceallevel')

    Cursor       { Normal }, -- character under the cursor
    lCursor      { Normal }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     { Normal }, -- like Cursor, but used when in IME mode |CursorIM|
    TermCursor   { Cursor }, -- cursor in a focused terminal
    TermCursorNC { lCursor }, -- cursor in an unfocused terminal

    CursorLine   { bg = c.gold_11, fg = c.gray_2 }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorColumn { CursorLine }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    ColorColumn { CursorLine },


    DiffAdd      { bg = c.green_9 }, -- diff mode: Added line |diff.txt|
    DiffChange   { bg = c.magenta_9 }, -- diff mode: Changed line |diff.txt|
    DiffDelete   { bg = c.magenta_9}, -- diff mode: Deleted line |diff.txt|
    DiffText     { bg = c.green_10 }, -- diff mode: Changed text within a changed line |diff.txt|

    LineNr       { bg = c.blue_gray_10, fg = c.blue_gray_6 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    Folded       { LineNr }, -- line used for closed folds
    FoldColumn   { LineNr }, -- 'foldcolumn'
    CursorLineNr { bg = c.blue_gray_10, fg = c.blue_gray_2 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.

    SignColumn   { LineNr }, -- column where |signs| are displayed

    Search       { bg = c.orange_7 }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch    { bg = c.gold_7 }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute   { bg = c.orange_7 }, -- |:substitute| replacement text highlighting
    MatchParen   { bg = c.orange_9 }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.

    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      { bg = c.green_5 }, -- |more-prompt|
    NormalFloat  { bg = c.lime_5 }, -- Normal text in floating windows.
    FloatBorder  { NormalFloat }, -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows

    Pmenu        { bg = c.gold_11 }, -- Popup menu: normal item.
    PmenuSel     { bg = c.gold_7 }, -- Popup menu: selected item.
    PmenuSbar    { bg = c.gold_7 }, -- Popup menu: scrollbar.
    PmenuThumb   { bg = c.gold_11 }, -- Popup menu: Thumb of the scrollbar.

    SpellBad     { fg = c.red_4, gui = 'undercurl' }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
    SpellCap     { SpellBad }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   { SpellBad }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    { SpellBad }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    --
    StatusLine   { bg = c.gray_8 }, -- status line of current window
    StatusLineNC { StatusLine }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { StatusLine }, -- tab pages line, not active tab page label
    TabLineFill  { StatusLine }, -- tab pages line, where there are no labels
    TabLineSel   { StatusLine }, -- tab pages line, active tab page label
    VertSplit    { LineNr }, -- the column separating vertically split windows


    Visual       { bg = c.gold_5 }, -- Visual mode selection
    VisualNOS    { bg = c.gold_7 }, -- Visual mode selection when vim is "Not Owning the Selection".


    NonText      { fg = c.teal_3 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    SpecialKey   { NonText, gui = "italic" }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    Whitespace   { NonText }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    EndOfBuffer  { NonText }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.

    WildMenu     { bg = c.gold_10 }, -- current match in 'wildmenu' completion
	Directory    { Bold }, -- directory names (and other special names in listings)
    Question     { MoreMsg }, -- |hit-enter| prompt and yes/no questions
    Title        { Bold }, -- titles for output from ":set all", ":autocmd" etc.


    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant       { fg = c.orange_4 }, -- (preferred) any constant
    String         { Constant }, --   a string constant: "this is a string"
    Character      { Constant }, --  a character constant: 'c', '\n'
    Number         { Constant }, --   a number constant: 234, 0xff
    Boolean        { Constant }, --  a boolean constant: TRUE, false
    Float          { Constant }, --    a floating point constant: 2.3e10

    Identifier     { fg = c.blue_4, gui = "bold" }, -- (preferred) any variable name
    Function       { fg = c.gray_2, gui = "bold"}, -- function name (also: methods for classes)

    Statement      { fg = c.blue_4, gui = "bold" }, -- (preferred) any statement
    Conditional    { Statement }, --  if, then, else, endif, switch, etc.
    Repeat         { Statement }, --   for, do, while, etc.
    Label          { Statement }, --    case, default, etc.
    Operator       { Statement }, -- "sizeof", "+", "*", etc.
    Keyword        { Statement }, --  any other keyword

    Exception      { fg = c.teal_4 }, --  try, catch, throw

    PreProc        { fg = c.blue_4 }, -- (preferred) generic Preprocessor
    Include        { PreProc }, --  preprocessor #include
    Define         { PreProc }, --   preprocessor #define
    Macro          { PreProc }, --    same as Define
    PreCondit      { PreProc }, --  preprocessor #if, #else, #endif, etc.

    Type           { fg = c.blue_4, gui = "bold" }, -- (preferred) int, long, char, etc.
    StorageClass   { Type }, -- static, register, volatile, etc.
    Structure      { Type }, --  struct, union, enum, etc.
    Typedef        { Type }, --  A typedef

    Special        { fg = c.red_5 }, -- (preferred) any special symbol
    SpecialChar    { Special }, --  special character in a constant
    Tag            { Special }, --    you can use CTRL-] on this
    Delimiter      { Special }, --  character that needs attention
    SpecialComment { Special }, -- special things inside a comment
    Debug          { Special }, --    debugging statements

    
    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    
    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    LspReferenceText                     { ColorColumn }, -- used for highlighting "text" references
    LspReferenceRead                     { ColorColumn }, -- used for highlighting "read" references
    LspReferenceWrite                    { ColorColumn }, -- used for highlighting "write" references

    LspDiagnosticsDefaultError           { Error }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning         { WarningMsg }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultInformation     { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultHint            { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    LspDiagnosticsVirtualTextError       { LspDiagnosticsDefaultError }, -- Used for "Error" diagnostic virtual text
    LspDiagnosticsVirtualTextWarning     { LspDiagnosticsDefaultWarning }, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

    LspDiagnosticsUnderlineError         { LspDiagnosticsDefaultError }, -- Used to underline "Error" diagnostics
    LspDiagnosticsUnderlineWarning       { LspDiagnosticsDefaultWarning }, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    -- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
    -- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
    -- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { };    -- (unstable) TODO: docs
    -- TSBoolean            { };    -- For booleans.
    -- TSCharacter          { };    -- For characters.
    -- TSComment            { };    -- For comment blocks.
    -- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSConditional        { };    -- For keywords related to conditionnals.
    -- TSConstant           { };    -- For constants
    -- TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { };    -- For syntax/parser errors.
    -- TSException          { };    -- For exception related keywords.
    -- TSField              { };    -- For fields.
    -- TSFloat              { };    -- For floats.
    TSFunction           { fg = c.gray_3, gui = 'bold' },    -- For function (calls and definitions).
    -- TSFuncBuiltin        { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
    TSKeywordFunction    { fg = c.gray_3 },    -- For keywords used to define a fuction.
    -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod             { };    -- For method calls and definitions.
    -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
    -- TSNone               { };    -- TODO: docs
    -- TSNumber             { };    -- For all numbers
    -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter          { fg = c.magenta_5 },    -- For parameters of a function.
    -- TSParameterReference { };    -- For references to parameters of a function.
    -- TSProperty           { };    -- Same as `TSField`.
    -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
    -- TSPunctBracket       { };    -- For brackets and parens.
    -- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat             { };    -- For keywords related to loops.
    -- TSString             { };    -- For strings.
    -- TSStringRegex        { };    -- For regexes.
    -- TSStringEscape       { };    -- For escape characters within a string.
    -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
    -- TSType               { };    -- For types.
    -- TSTypeBuiltin        { };    -- For builtin types.
    -- TSVariable           { };    -- Any variable name that does not have another highlight.
    -- TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag                { };    -- Tags like html tag names.
    -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
    -- TSText               { };    -- For strings considered text in a markup language.
    -- TSEmphasis           { };    -- For text to be represented with emphasis.
    -- TSUnderline          { };    -- For text to be represented with an underline.
    -- TSStrike             { };    -- For strikethrough text.
    -- TSTitle              { };    -- Text that is part of a title.
    -- TSLiteral            { };    -- Literal text.
    -- TSURI                { };    -- Any URI like a link or email.

    GitSignsAdd             { fg = c.green_5 },
    GitSignsChange          { fg = c.blue_5 },
    GitSignsDelete          { fg = c.red_5 },

    IndentBlanklineChar     { fg = c.gray_7 },

    TelescopeSelection      { CursorLine },
    TelescopeSelectionCaret { TelescopeSelection, fg = c.red_5 },
    TelescopeMatching       { fg = c.red_5, gui = "bold" },
    TelescopeBorder         { FloatBorder },

	ALEErrorSign			{ Error },
	ALEWarningSign			{ WarningMsg },

	-- Neovim
	healthError = { fg = c.red_5 },
    healthSuccess = { fg = c.green_5 },
    healthWarning = { fg = c.yellow_5 },


  }
end)

return theme

-- vi:nowrap
