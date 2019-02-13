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
	ITALIC = 0x02,
	OBLIQUE = 0x04,
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
	/* Offset to a table of pointers to glyph bitmaps. */
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
int fontlib_GetCursorX();

/**
 * Returns the cursor row.
 */
uint8_t fontlib_GetCursorY();

/**
 * Adds the given (x,y) to the cursor position.
 * Useful for tabbing, for example.
 * @param x x-shift
 * @param y y-shift
 */
void fontlib_ShiftCursorPosition(int x, uint8_t y);



#ifdef __cplusplus
}
#endif

#endif
