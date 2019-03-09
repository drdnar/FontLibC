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

/*uint8_t test_font[] = {
	#include "nimbus9.inc"
};*/
uint8_t artwiz_snap_10[] = {
	#include "artwizsnap-10.inc"
};

uint8_t artwiz_snap_20[] = {
	#include "artwizsnap-20.inc"
};

void printCentered(char* string, uint8_t* font, uint8_t sa, uint8_t sb, uint8_t vspace) {
	fontlib_SetFont(font, 0); fontlib_SetLineSpacing(sa, sb);
	fontlib_SetCursorPosition(320/2 - (fontlib_GetStringWidth(string) / 2), fontlib_GetCursorY() + vspace);
	fontlib_DrawString(string);
}

/* Main Function */
void main(void) {
    int xmin, xmax;
    uint8_t ymin, ymax;
    char* title = " Cemetech \n";
    char* logo = "  Make cool things, teach cool stuff at  \n";
    char* website = " http://www.cemetech.net ";
    char* hashtag1 = " #T3IC \n";
    char* hashtag2 = " #cemetech ";
    gfx_Begin();
    gfx_FillScreen(gfx_black);
    
    
/*    while (!os_GetCSC()); */
    
    fontlib_SetWindowFullScreen();
    /*fontlib_SetWindow(0, 0, 320, 240);
    fontlib_GetWindow(&xmin, &ymin, NULL, NULL);
    fontlib_SetCursorPosition(2, 2);*/
    fontlib_SetForegroundColor(0xC0);
    fontlib_SetBackgroundColor(0x20);
    fontlib_SetLineSpacing(2, 4);
    
    fontlib_SetNewlineOptions(FONTLIB_ENABLE_AUTO_WRAP);
    
    printCentered(title, artwiz_snap_20, 2, 2, 48);
    
    printCentered(logo, artwiz_snap_10, 2, 2, 10);
    
    printCentered(website, artwiz_snap_20, 2, 2, 10);
    
    fontlib_SetCursorPosition(0, 150);
    printCentered(hashtag1, artwiz_snap_10, 2, 2, 0);
    printCentered(hashtag2, artwiz_snap_10, 2, 2, 0);
    
/*    fontlib_SetFont(artwiz_snap_10, 0);
    fontlib_SetNewlineOptions(FONTLIB_ENABLE_AUTO_WRAP | FONTLIB_AUTO_CLEAR_TO_EOL | FONTLIB_PRECLEAR_NEWLINE);
    fontlib_DrawGlyph('*');
    fontlib_DrawString("Hello, World!\nThe quick brown fox jumps over the lazy dog. Jack Dawes loves my big sphinx of quartz. ");
    fontlib_Newline();*/
    
    /* Pause */
    while (!os_GetCSC());
    
    /* Finish the graphics */
    gfx_End();
}
