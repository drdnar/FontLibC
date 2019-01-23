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
	export fontlib_GetCursorPosition

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
fontlib_GetCursorPosition:
; Gets the cursor position for text drawing
; Arguments:
;  - arg0: X target variable
;  - arg1: Y target variable
; Returns:
;  - Writes to X and Y
	ld	hl, arg0
	add	hl, sp
	ld	de, (hl)
	ex	de, hl
	ld	bc, 0
	adc	hl, bc
	jr	z, .skipX
	ld	bc, (_TextX)
	ld	(hl), bc
.skipX:
	ex	de, hl
	ld	bc, 3
	add	hl, bc
	ld	c, 0
	ld	hl, (hl)
	adc	hl, bc
	ret	z
	ld	a, (_TextY)
	ld	(hl), a
	ret


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
	dl	255
_TextBackColor:
	dl	0
_TextTransparentMode:
	db	0