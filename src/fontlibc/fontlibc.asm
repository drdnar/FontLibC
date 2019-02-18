;-------------------------------------------------------------------------------
include '../include/library.inc'
;-------------------------------------------------------------------------------

library 'FONTLIBC', 1

;-------------------------------------------------------------------------------
; no dependencies
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
; v1 functions
;-------------------------------------------------------------------------------
	export fontlib_SetWindow
	export fontlib_SetWindowFullScreen
	export fontlib_GetWindow
	export fontlib_SetCursorPosition
	export fontlib_GetCursorX
	export fontlib_GetCursorY
	export fontlib_ShiftCursorPosition
	export fontlib_SetFont
	export fontlib_DrawGlyph
	export fontlib_DrawString
	; NEED SET COLORS FUNCTIONS


;-------------------------------------------------------------------------------
LcdSize            := LcdWidth*LcdHeight
; minimum stack size to provide for interrupts if moving the stack
CurrentBuffer      := mpLcdLpbase
TRASPARENT_COLOR   := 0
TEXT_FG_COLOR      := 0
TEXT_BG_COLOR      := 255
TEXT_TP_COLOR      := 255
arg0 := 3
arg1 := 6
arg2 := 9
arg3 := 12
arg4 := 15
arg5 := 18
arg6 := 21

;-------------------------------------------------------------------------------
fontStruct.version := 0
fontStruct.Height := fontStruct.version + 1
fontStruct.totalGlyphs := fontStruct.Height + 1
fontStruct.firstGlyph := fontStruct.totalGlyphs + 1
fontStruct.widthsTablePtr := fontStruct.firstGlyph + 1
fontStruct.bitmapsTablePtr := fontStruct.widthsTablePtr + 3
fontStruct.italicSpaceAdjust := fontStruct.bitmapsTablePtr + 3
fontStruct.spaceAbove := fontStruct.italicSpaceAdjust + 1
fontStruct.spaceBelow := fontStruct.spaceAbove + 1
fontStruct.fontPropertiesSize := fontStruct.bitmapsTablePtr + 3

;-------------------------------------------------------------------------------
macro mIsHLLessThanDE?
	or	a,a
	sbc	hl,de
	add	hl,hl
	jp	po,$+5
	ccf
end macro
macro mIsHLLessThanBC?
	or	a,a
	sbc	hl,bc
	add	hl,hl
	jp	po,$+5
	ccf
end macro
macro s8 op, imm
	local i
 	i = imm
	assert i >= -128 & i < 128
	op, i
end macro

;-------------------------------------------------------------------------------
macro setSmcBytes name*
	local addr, data
	postpone
		virtual at addr
			irpv each, name
				if % = 1
					db %%
				end if
				assert each >= addr + 1 + 2*%%
				dw each - $ - 2
			end irpv
			load data: $-$$ from $$
		end virtual
	end postpone

	call	_SetSmcBytes
addr	db	data
end macro

macro setSmcBytesFast name*
	local temp, list
	postpone
		temp equ each
		irpv each, name
			temp equ temp, each
		end irpv
		list equ temp
	end postpone

	pop	de			; de = return vetor
	ex	(sp),hl			; l = byte
	ld	a,l			; a = byte
	match expand, list
		iterate expand
			if % = 1
				ld	hl,each
				ld	c,(hl)
				ld	(hl),a
			else
				ld	(each),a
			end if
		end iterate
	end match
	ld	a,c			; a = old byte
	ex	de,hl			; hl = return vector
	jp	(hl)
end macro

macro smcByte name*, addr: $-1
	local link
	link := addr
	name equ link
end macro

;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
fontlib_SetWindowFullScreen:
; Sets the bounds of the box all text will appear in to be the full screen
; Arguments:
;  - None
; Returns:
;  - Nothing
	ld	hl, _TextDefaultWindow
	ld	de, _TextXMin
	ld	bc, 12
	ldir
	ret


