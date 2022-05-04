-- A poor imitation of the original Vim colourscheme which can be
-- found at https://github.com/jnurmine/Zenburn

local lexers = vis.lexers

lexers.STYLE_DEFAULT = 'fore:white,back:black'
lexers.STYLE_NOTHING = ''
lexers.STYLE_CLASS = 'fore:#dfdfbf'
lexers.STYLE_COMMENT = 'fore:green'
lexers.STYLE_CONSTANT = 'fore:#d7afaf,bold'
lexers.STYLE_DEFINITION = 'fore:#ffd7af,bold'
lexers.STYLE_ERROR = 'fore:#87d7af,back:#303030,bold'
lexers.STYLE_FUNCTION = 'fore:#d7d7af'
lexers.STYLE_KEYWORD = 'fore:yellow,bold'
lexers.STYLE_LABEL = 'fore:#d7d7af'
lexers.STYLE_NUMBER = 'fore:#87d7d7'
lexers.STYLE_OPERATOR = 'fore:#ffffd7'
lexers.STYLE_REGEX = 'fore:#f0dfaf'
lexers.STYLE_STRING = 'fore:#d78787'
lexers.STYLE_PREPROCESSOR = 'fore:#ffd7af,bold'
lexers.STYLE_TAG = 'fore:#d7afaf,bold'
lexers.STYLE_TYPE = 'fore:#d7d7af,bold'
lexers.STYLE_VARIABLE = 'fore:#ffcfaf'
lexers.STYLE_WHITESPACE = ''
lexers.STYLE_EMBEDDED = 'back:#444444'
lexers.STYLE_IDENTIFIER = ''

lexers.STYLE_LINENUMBER = 'fore:#727272'
lexers.STYLE_LINENUMBER_CURSOR = 'fore:#ffffd7,bold'
lexers.STYLE_CURSOR = 'back:#696969'
lexers.STYLE_CURSOR_PRIMARY = 'fore:#1c1c1c,back:cyan,bold'
lexers.STYLE_CURSOR_LINE = 'back:#585858'
lexers.STYLE_COLOR_COLUMN = 'back:#444444'
lexers.STYLE_SELECTION = 'back:#5f875f'
lexers.STYLE_STATUS = 'back:#262626,fore:green'
lexers.STYLE_STATUS_FOCUSED = 'back:#303030,fore:yellow,bold'
lexers.STYLE_SEPARATOR = ''
lexers.STYLE_INFO = ''
lexers.STYLE_EOF = 'fore:#585858'