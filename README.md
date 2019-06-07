# FontLibC
## has been incorporated into https://github.com/CE-Programming/toolchain

Beta builds of FontLibC may still be found here, however.

FontLibC is a library providing better text support for C programs on eZ80
TI graphing calculators.

* It supports variable-width glyphs up to 24 pixels wide of any height.
* It supports basic metrics needed for improved text layout and supports
italic/oblique text by not fully advancing the cursor.
* It depends on GRAPHX's LCD mode.  However, it does not directly call any
GRAPHX functions, nor use GRAPHX's text cursor or colors.
* It has a native on-calculator format that supports packaging multiple fonts
together and tagging with metadata.
