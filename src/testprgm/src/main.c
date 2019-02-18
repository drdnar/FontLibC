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
#include "..\fontlibc\fontlibc.h"

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
    
    fontlib_SetWindow(1, 1, 10, 10);
    fontlib_GetWindow(&xmin, &ymin, NULL, NULL);
    fontlib_SetCursorPosition(2, 2);
    
    fontlib_SetFont(test_font, 0);
    
    fontlib_DrawGlyph('y');
    
    /* Pause */
    while (!os_GetCSC());
    
    /* Finish the graphics */
    gfx_End();
}
