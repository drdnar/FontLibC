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
 * Returns the cursor position.  Pointers may be NULL.
 * @param x Pointer to variable to store X into
 * @param y Pointer to variable to store Y into
 */
void fontlib_SetCursorPosition(int* x, uint8_t* y);



#ifdef __cplusplus
}
#endif

#endif