;-------------------------------------------------------------------------------
fontlib_SetWindow:
; Sets the bounds of the box all text will appear in
; Arguments:
;  - arg0: X min
;  - arg1: Y min
;  - arg2: width
;  - arg3: height
; Returns:
;  - Nothing
	ld	iy, 0
	add	iy, sp
	; Let's try a block copy of the first two
	lea	hl, iy + arg0
	ld	de, _TextXMin
	ld	bc, 6
	ldir
	; Now HL points to the width arg, figure out X max
	ld	bc, (hl)
	ld	hl, (iy + arg0)
	add	hl, bc
	ex	de, hl
	ld	(hl), de
	; And figure out Y max
	ld	a, (iy + arg1)
	add	a, (iy + arg3)
	ld	(_TextYMax), a
	ret


;-------------------------------------------------------------------------------
fontlib_GetWindow:
; Returns the bounds of the window all text will appear in
; Arguments:
;  - arg0: Pointer to X min
;  - arg1: Pointer to Y min
;  - arg2: Pointer to width
;  - arg3: Pointer to height
; Returns:
;  - Data in pointers to args
	push	ix
	ld	ix, _TextXMin - 3	; Just to maintain consistency
	ld	iy, 0
	add	iy, sp
	ld	bc, (ix + arg0)		; Fetch X min, will need in a moment
	ld	de, (iy + arg2)
	sbc	hl, hl
	adc	hl, de			; Check if &width is NULL
	jr	z, .skipWidth
	ld	hl, (ix + arg2)		; Fetch X max
	sbc	hl, bc
	ex	de, hl			; Write to width
	ld	(hl), de
.skipWidth:
	ld	de, (iy + arg0)
	sbc	hl, hl			; If C was set, something weird happened
	adc	hl, de			; (would require X min > X max)
	jr	z, .skipXmin
	ex	de, hl
	ld	(hl), bc
.skipXmin:
	ld	b, (ix + arg0)		; Fetch Y min, will be needed shortly
	ld	de, (iy + arg3)
	sbc	hl, hl
	adc	hl, de
	jr	z, .skipHeight
	ld	a, (ix + arg2)
	sub	b
	ex	de, hl
	ld	(hl), a
.skipHeight:
	pop	ix
	ld	de, (iy + arg1)
	sbc	hl, hl
	adc	hl, de
	ret	z
	ex	de, hl
	ld	(hl), b
	ret
	

;-------------------------------------------------------------------------------
fontlib_SetCursorPosition:
; Sets the cursor position for text drawing
; Arguments:
;  - arg0: X
;  - arg1: Y
; Returns:
;  - Nothing
	ld	hl, arg0
	add	hl, sp
	ld	de, _TextX
	ld	bc, 4
	ldir
	ret


;-------------------------------------------------------------------------------
fontlib_GetCursorX:
; Gets the cursor column
; Arguments:
;  - None
; Returns:
;  - Column
	ld	hl, (_TextX)
	ret


;-------------------------------------------------------------------------------
fontlib_GetCursorY:
; Gets the cursor row
; Arguments:
;  - None
; Returns:
;  - Row
	ld	a, (_TextY)
	ret


;-------------------------------------------------------------------------------
fontlib_ShiftCursorPosition:
; Shifts the cursor position by a given delta
; Arguments:
;  - arg0: delta X
;  - arg1: delta Y
; Returns:
;  - Nothing
	pop	bc
	pop	hl
	pop	de
	push	de
	push	hl
	push	bc
	ld	bc, (_TextX)
	add	hl, bc
	ld	(_TextX), hl
	ld	a, (_TextY)
	add	a, d
	ld	(_TextY), a
	ret

	
;-------------------------------------------------------------------------------
fontlib_SetFont:
; Sets the current font to the data at the pointer given
; Arguments:
;  - arg0: Pointer to font
;  - arg1: Load flags
; Returns:
;  - Nothing
	ld	hl, arg0
	add	hl, sp
	ld	hl, (hl)
	ld	(_CurrentFontRoot), hl
	push	hl
	ld	de, _CurrentFontProperties
	ld	bc, fontStruct.fontPropertiesSize
	ldir
	pop	de
	ld	iy, _CurrentFontProperties
	ld	hl, (iy + fontStruct.widthsTablePtr)
	add	hl, de
	ld	(iy + fontStruct.widthsTablePtr), hl
	ld	hl, (iy + fontStruct.bitmapsTablePtr)
	add	hl, de
	ld	(iy + fontStruct.bitmapsTablePtr), hl
	ret


