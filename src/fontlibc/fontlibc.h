/**
 * @file
 * @authors DrDnar
 * @brief Provides improved font support
 */

#ifndef H_FONTLIBC
#define H_FONTLIBC

#include <stdint.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
	/* clear = sans-serif font */
	SERIF = 0x01,
	OBLIQUE = 0x02,
	ITALIC = 0x04,
	/* Chances are you're not using this library for monospaced fonts.
	 * But if you are, you'll still have to provide a widths table where
	 * every byte is the same. */
	MONOSPACED = 0x08
} font_styles_t;

typedef struct {
	/* These are standard C-strings.  These may be NULL. */
	intptr_t font_family_name;
	intptr_t font_author;
	/* NOTA BENE: TYPEFACES AND BITMAPPED FONTS CANNOT BE COPYRIGHTED UNDER U.S. LAW!
	 * This field is therefore referred to as a pseudocopyright.  HOWEVER,
	 * it IS is applicable in other jusrisdictions, such as Germany. */
	intptr_t font_pseudocopyright;
	intptr_t font_description;
	intptr_t font_version;
	intptr_t font_codepage;
} font_metadata;

typedef struct {
	uint8_t fontVersion;
	/* Height in pixels */
	uint8_t height;
	/* Total number of glyphs provided. */
	uint8_t total_glyphs;
	/* Number of first glyph.  If you have no codepoints below 32, for
	   example, you can omit the first 32 bitmaps. */
	uint8_t first_glyph;
	/* Offset/pointer to glyph widths table.
	 * This is an OFFSET from the fontVersion member in data format.
	 * However, it is 24-bits long because it becomes a real pointer upon loading. */
	intptr_t widths_table;
	/* Offset to a table of offsets to glyph bitmaps.
	 * These offsets are only 16-bits each to save some space. */
	intptr_t bitmaps;
	/* Specifies how much to move the cursor left after each glyph.
	   Total movement is width - overhang.  Intended for italics. */
	uint8_t italic_space_adjust;
	/* These suggest adding blank space above or below each line of text.
	   This can increase legibility. */
	uint8_t space_above;
	uint8_t space_below;
	/* Specifies the boldness of the font. 
	   0x40: light
	   0x80: regular
	   0x90: medium
	   0xC0: bold*/
	uint8_t weight;
	/* Specifies the style of the font.  See enum font_styles */
	uint8_t style;
	/* For layout, allows aligning text of differing fonts vertically.
	   These count pixels going down, i.e. 0 means the top of the glyph. */
	uint8_t cap_height;
	uint8_t x_height;
	uint8_t baseline_height;
} raw_font;

typedef struct {
	char header[8]; /* "FONTPACK" */
	/* Frankly, if you have more than 127 fonts in a pack, you have a
	   problem. */
	uint8_t fontCount;
	/* Offset from first byte of header */
	intptr_t metadata;
	intptr_t font_list;
} font_pack;


/**
 * Sets the bounds of the window all text will appear in to be the full screen
 */
void fontlib_SetWindowFullScreen(void);

/**
 * Sets the bounds of the window all text will appear in
 * @param x_min X coord base
 * @param y_min Y coord base
 * @param width Width
 * @param height Height
 */
void fontlib_SetWindow(int x_min, uint8_t y_min, int width, uint8_t height);

/**
 * Returns the current text drawing window.
 * NULL pointers are allowed if you don't want a value.
 * @param x_min Pointer to variable to store X coord into
 * @param y_min Pointer to variable to store Y coord into
 * @param width Pointer to variable to store width into
 * @param height  Pointer to variable to store height into
 */
void fontlib_GetWindow(int* x_min, uint8_t* y_min, int* width, uint8_t* height);


/**
 * Sets the cursor position
 * @param x X
 * @param y Y
 */
void fontlib_SetCursorPosition(int x, uint8_t y);

/**
 * Returns the cursor column.
 */
int fontlib_GetCursorX(void);

/**
 * Returns the cursor row.
 */
uint8_t fontlib_GetCursorY(void);

/**
 * Adds the given (x,y) to the cursor position.
 * Useful for tabbing, for example.
 * @param x x-shift
 * @param y y-shift
 */
void fontlib_ShiftCursorPosition(int x, uint8_t y);

