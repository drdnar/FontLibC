; Necessary include files
include '../include/ez80.inc'
include '../include/tiformat.inc'

; Specifies appvar details
format ti archived appvar "testfont"


; Main header
	org 0
header:
	db	"FONTPACK"
	db	1
	dl	metadata
	dl	fontlist


;===============================================================================
; Metadata header
metadata:
	dl	fontFamilyName
	dl	fontAuthor
	dl	fontPseudoCopyright
	dl	fontDescription
	dl	fontVersion
	dl	fontCodepage
fontFamilyName:
	db	"Dr. Sans", 0
fontAuthor:
	db	"Dr. D'nar", 0
fontPseudoCopyright:
; NOTA BENE: TYPEFACES AND BITMAPPED FONTS CANNOT BE COPYRIGHTED UNDER U.S. LAW!
; This field is therefore referred to as a pseudocopyright.  HOWEVER, it IS
; applicable in other jusrisdictions, such as Germany.
	db	0
fontDescription:
	db	"Dr. D'nar's variable width fonts.", 0
fontVersion:
	db	"0.0.1.0 February 2019", 0
fontCodepage:
	db	"Calc-1252", 0


;===============================================================================
fontlist:
	dl	font1
	;dl	font2
	;dl	font3
	;&c.
font1:
include "14-bold.asm"
;font2:
;include "font2.asm"
;font3:
;include "font3.asm"
; &c.