;-------------------------------------------------------------------------------
fontlib_DrawGlyph:
; Draws a glyph to the current cursor position
; Arguments:
;  - arg0: codepoint
; Returns:
;  - Nothing
	pop	de
	pop	hl
	push	hl
	push	de
	push	ix	; _DrawGlyphRaw destroys IX
	ld	a, l
DrawGlyph:
	; Compute write pointer
	ld	hl, (_TextY)
	ld	h, LcdWidth / 2
	mlt	hl
	add	hl, hl
	ld	de, (_TextX)
	push	de
	add	hl, de
	ld	de, (mpLcdLpbase)
	add	hl, de
	call	DrawGlyphRaw
	lea.sis	de, iy + 0
	; Update _TextX
	pop	hl
	add	hl, de
	ld	a, (_CurrentFontProperties.italicSpaceAdjust)
	pop	ix
	or	a
	ret	z
	ld	e, a
	sbc	hl, de
	ld	(_TextX), hl
	ret
DrawGlyphRaw:
; Handles the actual main work of drawing a glyph.
; Inputs:
;  - HL: Draw pointer
;  - A: Glyph index
;  - Font properties variables
; Outputs:
;  - IYL: Width of glyph (not including any italicSpaceAdjust)
;  - IYH: Zero
;  - IYU: Untouched
;  - Glyph drawn
; Destroys:
;  - Basically everything except shadow and configuration registers.
;    And don't count on that not changing.
	push	hl
	; Get glyph width and update loop controls
	ld	c, a
	or	a
	sbc	hl, hl
	ld	l, a
	ld	de, (_CurrentFontProperties.widthsTablePtr)
	add	hl, de
	ld	a, (hl)
	ld	iyl, a
	rra
	srl	a
	srl	a
	inc	a
	ld	(_TextStraightBytesPerRow), a
	ld	a, 320 and 255
	sub	iyl
	ld	(_TextStraightRowDelta - 2), a
	; Get pointer to bitmap
	ld	hl, (_CurrentFontProperties.bitmapsTablePtr)
	ld	b, 2
	mlt	bc	; Performs both the multiply and zeros BCU
	add	hl, bc
	ld	ix, (hl)
	lea.sis	ix, ix + 0	; Truncate to 16-bits
	ld	de, (_CurrentFontRoot)
	add	ix, de
	pop	hl
	; Now deal with the spaceAbove metric
	ld	a, (_TextTransparentMode)
	ld	c, a
	ld	a, (_CurrentFontProperties.spaceAbove)
	or	a
	jr	z, .noSpaceAbove
	bit	0, c
	jr	nz, .transparentSpaceAbove
	; Deal with clearing out pixels
	ld	iyh, a
	ld	a, iyl
	ld	c, a
	ld	a, (_TextStraightBackgroundColor)
	ld	de, (_TextStraightRowDelta - 2)
.clearSpaceAboveLoop:
	ld	b, c
.clearSpaceAboveInnerLoop:
	ld	(hl), a
	inc	hl
	djnz	.clearSpaceAboveInnerLoop
	add	hl, de
	dec	iyh
	jr	nz, .clearSpaceAboveLoop
	ld	a, (_TextTransparentMode)
	ld	c, a
	jr	.noSpaceAbove
.transparentSpaceAbove:
	ld	e, a
	ld	d, LcdWidth / 2
	mlt	de
	ex	de, hl
	add	hl, hl
	ex	de, hl
	add	hl, de
.noSpaceAbove: 
	ld	a, (_CurrentFontProperties.height)
	ld	iyh, a
	ex	de, hl
; Registers:
;  - B: Bit counter for each row
;  - C: Transparent flag
;  - IYL: Glyph data width
;  - IYH: Row counter
;  - IX: Read pointer
;  - DE: Write pointer
;  - HL: Current line bitmap
; This is split into three loops: one for set pixels, on for unset pixels that
; are transparent, and one for unset pixels that are opaque.
; The idea is that pixels are not randomly black or white; rather, there tend
; to be horizontal lines in text, giving straight runs of pixels the same color.
; Thus, we can optimize for that case.
.rowLoop:
	ld	hl, (ix)
	lea	ix, ix + 0		; SMCd to have correct byte count per row
