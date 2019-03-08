#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <tice.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/*#include <debug.h>*/

#include <graphx.h>

#include <fileioc.h>
#include "fontlibc.h"

uint8_t test_font[] = {
	#include "testfont.inc"
};

/* Main Function */
void main(void) {
    int xmin, xmax;
    uint8_t ymin, ymax;
    gfx_Begin();
    gfx_FillScreen(gfx_black);
    
/*    while (!os_GetCSC()); */
    
    fontlib_SetWindow(1, 1, 300, 40);
    fontlib_GetWindow(&xmin, &ymin, NULL, NULL);
    fontlib_SetCursorPosition(2, 2);
    fontlib_SetForegroundColor(0xC0);
    fontlib_SetBackgroundColor(0x40);
    fontlib_SetLineSpacing(2,4);
    
    fontlib_SetFont(test_font, 0);
    fontlib_DrawGlyph('*');
    fontlib_DrawString("Hello, World!\nThe quick brown fox jumps over the lazy dog. Jack Dawes loves my big sphinx of quartz. ");
    
    /* Pause */
    while (!os_GetCSC());
    
    /* Finish the graphics */
    gfx_End();
}