/**
 * Sets the current font
 * @param font_data Pointer to font data
 * @param flags Information about how to process the font (unused)
 */
void fontlib_SetFont(uint8_t* font_data, int flags);

/**
 * Sets the current foreground color FontLibC will use for drawing.
 * This is NOT the same as GraphX's current color!
 * @param color New color to use
 */
void fontlib_SetForegroundColor(uint8_t color);

/**
 * Sets the current background color FontLibC will use for drawing.
 * This is NOT the same as GraphX's current color!
 * @param color New color to use
 */
void fontlib_SetBackgroundColor(uint8_t color);

/**
 * Sets the current colors FontLibC will use for drawing.
 * These are NOT the same as GraphX's current colors!
 * @param forecolor New foreground color to use
 * @param backcolor New background color to use
 */
void fontlib_SetColors(uint8_t forecolor, uint8_t backcolor);

/**
 * Returns the current foreground color FontLibC will use for drawing.
 * This is NOT the same as GraphX's current color!
 * @return Current foreground color
 */
uint8_t fontlib_GetForegroundColor(void);

/**
 * Returns the current background color FontLibC will use for drawing.
 * This is NOT the same as GraphX's current color!
 * @return Current background color
 */
uint8_t fontlib_GetBackgroundColor(void);

/**
 * Controls whether FontLibC will use a transparent background for text drawing
 * instead of the currently configured background color.
 * This has nothing to do with GraphX's configured transparent color
 * @param transparency true to make background transparent, false to use background color
 */
void fontlib_SetTransparency(bool transparency);

/**
 * Returns whether FontLibC will use a transparent background for text drawing
 * instead of the currently configured background color.
 * This has nothing to do with GraphX's configured transparent color
 * @return true if background will be transparent, false if background color will be used
 */
bool fontlib_GetTransparency(void);

/**
 * Controls hows much black space will be added above and below each line of
 * text.  If transparency is set, then the padding will not be overwritten with
 * the background color, but padding will still be added.  Padding space is
 * added at the time each glyph is drawn.
 * @param space_above Blank space padding to add above
 * @param space_below Blank space padding to add below
 */
void fontlib_SetLineSpacing(uint8_t space_above, uint8_t space_below);

/**
 * Returns current padding space above.
 * @return Current padding space above
 */
uint8_t fontlib_GetSpaceAbove(void);

/**
 * Returns current padding space below
 * @return Current padding space below
 */
uint8_t fontlib_GetSpaceBelow(void);

/**
 * Sets current spacing adjustment for italic text.  This causes the cursor to
 * be moved back a certain number of pixels after every glyph is drawn.  This
 * is only useful if transparency mode is set.
 * @param italic_spacing_adjustment Pixels to move cursor backward after each glyph
 */
void fontlib_SetItalicSpacingAdjustment(uint8_t italic_spacing_adjustment);

/**
 * Returns current spacing adjustment for italic text.
 * @return Current spacing adjustment for italic text
 */
uint8_t fontlib_GetItalicSpacingAdjustment(void);

/**
 * Returns the height of the current font, INCLUDING space above/below
 * @return Height in pixels
 */
uint8_t fontlib_GetCurrentFontHeight(void);

/**
 * Tests whether the current font has the given codepoint
 * @param codepoint Codepoint to test
 * @return true if codepoint is in current font, false if not
 */
bool fontlib_ValidateCodepoint(char codepoint);

/**
 * Returns the width of the given glyph
 * @param codepoint Codepoint to test
 * @return Width of glyph, 0 if invalid codepoint
 */
uint8_t fontlib_GetGlyphWidth(char codepoint);

/**
 * Returns the width of a string printed in the current font.
 * Stops processing when it encounters any control code or a codepoint not in
 * the current font.
 * @param str Pointer to string
 * @return Width of string
 */
uint24_t fontlib_GetStringWidth(char* str);

/**
 * Gets the location of the last character processed by GetStringWidth or 
 * DrawString
 * @return Pointer to character
 */
char* fontlib_GetLastCharacterRead(void);

/**
 * Draws a glyph
 * @param glyph Codepoint
 */
void fontlib_DrawGlyph(uint8_t glyph);

/**
 * Draws a string
 * @param str Pointer to string
 */
void fontlib_DrawString(char* str);


#ifdef __cplusplus
}
#endif

#endif
