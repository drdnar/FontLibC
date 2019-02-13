# FontsC

FontsC is a library providing better text support for C programs on eZ80
TI graphing calculators.

* It supports variable-width glyphs up to 24 bits wide of any height.
* It supports basic metrics needed for improved text layout and supports
italic/oblique text by not fully advancing the cursor.
* It depends on GRAPHX's LCD mode.  However, it does not directly call any
GRAPHX functions, nor use GRAPHX's text cursor or colors.
* It has a native on-calculator format that supports packaging multiple fonts
together and tagging with metadata.




## TODO
* SetWindow
* SetWindowFullScreen
* GetWindow
* SetCursorPosition
* GetCursorX
* GetCursorY
* ShiftCursorPosition
* SetForegroundColor
* SetBackgroundColor
* SetColors
* GetForegroundColor
* GetBackgroundColor
* GetColors
* SetTransparencyMode
* GetTransparencyMode
* NewLine
* ClearEOL
* DrawGlyph
* DrawGlyphTransparent
* DrawText
* GetGlyphWidth
* GetStringWidth
* SetCurrentFont
* GetCurrentFont
* GetGlyphWidthInFont(raw_font*, char glyph)


Data:
* Text box
** Top
** Bottom
** Left
** Right
* Colors
** Foreground
** Background
** Make transparent

