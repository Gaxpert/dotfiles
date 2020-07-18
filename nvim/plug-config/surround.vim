" Use ci" to change everything inside quotes which means: change what inside the double quotes.

" You can also manipulate other text objects in a similar way, e.g.:

"" ci' - change inside the single quotes
"" ciw - change inside a word
"" ci( - change inside parentheses
"" dit - delete inside an HTML tag, etc
"" ds"  -  remove quotes
"" yss( - wrap entire line in parentheses
""
""
""
""
"" BASICS
"ds delete surrounding
"cs change surrounding
"ys you surround
"yss the line
"VARIANT
"S own line
"YSS own line + indent
"VISUAL
"S
"LINE VISUAL
"gS
"BLOCK VISUAL
"gS set virtualedit=unnamedplus
"INSERT
"<C-G>s and <C-S> experimental, couldn't get it working myself
"TARGETS
"), }, ], > opening = no space, closing = space
"b, B, r, a aliases
"', ", ` only searched on line
"HTML/XML TAGS
"t ignores stuff like <br/> and <a>, see it and at
"SPECIAL
"w, W, s They are a no-op for ds, are shortcuts for cs
"p Same as above, newlines sometimes added/removed
"REPLACEMENTS
"<C-}> (<C-]>) C-style code blocks
"> closing tag discards attr
"<C-T> tags on own line
"f, F, <C-F> functions
"s leading space is added