smcByte _TextStraightBytesPerRow
	ld	b, iyl
.columnLoopStart:
	ld	a, (_TextStraightForegroundColor)
	; For set pixels
.setColumnLoop:
	add	hl, hl
	jr	nc, .unsetColumnLoopStart
.setColumnLoopMiddle:
	ld	(de), a
	inc	de
	djnz	.setColumnLoop
	jr	.columnLoopEnd
.setColumnLoopStart:
	ld	a, 255			; SMCd to have correct foreground color
smcByte _TextStraightForegroundColor
	jr	.setColumnLoopMiddle
	; For unset pixels, we use a special loop if transparency is requested
.unsetColumnLoopStart:
	ld	a, 0			; SMCd to have correct background color
smcByte _TextStraightBackgroundColor
	bit	0, c
	jr	z, .unsetColumnLoopMiddle
	inc	de
.unsetColumnLoopTransparent:
	add	hl, hl
	jr	c, .setColumnLoopStart
	inc	de
	djnz	.unsetColumnLoopTransparent
	jr	.columnLoopEnd
	; For unset pixels with opacity on
.unsetColumnLoop:
	add	hl, hl
	jr	c, .setColumnLoopStart
.unsetColumnLoopMiddle:
	ld	(de), a
	inc	de
	djnz	.unsetColumnLoop
.columnLoopEnd:
	ex	de, hl
	ld	de, LcdWidth - 0	; SMCd to have correct row delta
smcByte _TextStraightRowDelta
	add	hl, de
	ex	de, hl
	dec	iyh
	jr	nz, .rowLoop
; OK done with the main work!
	ex	de, hl
	; Now deal with the spaceBelow metric
	ld	a, (_CurrentFontProperties.spaceBelow)
	or	a
	ret	z
	bit	0, c
	ret	nz
	; Deal with clearing out pixels
	ld	iyh, a
	ld	c, iyl
	ld	a, (_TextStraightBackgroundColor)
	ld	de, (_TextStraightRowDelta - 2)
.clearSpaceBelowLoop:
	ld	b, c
.clearSpaceBelowInnerLoop:
	ld	(hl), a
	inc	hl
	djnz	.clearSpaceBelowInnerLoop
	add	hl, de
	dec	iyh
	jr	nz, .clearSpaceBelowLoop
	ret


;-------------------------------------------------------------------------------
fontlib_DrawString:
;_DrawString:
;	ex	de, hl
;	; Compute target address
;	ld	hl, (_TextY)
;	ld	h, LcdWidth / 2
;	mlt	hl
;	add	hl, hl
;	ld	bc, (_TextX)
;	push	bc
;	add	hl, bc
;	ld	bc, (mpLcdLpbase)
;	add	hl, bc
;.byteLoop:
;	ld	a, (de)
;	inc	de
;	push	de
;	push	hl
;	call	_DrawGlyphRaw
;	lea	de, iy + 0
;	add	hl, de
;	ld	a, (_CurrentFontProperties.italicSpaceAdjust)
;	ld	e, a
;	sbc	hl, de
;	ld	(_TextX), hl
	

;-------------------------------------------------------------------------------
; Data
_TextXMin:
	dl	0
_TextYMin:
	dl	0
_TextXMax:
	dl	LcdWidth
_TextYMax:
	dl	LcdHeight
_TextDefaultWindow:
	dl	0
	dl	0
	dl	LcdWidth
	dl	LcdHeight
_TextX:
	dl	0
_TextY:
	dl	0
_TextForeColor:
	db	255
_TextBackColor:
	db	0
_TextTransparentMode:
	db	0
_CurrentFontRoot:
	dl	0
_CurrentFontProperties:
.version:
	db	0
.height:
	db	0
.totalGlyphs:
	db	0
.firstGlyph:
	db	0
.widthsTablePtr:
	dl	0
.bitmapsTablePtr:
	dl	0
.italicSpaceAdjust:
	db	0
.spaceAbove:
	db	0
.spaceBelow:
	db	0
;