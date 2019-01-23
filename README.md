# FontsC

FontsC is a library providing better text support for C programs on eZ80 TI graphing calculators.

## TODO
* SetWindow
* SetWindowFullScreen
* GetWindow
* SetCursorPosition
* GetCursorPosition
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
* DrawGlyphUpsideDown
* DrawGlyph90CW
* DrawGlyph90CCW
* DrawGlyphTransparent
* DrawGlyphTransparentUpsideDown
* DrawGlyphTransparent90CW
* DrawGlyphTransparent90CCW
* DrawText
* DrawTextUpsideDown
* DrawText90CW
* DrawText90CCW
* GetGlyphWidth
* GetStringWidth
* SetCurrentFont
* GetCurrentFont


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


## Structure:

On-calculator format of a font appvar:

```
typedef enum
{
	/* clear = sans-serif font */
	SERIF = 0x01,
	ITALIC = 0x02,
	OBLIQUE = 0x04,
} font_styles_t;

typedef struct _font_metrics
{
	/* Specifies the boldness of the font. 
	   0x40: light
	   0x80: regular
	   0x90: medium
	   0xC0: bold*/
	uint8_t weight;
	/* Specifies the style of the font.  See enum font_styles */
	uint8_t style;
	/* Specifies how much to move the cursor left after each glyph.
	   Total movement is width - overhang.  Intended for italics. */
	uint8_t overhang;
	/* Line layout metrics */
	/* For layout, allows aligning text of differing fonts vertically.
	   These count pixels going down, i.e. 0 means the top of the glyph. */
	uint8_t cap_height;
	uint8_t x_height;
	uint8_t baseline_height;
	/* These suggest adding blank space above or below each line of text.
	   This can increase legibility. */
	uint8_t space_above;
	uint8_t space_below;
} font_metrics;

typedef struct {
	/* These are standard C-strings.  These may be NULL. */
	char* font_family_name;
	char* font_author;
	char* font_copyright;
	char* font_description;
	char* font_codepage;
} font_metadata;

typedef struct {
	/* Height in pixels */
	uint8_t height;
	/* Total number of glyphs provided. */
	uint8_t total_glyphs;
	/* Number of first glyph.  If you have no codepoints below 32, for
	   example, you can omit the first 32 bitmaps. */
	uint8_t first_glyph;
	/* If this is a fixed-width font, then the width of every glyph.
	   Zero otherwise. */
	uint8_t monospaced_width;
	/* Offset/pointer to glyph widths table.  May be null for monospaced fonts. */
	uint8_t* widths_table;
	/* Offset to a table of pointers to glyph bitmaps. */
	uint8_t** bitmaps;
	/* Additional information
	   These may be NULL, omitting the data. */
	font_metrics* metrics;
} raw_font;

typedef struct {
	char header[8]; /* "FONTPACK" */
	char fontCount;
	font_metadata* metadata;
	raw_font* font_list;
} font_pack;
```