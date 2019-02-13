.header:
; FONT METADATA
; Code Page = Win-1252
; Name = MicrOS Default Font
	db	0 ; font format version
	db	14 ; height
	db	255 ; glyph count
	db	0 ; first codepoint
	dl	.widthsTable - .header ; offset to widths table
	dl	.bitmapsTable - .header ; offset to bitmaps offsets table
	db	0 ; italics space adjust
	db	1 ; suggested blank space above
	db	1 ; suggested blank space below
	db	0C0h ; weight (boldness/thinness)
	db	0 ; style field
	db	2 ; capital height
	db	5 ; lowercase x height
	db	11 ; baseline height
.widthsTable: ; start of widths table
	db	9	; Code point 00 ‽ ‽
	db	9	; Code point 01 ‽ ‽
	db	9	; Code point 02 ‽ ‽
	db	9	; Code point 03 ‽ ‽
	db	9	; Code point 04 █ █
	db	9	; Code point 05 ‽ ‽
	db	9	; Code point 06 ‽ ‽
	db	9	; Code point 07 ‽ ‽
	db	9	; Code point 08 ‽ ‽
	db	9	; Code point 09 ‽ ‽
	db	9	; Code point 0A ‽ ‽
	db	9	; Code point 0B ‽ ‽
	db	9	; Code point 0C ‽ ‽
	db	9	; Code point 0D ▄ ▄
	db	9	; Code point 0E ▀ ▀
	db	10	; Code point 0F � �
	db	9	; Code point 10 ↑ ↑
	db	9	; Code point 11 ↓ ↓
	db	9	; Code point 12 ← ←
	db	9	; Code point 13 → →
	db	9	; Code point 14 ↕ ↕
	db	9	; Code point 15 ↔ ↔
	db	9	; Code point 16 ○ ○
	db	9	; Code point 17 • •
	db	9	; Code point 18 ▴ ▴
	db	9	; Code point 19 ▾ ▾
	db	9	; Code point 1A ◄ ◄
	db	9	; Code point 1B ► ►
	db	9	; Code point 1C ▲ ▲
	db	9	; Code point 1D ▼ ▼
	db	9	; Code point 1E ■ ■
	db	9	; Code point 1F ū ū
	db	4	; Code point 20    
	db	3	; Code point 21 ! !
	db	6	; Code point 22 " "
	db	10	; Code point 23 # #
	db	8	; Code point 24 $ $
	db	7	; Code point 25 % %
	db	8	; Code point 26 & &
	db	4	; Code point 27 ' '
	db	5	; Code point 28 ( (
	db	5	; Code point 29 ) )
	db	8	; Code point 2A * *
	db	7	; Code point 2B + +
	db	4	; Code point 2C , ,
	db	7	; Code point 2D - -
	db	3	; Code point 2E . .
	db	7	; Code point 2F / /
	db	7	; Code point 30 0 0
	db	7	; Code point 31 1 1
	db	7	; Code point 32 2 2
	db	7	; Code point 33 3 3
	db	7	; Code point 34 4 4
	db	7	; Code point 35 5 5
	db	7	; Code point 36 6 6
	db	7	; Code point 37 7 7
	db	7	; Code point 38 8 8
	db	7	; Code point 39 9 9
	db	3	; Code point 3A : :
	db	4	; Code point 3B ; ;
	db	7	; Code point 3C < <
	db	7	; Code point 3D = =
	db	7	; Code point 3E > >
	db	8	; Code point 3F ? ?
	db	9	; Code point 40 @ @
	db	9	; Code point 41 A A
	db	8	; Code point 42 B B
	db	8	; Code point 43 C C
	db	8	; Code point 44 D D
	db	8	; Code point 45 E E
	db	8	; Code point 46 F F
	db	9	; Code point 47 G G
	db	9	; Code point 48 H H
	db	7	; Code point 49 I I
	db	8	; Code point 4A J J
	db	8	; Code point 4B K K
	db	7	; Code point 4C L L
	db	11	; Code point 4D M M
	db	9	; Code point 4E N N
	db	9	; Code point 4F O O
	db	8	; Code point 50 P P
	db	9	; Code point 51 Q Q
	db	8	; Code point 52 R R
	db	8	; Code point 53 S S
	db	9	; Code point 54 T T
	db	9	; Code point 55 U U
	db	9	; Code point 56 V V
	db	11	; Code point 57 W W
	db	9	; Code point 58 X X
	db	9	; Code point 59 Y Y
	db	9	; Code point 5A Z Z
	db	5	; Code point 5B [ [
	db	7	; Code point 5C \ \
	db	5	; Code point 5D ] ]
	db	8	; Code point 5E ^ ^
	db	8	; Code point 5F _ _
	db	4	; Code point 60 ` `
	db	7	; Code point 61 a a
	db	7	; Code point 62 b b
	db	7	; Code point 63 c c
	db	7	; Code point 64 d d
	db	7	; Code point 65 e e
	db	6	; Code point 66 f f
	db	7	; Code point 67 g g
	db	7	; Code point 68 h h
	db	3	; Code point 69 i i
	db	6	; Code point 6A j j
	db	7	; Code point 6B k k
	db	3	; Code point 6C l l
	db	9	; Code point 6D m m
	db	7	; Code point 6E n n
	db	7	; Code point 6F o o
	db	7	; Code point 70 p p
	db	7	; Code point 71 q q
	db	7	; Code point 72 r r
	db	7	; Code point 73 s s
	db	5	; Code point 74 t t
	db	7	; Code point 75 u u
	db	8	; Code point 76 v v
	db	9	; Code point 77 w w
	db	8	; Code point 78 x x
	db	7	; Code point 79 y y
	db	6	; Code point 7A z z
	db	6	; Code point 7B { {
	db	3	; Code point 7C | |
	db	6	; Code point 7D } }
	db	8	; Code point 7E ~ ~
	db	10	; Code point 7F ∞ ∞
	db	8	; Code point 80 € €
	db	8	; Code point 81 π π
	db	4	; Code point 82 ‚ ‚
	db	9	; Code point 83 ƒ ƒ
	db	7	; Code point 84 „ „
	db	9	; Code point 85 … …
	db	7	; Code point 86 † †
	db	7	; Code point 87 ‡ ‡
	db	6	; Code point 88 ˆ ˆ
	db	10	; Code point 89 ‰ ‰
	db	8	; Code point 8A Š Š
	db	5	; Code point 8B ‹ ‹
	db	12	; Code point 8C Œ Œ
	db	8	; Code point 8D Σ Σ
	db	9	; Code point 8E Ž Ž
	db	8	; Code point 8F Γ Γ
	db	8	; Code point 90 Π Π
	db	4	; Code point 91 ‘ ‘
	db	4	; Code point 92 ’ ’
	db	7	; Code point 93 “ “
	db	7	; Code point 94 ” ”
	db	5	; Code point 95 • •
	db	7	; Code point 96 – –
	db	10	; Code point 97 — —
	db	8	; Code point 98 ˜ ˜
	db	14	; Code point 99 ™ ™
	db	7	; Code point 9A š š
	db	5	; Code point 9B › ›
	db	11	; Code point 9C œ œ
	db	8	; Code point 9D σ σ
	db	6	; Code point 9E ž ž
	db	9	; Code point 9F Ÿ Ÿ
	db	4	; Code point A0   non-breaking space
	db	3	; Code point A1 ¡ ¡
	db	8	; Code point A2 ¢ ¢
	db	9	; Code point A3 £ £
	db	9	; Code point A4 ¤ ¤
	db	9	; Code point A5 ¥ ¥
	db	3	; Code point A6 ¦ ¦
	db	8	; Code point A7 § §
	db	7	; Code point A8 ¨ ¨
	db	12	; Code point A9 © ©
	db	7	; Code point AA ª ª
	db	8	; Code point AB « «
	db	7	; Code point AC ¬ ¬
	db	5	; Code point AD ­ ­
	db	12	; Code point AE ® ®
	db	5	; Code point AF ¯ ¯
	db	7	; Code point B0 ° °
	db	7	; Code point B1 ± ±
	db	5	; Code point B2 ² ²
	db	5	; Code point B3 ³ ³
	db	5	; Code point B4 ´ ´
	db	8	; Code point B5 µ µ
	db	9	; Code point B6 ¶ ¶
	db	3	; Code point B7 · ·
	db	5	; Code point B8 ¸ ¸
	db	5	; Code point B9 ¹ ¹
	db	7	; Code point BA º º
	db	8	; Code point BB » »
	db	9	; Code point BC ¼ ¼
	db	9	; Code point BD ½ ½
	db	9	; Code point BE ¾ ¾
	db	8	; Code point BF ¿ ¿
	db	9	; Code point C0 À À
	db	9	; Code point C1 Á Á
	db	9	; Code point C2 Â Â
	db	9	; Code point C3 Ã Ã
	db	9	; Code point C4 Ä Ä
	db	9	; Code point C5 Å Å
	db	12	; Code point C6 Æ Æ
	db	8	; Code point C7 Ç Ç
	db	8	; Code point C8 È È
	db	8	; Code point C9 É É
	db	8	; Code point CA Ê Ê
	db	8	; Code point CB Ë Ë
	db	7	; Code point CC Ì Ì
	db	7	; Code point CD Í Í
	db	7	; Code point CE Î Î
	db	7	; Code point CF Ï Ï
	db	9	; Code point D0 Ð Ð
	db	9	; Code point D1 Ñ Ñ
	db	9	; Code point D2 Ò Ò
	db	9	; Code point D3 Ó Ó
	db	9	; Code point D4 Ô Ô
	db	9	; Code point D5 Õ Õ
	db	9	; Code point D6 Ö Ö
	db	8	; Code point D7 × ×
	db	9	; Code point D8 Ø Ø
	db	9	; Code point D9 Ù Ù
	db	9	; Code point DA Ú Ú
	db	9	; Code point DB Û Û
	db	9	; Code point DC Ü Ü
	db	9	; Code point DD Ý Ý
	db	8	; Code point DE Þ Þ
	db	8	; Code point DF ß ß
	db	7	; Code point E0 à à
	db	7	; Code point E1 á á
	db	7	; Code point E2 â â
	db	7	; Code point E3 ã ã
	db	7	; Code point E4 ä ä
	db	7	; Code point E5 å å
	db	11	; Code point E6 æ æ
	db	7	; Code point E7 ç ç
	db	7	; Code point E8 è è
	db	7	; Code point E9 é é
	db	7	; Code point EA ê ê
	db	7	; Code point EB ë ë
	db	3	; Code point EC ì ì
	db	3	; Code point ED í í
	db	5	; Code point EE î î
	db	7	; Code point EF ï ï
	db	7	; Code point F0 ð ð
	db	7	; Code point F1 ñ ñ
	db	7	; Code point F2 ò ò
	db	7	; Code point F3 ó ó
	db	7	; Code point F4 ô ô
	db	7	; Code point F5 õ õ
	db	7	; Code point F6 ö ö
	db	7	; Code point F7 ÷ ÷
	db	9	; Code point F8 ø ø
	db	7	; Code point F9 ù ù
	db	7	; Code point FA ú ú
	db	7	; Code point FB û û
	db	7	; Code point FC ü ü
	db	7	; Code point FD ý ý
	db	7	; Code point FE þ þ
	db	7	; Code point FF ÿ ÿ
.bitmapsTable: ; start of table of offsets to bitmaps
	dl	.glyph_00 - .header - 1
	dl	.glyph_01 - .header - 1
	dl	.glyph_02 - .header - 1
	dl	.glyph_03 - .header - 1
	dl	.glyph_04 - .header - 1
	dl	.glyph_05 - .header - 1
	dl	.glyph_06 - .header - 1
	dl	.glyph_07 - .header - 1
	dl	.glyph_08 - .header - 1
	dl	.glyph_09 - .header - 1
	dl	.glyph_0A - .header - 1
	dl	.glyph_0B - .header - 1
	dl	.glyph_0C - .header - 1
	dl	.glyph_0D - .header - 1
	dl	.glyph_0E - .header - 1
	dl	.glyph_0F - .header - 1
	dl	.glyph_10 - .header - 1
	dl	.glyph_11 - .header - 1
	dl	.glyph_12 - .header - 1
	dl	.glyph_13 - .header - 1
	dl	.glyph_14 - .header - 1
	dl	.glyph_15 - .header - 1
	dl	.glyph_16 - .header - 1
	dl	.glyph_17 - .header - 1
	dl	.glyph_18 - .header - 1
	dl	.glyph_19 - .header - 1
	dl	.glyph_1A - .header - 1
	dl	.glyph_1B - .header - 1
	dl	.glyph_1C - .header - 1
	dl	.glyph_1D - .header - 1
	dl	.glyph_1E - .header - 1
	dl	.glyph_1F - .header - 1
	dl	.glyph_20 - .header
	dl	.glyph_21 - .header
	dl	.glyph_22 - .header
	dl	.glyph_23 - .header - 1
	dl	.glyph_24 - .header
	dl	.glyph_25 - .header
	dl	.glyph_26 - .header
	dl	.glyph_27 - .header
	dl	.glyph_28 - .header
	dl	.glyph_29 - .header
	dl	.glyph_2A - .header
	dl	.glyph_2B - .header
	dl	.glyph_2C - .header
	dl	.glyph_2D - .header
	dl	.glyph_2E - .header
	dl	.glyph_2F - .header
	dl	.glyph_30 - .header
	dl	.glyph_31 - .header
	dl	.glyph_32 - .header
	dl	.glyph_33 - .header
	dl	.glyph_34 - .header
	dl	.glyph_35 - .header
	dl	.glyph_36 - .header
	dl	.glyph_37 - .header
	dl	.glyph_38 - .header
	dl	.glyph_39 - .header
	dl	.glyph_3A - .header
	dl	.glyph_3B - .header
	dl	.glyph_3C - .header
	dl	.glyph_3D - .header
	dl	.glyph_3E - .header
	dl	.glyph_3F - .header
	dl	.glyph_40 - .header - 1
	dl	.glyph_41 - .header - 1
	dl	.glyph_42 - .header
	dl	.glyph_43 - .header
	dl	.glyph_44 - .header
	dl	.glyph_45 - .header
	dl	.glyph_46 - .header
	dl	.glyph_47 - .header - 1
	dl	.glyph_48 - .header - 1
	dl	.glyph_49 - .header
	dl	.glyph_4A - .header
	dl	.glyph_4B - .header
	dl	.glyph_4C - .header
	dl	.glyph_4D - .header - 1
	dl	.glyph_4E - .header - 1
	dl	.glyph_4F - .header - 1
	dl	.glyph_50 - .header
	dl	.glyph_51 - .header - 1
	dl	.glyph_52 - .header
	dl	.glyph_53 - .header
	dl	.glyph_54 - .header - 1
	dl	.glyph_55 - .header - 1
	dl	.glyph_56 - .header - 1
	dl	.glyph_57 - .header - 1
	dl	.glyph_58 - .header - 1
	dl	.glyph_59 - .header - 1
	dl	.glyph_5A - .header - 1
	dl	.glyph_5B - .header
	dl	.glyph_5C - .header
	dl	.glyph_5D - .header
	dl	.glyph_5E - .header
	dl	.glyph_5F - .header
	dl	.glyph_60 - .header
	dl	.glyph_61 - .header
	dl	.glyph_62 - .header
	dl	.glyph_63 - .header
	dl	.glyph_64 - .header
	dl	.glyph_65 - .header
	dl	.glyph_66 - .header
	dl	.glyph_67 - .header
	dl	.glyph_68 - .header
	dl	.glyph_69 - .header
	dl	.glyph_6A - .header
	dl	.glyph_6B - .header
	dl	.glyph_6C - .header
	dl	.glyph_6D - .header - 1
	dl	.glyph_6E - .header
	dl	.glyph_6F - .header
	dl	.glyph_70 - .header
	dl	.glyph_71 - .header
	dl	.glyph_72 - .header
	dl	.glyph_73 - .header
	dl	.glyph_74 - .header
	dl	.glyph_75 - .header
	dl	.glyph_76 - .header
	dl	.glyph_77 - .header - 1
	dl	.glyph_78 - .header
	dl	.glyph_79 - .header
	dl	.glyph_7A - .header
	dl	.glyph_7B - .header
	dl	.glyph_7C - .header
	dl	.glyph_7D - .header
	dl	.glyph_7E - .header
	dl	.glyph_7F - .header - 1
	dl	.glyph_80 - .header
	dl	.glyph_81 - .header
	dl	.glyph_82 - .header
	dl	.glyph_83 - .header - 1
	dl	.glyph_84 - .header
	dl	.glyph_85 - .header - 1
	dl	.glyph_86 - .header
	dl	.glyph_87 - .header
	dl	.glyph_88 - .header
	dl	.glyph_89 - .header - 1
	dl	.glyph_8A - .header
	dl	.glyph_8B - .header
	dl	.glyph_8C - .header - 1
	dl	.glyph_8D - .header
	dl	.glyph_8E - .header - 1
	dl	.glyph_8F - .header
	dl	.glyph_90 - .header
	dl	.glyph_91 - .header
	dl	.glyph_92 - .header
	dl	.glyph_93 - .header
	dl	.glyph_94 - .header
	dl	.glyph_95 - .header
	dl	.glyph_96 - .header
	dl	.glyph_97 - .header - 1
	dl	.glyph_98 - .header
	dl	.glyph_99 - .header - 1
	dl	.glyph_9A - .header
	dl	.glyph_9B - .header
	dl	.glyph_9C - .header - 1
	dl	.glyph_9D - .header
	dl	.glyph_9E - .header
	dl	.glyph_9F - .header - 1
	dl	.glyph_A0 - .header
	dl	.glyph_A1 - .header
	dl	.glyph_A2 - .header
	dl	.glyph_A3 - .header - 1
	dl	.glyph_A4 - .header - 1
	dl	.glyph_A5 - .header - 1
	dl	.glyph_A6 - .header
	dl	.glyph_A7 - .header
	dl	.glyph_A8 - .header
	dl	.glyph_A9 - .header - 1
	dl	.glyph_AA - .header
	dl	.glyph_AB - .header
	dl	.glyph_AC - .header
	dl	.glyph_AD - .header
	dl	.glyph_AE - .header - 1
	dl	.glyph_AF - .header
	dl	.glyph_B0 - .header
	dl	.glyph_B1 - .header
	dl	.glyph_B2 - .header
	dl	.glyph_B3 - .header
	dl	.glyph_B4 - .header
	dl	.glyph_B5 - .header
	dl	.glyph_B6 - .header - 1
	dl	.glyph_B7 - .header
	dl	.glyph_B8 - .header
	dl	.glyph_B9 - .header
	dl	.glyph_BA - .header
	dl	.glyph_BB - .header
	dl	.glyph_BC - .header - 1
	dl	.glyph_BD - .header - 1
	dl	.glyph_BE - .header - 1
	dl	.glyph_BF - .header
	dl	.glyph_C0 - .header - 1
	dl	.glyph_C1 - .header - 1
	dl	.glyph_C2 - .header - 1
	dl	.glyph_C3 - .header - 1
	dl	.glyph_C4 - .header - 1
	dl	.glyph_C5 - .header - 1
	dl	.glyph_C6 - .header - 1
	dl	.glyph_C7 - .header
	dl	.glyph_C8 - .header
	dl	.glyph_C9 - .header
	dl	.glyph_CA - .header
	dl	.glyph_CB - .header
	dl	.glyph_CC - .header
	dl	.glyph_CD - .header
	dl	.glyph_CE - .header
	dl	.glyph_CF - .header
	dl	.glyph_D0 - .header - 1
	dl	.glyph_D1 - .header - 1
	dl	.glyph_D2 - .header - 1
	dl	.glyph_D3 - .header - 1
	dl	.glyph_D4 - .header - 1
	dl	.glyph_D5 - .header - 1
	dl	.glyph_D6 - .header - 1
	dl	.glyph_D7 - .header
	dl	.glyph_D8 - .header - 1
	dl	.glyph_D9 - .header - 1
	dl	.glyph_DA - .header - 1
	dl	.glyph_DB - .header - 1
	dl	.glyph_DC - .header - 1
	dl	.glyph_DD - .header - 1
	dl	.glyph_DE - .header
	dl	.glyph_DF - .header
	dl	.glyph_E0 - .header
	dl	.glyph_E1 - .header
	dl	.glyph_E2 - .header
	dl	.glyph_E3 - .header
	dl	.glyph_E4 - .header
	dl	.glyph_E5 - .header
	dl	.glyph_E6 - .header - 1
	dl	.glyph_E7 - .header
	dl	.glyph_E8 - .header
	dl	.glyph_E9 - .header
	dl	.glyph_EA - .header
	dl	.glyph_EB - .header
	dl	.glyph_EC - .header
	dl	.glyph_ED - .header
	dl	.glyph_EE - .header
	dl	.glyph_EF - .header
	dl	.glyph_F0 - .header
	dl	.glyph_F1 - .header
	dl	.glyph_F2 - .header
	dl	.glyph_F3 - .header
	dl	.glyph_F4 - .header
	dl	.glyph_F5 - .header
	dl	.glyph_F6 - .header
	dl	.glyph_F7 - .header
	dl	.glyph_F8 - .header - 1
	dl	.glyph_F9 - .header
	dl	.glyph_FA - .header
	dl	.glyph_FB - .header
	dl	.glyph_FC - .header
	dl	.glyph_FD - .header
	dl	.glyph_FE - .header
	dl	.glyph_FF - .header
.glyph_00:	; Code point 00 ‽ ‽
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_01:	; Code point 01 ‽ ‽
	db	00000000b, 10101010b
	db	00000000b, 01010101b
	db	00000000b, 10101010b
	db	00000000b, 01010101b
	db	00000000b, 10101010b
	db	00000000b, 01010101b
	db	00000000b, 10101010b
	db	00000000b, 01010101b
	db	00000000b, 10101010b
	db	00000000b, 01010101b
	db	00000000b, 10101010b
	db	00000000b, 01010101b
	db	00000000b, 10101010b
	db	00000000b, 00000000b
.glyph_02:	; Code point 02 ‽ ‽
	db	00000000b, 01100000b
	db	00000000b, 01100000b
	db	00000000b, 01100000b
	db	00000000b, 01100000b
	db	00000000b, 01100000b
	db	00000000b, 01100000b
	db	00000000b, 01100000b
	db	00000000b, 01100000b
	db	00000000b, 01100000b
	db	00000000b, 01100000b
	db	00000000b, 01100000b
	db	00000000b, 01100000b
	db	00000000b, 01100000b
	db	00000000b, 00000000b
.glyph_03:	; Code point 03 ‽ ‽
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 00000000b
.glyph_04:	; Code point 04 █ █
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 00000000b
.glyph_05:	; Code point 05 ‽ ‽
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11100111b
	db	00000000b, 11000011b
	db	00000000b, 10000001b
	db	00000000b, 11100111b
	db	00000000b, 11100111b
	db	00000000b, 11100111b
	db	00000000b, 11100111b
	db	00000000b, 11100111b
	db	00000000b, 11100111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 00000000b
.glyph_06:	; Code point 06 ‽ ‽
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11100111b
	db	00000000b, 11000011b
	db	00000000b, 10011001b
	db	00000000b, 10011001b
	db	00000000b, 10000001b
	db	00000000b, 10011001b
	db	00000000b, 10011001b
	db	00000000b, 10011001b
	db	00000000b, 10011001b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 00000000b
.glyph_07:	; Code point 07 ‽ ‽
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11000011b
	db	00000000b, 11111001b
	db	00000000b, 11000001b
	db	00000000b, 10011001b
	db	00000000b, 10011001b
	db	00000000b, 10011001b
	db	00000000b, 11000001b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 00000000b
.glyph_08:	; Code point 08 ‽ ‽
	db	00000000b, 11111111b
	db	00000000b, 11000011b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11000011b
	db	00000000b, 11111111b
	db	00000000b, 00000000b
.glyph_09:	; Code point 09 ‽ ‽
	db	00000000b, 11111111b
	db	00000000b, 11000011b
	db	00000000b, 00011000b
	db	00000000b, 00111100b
	db	00000000b, 01111110b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 11000011b
	db	00000000b, 11111111b
	db	00000000b, 00000000b
.glyph_0A:	; Code point 0A ‽ ‽
	db	00000000b, 11111111b
	db	00000000b, 11000011b
	db	00000000b, 00011000b
	db	00000000b, 00111100b
	db	00000000b, 01100110b
	db	00000000b, 01100110b
	db	00000000b, 01111110b
	db	00000000b, 01100110b
	db	00000000b, 01100110b
	db	00000000b, 01100110b
	db	00000000b, 00000000b
	db	00000000b, 11000011b
	db	00000000b, 11111111b
	db	00000000b, 00000000b
.glyph_0B:	; Code point 0B ‽ ‽
	db	00000000b, 11111111b
	db	00000000b, 11000011b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00111100b
	db	00000000b, 00000110b
	db	00000000b, 00111110b
	db	00000000b, 01100110b
	db	00000000b, 01100110b
	db	00000000b, 00111110b
	db	00000000b, 00000000b
	db	00000000b, 11000011b
	db	00000000b, 11111111b
	db	00000000b, 00000000b
.glyph_0C:	; Code point 0C ‽ ‽
	db	10000000b, 00000000b
	db	10000000b, 00111100b
	db	10000000b, 00111100b
	db	10000000b, 00111100b
	db	10000000b, 00111100b
	db	10000000b, 00111100b
	db	10000000b, 00111100b
	db	10000000b, 00111100b
	db	10000000b, 00111100b
	db	10000000b, 00111100b
	db	10000000b, 00111100b
	db	10000000b, 00111100b
	db	10000000b, 00000000b
	db	10000000b, 11111111b
.glyph_0D:	; Code point 0D ▄ ▄
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
.glyph_0E:	; Code point 0E ▀ ▀
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
.glyph_0F:	; Code point 0F � �
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11000001b
	db	10000000b, 10011100b
	db	10000000b, 10011100b
	db	10000000b, 11111001b
	db	10000000b, 11110011b
	db	10000000b, 11110011b
	db	10000000b, 11111111b
	db	10000000b, 11110011b
	db	10000000b, 11110011b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	00000000b, 00000000b
.glyph_10:	; Code point 10 ↑ ↑
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00011000b
	db	00000000b, 00111100b
	db	00000000b, 01111110b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_11:	; Code point 11 ↓ ↓
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 01111110b
	db	00000000b, 00111100b
	db	00000000b, 00011000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_12:	; Code point 12 ← ←
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00011000b
	db	00000000b, 00110000b
	db	00000000b, 01111111b
	db	00000000b, 00110000b
	db	00000000b, 00011000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_13:	; Code point 13 → →
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00001100b
	db	00000000b, 00000110b
	db	00000000b, 01111111b
	db	00000000b, 00000110b
	db	00000000b, 00001100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_14:	; Code point 14 ↕ ↕
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11100111b
	db	10000000b, 11000011b
	db	10000000b, 10000001b
	db	10000000b, 11100111b
	db	10000000b, 11100111b
	db	10000000b, 11100111b
	db	10000000b, 10000001b
	db	10000000b, 11000011b
	db	10000000b, 11100111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
.glyph_15:	; Code point 15 ↔ ↔
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11011011b
	db	10000000b, 10011001b
	db	10000000b, 00000000b
	db	10000000b, 10011001b
	db	10000000b, 11011011b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
.glyph_16:	; Code point 16 ○ ○
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00011100b
	db	00000000b, 00100010b
	db	00000000b, 01000001b
	db	00000000b, 01000001b
	db	00000000b, 01000001b
	db	00000000b, 00100010b
	db	00000000b, 00011100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_17:	; Code point 17 • •
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00011100b
	db	00000000b, 00111110b
	db	00000000b, 01111111b
	db	00000000b, 01111111b
	db	00000000b, 01111111b
	db	00000000b, 00111110b
	db	00000000b, 00011100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_18:	; Code point 18 ▴ ▴
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00001000b
	db	00000000b, 00011100b
	db	00000000b, 00111110b
	db	00000000b, 01111111b
	db	00000000b, 01111111b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_19:	; Code point 19 ▾ ▾
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 01111111b
	db	00000000b, 01111111b
	db	00000000b, 00111110b
	db	00000000b, 00011100b
	db	00000000b, 00001000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_1A:	; Code point 1A ◄ ◄
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000011b
	db	00000000b, 00000111b
	db	00000000b, 00001111b
	db	00000000b, 00011111b
	db	00000000b, 00111111b
	db	00000000b, 00011111b
	db	00000000b, 00001111b
	db	00000000b, 00000111b
	db	00000000b, 00000011b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_1B:	; Code point 1B ► ►
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 01100000b
	db	00000000b, 01110000b
	db	00000000b, 01111000b
	db	00000000b, 01111100b
	db	00000000b, 01111110b
	db	00000000b, 01111100b
	db	00000000b, 01111000b
	db	00000000b, 01110000b
	db	00000000b, 01100000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_1C:	; Code point 1C ▲ ▲
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11110111b
	db	10000000b, 11100011b
	db	10000000b, 11000001b
	db	10000000b, 10000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	10000000b, 11111111b
.glyph_1D:	; Code point 1D ▼ ▼
	db	10000000b, 11111111b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	10000000b, 10000000b
	db	10000000b, 11000001b
	db	10000000b, 11100011b
	db	10000000b, 11110111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
.glyph_1E:	; Code point 1E ■ ■
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
.glyph_1F:	; Code point 1F ū ū
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
	db	10000000b, 11111111b
.glyph_20:	; Code point 20    
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_21:	; Code point 21 ! !
	db	00000000b
	db	00000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	00000000b
	db	11000000b
	db	11000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_22:	; Code point 22 " "
	db	00000000b
	db	11011000b
	db	11011000b
	db	11011000b
	db	01010000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_23:	; Code point 23 # #
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00011011b
	db	00000000b, 00011011b
	db	10000000b, 01111111b
	db	00000000b, 00110110b
	db	00000000b, 00110110b
	db	00000000b, 00110110b
	db	00000000b, 11111111b
	db	00000000b, 01101100b
	db	00000000b, 01101100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_24:	; Code point 24 $ $
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 01111100b
	db	00000000b, 11010110b
	db	00000000b, 11010010b
	db	00000000b, 11010000b
	db	00000000b, 01111100b
	db	00000000b, 00010110b
	db	00000000b, 10010110b
	db	00000000b, 11010110b
	db	00000000b, 01111100b
	db	00000000b, 00110000b
	db	00000000b, 00110000b
	db	00000000b, 00000000b
.glyph_25:	; Code point 25 % %
	db	00000000b
	db	00000000b
	db	11001100b
	db	11001100b
	db	00011000b
	db	00011000b
	db	00110000b
	db	01100000b
	db	01100000b
	db	11001100b
	db	11001100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_26:	; Code point 26 & &
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00111000b
	db	00000000b, 01101100b
	db	00000000b, 01101100b
	db	00000000b, 00111000b
	db	00000000b, 01110110b
	db	00000000b, 11011100b
	db	00000000b, 11001100b
	db	00000000b, 11001100b
	db	00000000b, 01110110b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_27:	; Code point 27 ' '
	db	00000000b
	db	01100000b
	db	01100000b
	db	01100000b
	db	11000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_28:	; Code point 28 ( (
	db	00000000b
	db	00000000b
	db	00110000b
	db	01100000b
	db	01100000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	01100000b
	db	01100000b
	db	00110000b
	db	00000000b
	db	00000000b
.glyph_29:	; Code point 29 ) )
	db	00000000b
	db	00000000b
	db	11000000b
	db	01100000b
	db	01100000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	01100000b
	db	01100000b
	db	11000000b
	db	00000000b
	db	00000000b
.glyph_2A:	; Code point 2A * *
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 01101100b
	db	00000000b, 00111000b
	db	00000000b, 11111110b
	db	00000000b, 00111000b
	db	00000000b, 01101100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_2B:	; Code point 2B + +
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00110000b
	db	00110000b
	db	11111100b
	db	00110000b
	db	00110000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_2C:	; Code point 2C , ,
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	11100000b
	db	01100000b
	db	01100000b
	db	11000000b
	db	00000000b
.glyph_2D:	; Code point 2D - -
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	11111100b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_2E:	; Code point 2E . .
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	11000000b
	db	11000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_2F:	; Code point 2F / /
	db	00000000b
	db	00000000b
	db	00001100b
	db	00001100b
	db	00011000b
	db	00011000b
	db	00110000b
	db	01100000b
	db	01100000b
	db	11000000b
	db	11000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_30:	; Code point 30 0 0
	db	00000000b
	db	00000000b
	db	01111000b
	db	11001100b
	db	11001100b
	db	11011100b
	db	11111100b
	db	11101100b
	db	11001100b
	db	11001100b
	db	01111000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_31:	; Code point 31 1 1
	db	00000000b
	db	00000000b
	db	00110000b
	db	01110000b
	db	11110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	11111100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_32:	; Code point 32 2 2
	db	00000000b
	db	00000000b
	db	01111000b
	db	11001100b
	db	00001100b
	db	00011000b
	db	00110000b
	db	01100000b
	db	11000000b
	db	11001100b
	db	11111100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_33:	; Code point 33 3 3
	db	00000000b
	db	00000000b
	db	01111000b
	db	11001100b
	db	00001100b
	db	00001100b
	db	00111000b
	db	00001100b
	db	00001100b
	db	11001100b
	db	01111000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_34:	; Code point 34 4 4
	db	00000000b
	db	00000000b
	db	00011000b
	db	00111000b
	db	01111000b
	db	11011000b
	db	11011000b
	db	11111100b
	db	00011000b
	db	00011000b
	db	00011000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_35:	; Code point 35 5 5
	db	00000000b
	db	00000000b
	db	11111100b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11111000b
	db	00001100b
	db	00001100b
	db	11001100b
	db	01111000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_36:	; Code point 36 6 6
	db	00000000b
	db	00000000b
	db	00111000b
	db	01100000b
	db	11000000b
	db	11000000b
	db	11111000b
	db	11001100b
	db	11001100b
	db	11001100b
	db	01111000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_37:	; Code point 37 7 7
	db	00000000b
	db	00000000b
	db	11111100b
	db	00001100b
	db	00001100b
	db	00011000b
	db	00011000b
	db	00011000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_38:	; Code point 38 8 8
	db	00000000b
	db	00000000b
	db	01111000b
	db	11001100b
	db	11001100b
	db	11001100b
	db	01111000b
	db	11001100b
	db	11001100b
	db	11001100b
	db	01111000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_39:	; Code point 39 9 9
	db	00000000b
	db	00000000b
	db	01111000b
	db	11001100b
	db	11001100b
	db	11001100b
	db	01111100b
	db	00001100b
	db	00001100b
	db	00011000b
	db	01110000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_3A:	; Code point 3A : :
	db	00000000b
	db	00000000b
	db	00000000b
	db	11000000b
	db	11000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	11000000b
	db	11000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_3B:	; Code point 3B ; ;
	db	00000000b
	db	00000000b
	db	00000000b
	db	01100000b
	db	01100000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	01100000b
	db	01100000b
	db	11000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_3C:	; Code point 3C < <
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00011100b
	db	01110000b
	db	11000000b
	db	01110000b
	db	00011100b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_3D:	; Code point 3D = =
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	11111100b
	db	00000000b
	db	00000000b
	db	11111100b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_3E:	; Code point 3E > >
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	11100000b
	db	00111000b
	db	00001100b
	db	00111000b
	db	11100000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_3F:	; Code point 3F ? ?
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 01111100b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 00001100b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00000000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_40:	; Code point 40 @ @
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 01111110b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11001111b
	db	00000000b, 11011011b
	db	00000000b, 11011011b
	db	00000000b, 11001110b
	db	00000000b, 11000000b
	db	00000000b, 01111111b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_41:	; Code point 41 A A
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00011000b
	db	00000000b, 00111100b
	db	00000000b, 01100110b
	db	00000000b, 01100110b
	db	00000000b, 01100110b
	db	00000000b, 11111111b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_42:	; Code point 42 B B
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11111100b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11111100b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11111100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_43:	; Code point 43 C C
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00111100b
	db	00000000b, 01100110b
	db	00000000b, 11000010b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11000010b
	db	00000000b, 01100110b
	db	00000000b, 00111100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_44:	; Code point 44 D D
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11111000b
	db	00000000b, 11001100b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11001100b
	db	00000000b, 11111000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_45:	; Code point 45 E E
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11111110b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11111100b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11111110b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_46:	; Code point 46 F F
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11111110b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11111100b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_47:	; Code point 47 G G
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00111110b
	db	00000000b, 01100011b
	db	00000000b, 11000001b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11000111b
	db	00000000b, 11000011b
	db	00000000b, 01100011b
	db	00000000b, 00111101b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_48:	; Code point 48 H H
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11111111b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_49:	; Code point 49 I I
	db	00000000b
	db	00000000b
	db	11111100b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	11111100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_4A:	; Code point 4A J J
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00011110b
	db	00000000b, 00001100b
	db	00000000b, 00001100b
	db	00000000b, 00001100b
	db	00000000b, 00001100b
	db	00000000b, 00001100b
	db	00000000b, 11001100b
	db	00000000b, 11001100b
	db	00000000b, 01111000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_4B:	; Code point 4B K K
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11001100b
	db	00000000b, 11001100b
	db	00000000b, 11111000b
	db	00000000b, 11001100b
	db	00000000b, 11001100b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_4C:	; Code point 4C L L
	db	00000000b
	db	00000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11111100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_4D:	; Code point 4D M M
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	11000000b, 11000000b
	db	11000000b, 11100001b
	db	11000000b, 11110011b
	db	11000000b, 11011110b
	db	11000000b, 11001100b
	db	11000000b, 11001100b
	db	11000000b, 11000000b
	db	11000000b, 11000000b
	db	11000000b, 11000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_4E:	; Code point 4E N N
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11100011b
	db	00000000b, 11110011b
	db	00000000b, 11011011b
	db	00000000b, 11001111b
	db	00000000b, 11000111b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_4F:	; Code point 4F O O
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00111100b
	db	00000000b, 01100110b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 01100110b
	db	00000000b, 00111100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_50:	; Code point 50 P P
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11111100b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11111100b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_51:	; Code point 51 Q Q
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00111100b
	db	00000000b, 01100110b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11010011b
	db	00000000b, 11011011b
	db	00000000b, 01101110b
	db	00000000b, 00111100b
	db	00000000b, 00000110b
	db	00000000b, 00000010b
	db	00000000b, 00000000b
.glyph_52:	; Code point 52 R R
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11111100b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11111100b
	db	00000000b, 11001100b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_53:	; Code point 53 S S
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 01111100b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 01100000b
	db	00000000b, 00111000b
	db	00000000b, 00001100b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 01111100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_54:	; Code point 54 T T
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11111111b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_55:	; Code point 55 U U
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 01100110b
	db	00000000b, 00111100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_56:	; Code point 56 V V
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 01100110b
	db	00000000b, 01100110b
	db	00000000b, 01100110b
	db	00000000b, 00111100b
	db	00000000b, 00011000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_57:	; Code point 57 W W
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	11000000b, 11000000b
	db	11000000b, 11000000b
	db	11000000b, 11000000b
	db	10000000b, 01101101b
	db	10000000b, 01101101b
	db	10000000b, 01101101b
	db	00000000b, 00111111b
	db	00000000b, 00110011b
	db	00000000b, 00110011b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_58:	; Code point 58 X X
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 01100110b
	db	00000000b, 00111100b
	db	00000000b, 00011000b
	db	00000000b, 00111100b
	db	00000000b, 01100110b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_59:	; Code point 59 Y Y
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 01100110b
	db	00000000b, 01100110b
	db	00000000b, 00111100b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_5A:	; Code point 5A Z Z
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11111111b
	db	00000000b, 00000011b
	db	00000000b, 00000110b
	db	00000000b, 00001100b
	db	00000000b, 00011000b
	db	00000000b, 00110000b
	db	00000000b, 01100000b
	db	00000000b, 11000000b
	db	00000000b, 11111111b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_5B:	; Code point 5B [ [
	db	00000000b
	db	00000000b
	db	11110000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11110000b
	db	00000000b
	db	00000000b
.glyph_5C:	; Code point 5C \ \
	db	00000000b
	db	00000000b
	db	11000000b
	db	11000000b
	db	01100000b
	db	01100000b
	db	00110000b
	db	00011000b
	db	00011000b
	db	00001100b
	db	00001100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_5D:	; Code point 5D ] ]
	db	00000000b
	db	00000000b
	db	11110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	11110000b
	db	00000000b
	db	00000000b
.glyph_5E:	; Code point 5E ^ ^
	db	00000000b, 00010000b
	db	00000000b, 00111000b
	db	00000000b, 01101100b
	db	00000000b, 11000110b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_5F:	; Code point 5F _ _
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11111110b
	db	00000000b, 00000000b
.glyph_60:	; Code point 60 ` `
	db	11000000b
	db	11000000b
	db	01100000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_61:	; Code point 61 a a
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	01111000b
	db	00001100b
	db	01111100b
	db	11001100b
	db	11001100b
	db	01111100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_62:	; Code point 62 b b
	db	00000000b
	db	00000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11110000b
	db	11011000b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11111000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_63:	; Code point 63 c c
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	01111000b
	db	11001100b
	db	11000000b
	db	11000000b
	db	11001100b
	db	01111000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_64:	; Code point 64 d d
	db	00000000b
	db	00000000b
	db	00001100b
	db	00001100b
	db	00001100b
	db	00111100b
	db	01101100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	01111100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_65:	; Code point 65 e e
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	01111000b
	db	11001100b
	db	11111100b
	db	11000000b
	db	11001100b
	db	01111000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_66:	; Code point 66 f f
	db	00000000b
	db	00000000b
	db	00111000b
	db	01101100b
	db	01100100b
	db	01100000b
	db	11110000b
	db	01100000b
	db	01100000b
	db	01100000b
	db	01100000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_67:	; Code point 67 g g
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	01101100b
	db	11011100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	01111100b
	db	00001100b
	db	11001100b
	db	01111000b
.glyph_68:	; Code point 68 h h
	db	00000000b
	db	00000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11011000b
	db	11101100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_69:	; Code point 69 i i
	db	00000000b
	db	00000000b
	db	11000000b
	db	11000000b
	db	00000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_6A:	; Code point 6A j j
	db	00000000b
	db	00000000b
	db	00011000b
	db	00011000b
	db	00000000b
	db	00111000b
	db	00011000b
	db	00011000b
	db	00011000b
	db	00011000b
	db	11011000b
	db	11011000b
	db	01110000b
	db	00000000b
.glyph_6B:	; Code point 6B k k
	db	00000000b
	db	00000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11001100b
	db	11011000b
	db	11110000b
	db	11011000b
	db	11001100b
	db	11001100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_6C:	; Code point 6C l l
	db	00000000b
	db	00000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_6D:	; Code point 6D m m
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11100110b
	db	00000000b, 11111111b
	db	00000000b, 11011011b
	db	00000000b, 11011011b
	db	00000000b, 11011011b
	db	00000000b, 11011011b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_6E:	; Code point 6E n n
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	11011000b
	db	11101100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_6F:	; Code point 6F o o
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	01111000b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	01111000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_70:	; Code point 70 p p
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	11011000b
	db	11101100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11111000b
	db	11000000b
	db	11000000b
	db	11000000b
.glyph_71:	; Code point 71 q q
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	01101100b
	db	11011100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	01111100b
	db	00001100b
	db	00001100b
	db	00001110b
.glyph_72:	; Code point 72 r r
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	11011000b
	db	11101100b
	db	11001100b
	db	11000000b
	db	11000000b
	db	11000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_73:	; Code point 73 s s
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	01111000b
	db	11001100b
	db	01100000b
	db	00011000b
	db	11001100b
	db	01111000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_74:	; Code point 74 t t
	db	00000000b
	db	00000000b
	db	01100000b
	db	01100000b
	db	01100000b
	db	11110000b
	db	01100000b
	db	01100000b
	db	01100000b
	db	01100000b
	db	00110000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_75:	; Code point 75 u u
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11011100b
	db	01101100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_76:	; Code point 76 v v
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 01101100b
	db	00000000b, 01101100b
	db	00000000b, 00111000b
	db	00000000b, 00010000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_77:	; Code point 77 w w
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11011011b
	db	00000000b, 11011011b
	db	00000000b, 11111111b
	db	00000000b, 01100110b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_78:	; Code point 78 x x
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11000110b
	db	00000000b, 01101100b
	db	00000000b, 00111000b
	db	00000000b, 00111000b
	db	00000000b, 01101100b
	db	00000000b, 11000110b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_79:	; Code point 79 y y
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	01111100b
	db	00001100b
	db	00011000b
	db	01110000b
.glyph_7A:	; Code point 7A z z
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	11111000b
	db	00011000b
	db	00110000b
	db	01100000b
	db	11000000b
	db	11111000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_7B:	; Code point 7B { {
	db	00000000b
	db	00111000b
	db	01100000b
	db	01100000b
	db	01100000b
	db	01100000b
	db	11000000b
	db	01100000b
	db	01100000b
	db	01100000b
	db	01100000b
	db	00111000b
	db	00000000b
	db	00000000b
.glyph_7C:	; Code point 7C | |
	db	00000000b
	db	00000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	00000000b
	db	00000000b
.glyph_7D:	; Code point 7D } }
	db	00000000b
	db	11100000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00011000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	11100000b
	db	00000000b
	db	00000000b
.glyph_7E:	; Code point 7E ~ ~
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 01110110b
	db	00000000b, 11011100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_7F:	; Code point 7F ∞ ∞
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 01110111b
	db	10000000b, 11001101b
	db	10000000b, 11011001b
	db	00000000b, 01110111b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_80:	; Code point 80 € €
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00011100b
	db	00000000b, 00110010b
	db	00000000b, 01100000b
	db	00000000b, 11111000b
	db	00000000b, 01100000b
	db	00000000b, 11111000b
	db	00000000b, 01100000b
	db	00000000b, 00110010b
	db	00000000b, 00011100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_81:	; Code point 81 π π
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11111110b
	db	00000000b, 01101100b
	db	00000000b, 01101100b
	db	00000000b, 01101100b
	db	00000000b, 01101100b
	db	00000000b, 01101100b
	db	00000000b, 01101100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_82:	; Code point 82 ‚ ‚
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	11100000b
	db	01100000b
	db	01100000b
	db	11000000b
	db	00000000b
.glyph_83:	; Code point 83 ƒ ƒ
	db	10000000b, 11111111b
	db	10000000b, 11110001b
	db	10000000b, 11100100b
	db	10000000b, 11100111b
	db	10000000b, 11100111b
	db	10000000b, 11100111b
	db	10000000b, 10000001b
	db	10000000b, 11100111b
	db	10000000b, 11100111b
	db	10000000b, 11100111b
	db	10000000b, 11100111b
	db	10000000b, 00100111b
	db	10000000b, 10001111b
	db	10000000b, 11111111b
.glyph_84:	; Code point 84 „ „
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	11111100b
	db	01101100b
	db	01101100b
	db	11011000b
	db	00000000b
.glyph_85:	; Code point 85 … …
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11011011b
	db	00000000b, 11011011b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_86:	; Code point 86 † †
	db	00000000b
	db	00110000b
	db	00110000b
	db	11111100b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_87:	; Code point 87 ‡ ‡
	db	00000000b
	db	00110000b
	db	00110000b
	db	11111100b
	db	00110000b
	db	00110000b
	db	11111100b
	db	00110000b
	db	00110000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_88:	; Code point 88 ˆ ˆ
	db	11011100b
	db	10001100b
	db	00100100b
	db	11111100b
	db	11111100b
	db	11111100b
	db	11111100b
	db	11111100b
	db	11111100b
	db	11111100b
	db	11111100b
	db	11111100b
	db	11111100b
	db	11111100b
.glyph_89:	; Code point 89 ‰ ‰
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11001100b
	db	00000000b, 11001100b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00110000b
	db	00000000b, 01100000b
	db	00000000b, 01100000b
	db	10000000b, 11001101b
	db	10000000b, 11001101b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_8A:	; Code point 8A Š Š
	db	00000000b, 01101100b
	db	00000000b, 00111000b
	db	00000000b, 00010000b
	db	00000000b, 00000000b
	db	00000000b, 01111100b
	db	00000000b, 11000110b
	db	00000000b, 11000000b
	db	00000000b, 01111100b
	db	00000000b, 00000110b
	db	00000000b, 11000110b
	db	00000000b, 01111100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_8B:	; Code point 8B ‹ ‹
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00110000b
	db	01100000b
	db	11000000b
	db	01100000b
	db	00110000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_8C:	; Code point 8C Œ Œ
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	11100000b, 00111111b
	db	00000000b, 01100110b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	11000000b, 11000111b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 01100110b
	db	11100000b, 00111111b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_8D:	; Code point 8D Σ Σ
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11111110b
	db	00000000b, 11000000b
	db	00000000b, 01100000b
	db	00000000b, 00110000b
	db	00000000b, 00011000b
	db	00000000b, 00110000b
	db	00000000b, 01100000b
	db	00000000b, 11000000b
	db	00000000b, 11111110b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_8E:	; Code point 8E Ž Ž
	db	00000000b, 00110110b
	db	00000000b, 00011100b
	db	00000000b, 00001000b
	db	00000000b, 11111111b
	db	00000000b, 00000011b
	db	00000000b, 00000110b
	db	00000000b, 00001100b
	db	00000000b, 00011000b
	db	00000000b, 00110000b
	db	00000000b, 01100000b
	db	00000000b, 11111111b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_8F:	; Code point 8F Γ Γ
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11111110b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_90:	; Code point 90 Π Π
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11111110b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_91:	; Code point 91 ‘ ‘
	db	00000000b
	db	01100000b
	db	11000000b
	db	11000000b
	db	11100000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_92:	; Code point 92 ’ ’
	db	00000000b
	db	11100000b
	db	01100000b
	db	01100000b
	db	11000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_93:	; Code point 93 “ “
	db	00000000b
	db	01101100b
	db	11011000b
	db	11011000b
	db	11111100b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_94:	; Code point 94 ” ”
	db	00000000b
	db	11111100b
	db	01101100b
	db	01101100b
	db	11011000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_95:	; Code point 95 • •
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	01100000b
	db	11110000b
	db	11110000b
	db	01100000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_96:	; Code point 96 – –
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	11111100b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_97:	; Code point 97 — —
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	10000000b, 11111111b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_98:	; Code point 98 ˜ ˜
	db	00000000b, 10001001b
	db	00000000b, 00100011b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
	db	00000000b, 11111111b
.glyph_99:	; Code point 99 ™ ™
	db	11111100b, 11111111b
	db	11000100b, 00001000b
	db	00000100b, 10011000b
	db	00100100b, 10011001b
	db	00100100b, 10011001b
	db	11100100b, 10011001b
	db	11111100b, 11111111b
	db	11111100b, 11111111b
	db	11111100b, 11111111b
	db	11111100b, 11111111b
	db	11111100b, 11111111b
	db	11111100b, 11111111b
	db	11111100b, 11111111b
	db	11111100b, 11111111b
.glyph_9A:	; Code point 9A š š
	db	00000000b
	db	11001100b
	db	01111000b
	db	00110000b
	db	00000000b
	db	01111000b
	db	11001100b
	db	01100000b
	db	00011000b
	db	11001100b
	db	01111000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_9B:	; Code point 9B › ›
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	11000000b
	db	01100000b
	db	00110000b
	db	01100000b
	db	11000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_9C:	; Code point 9C œ œ
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	10000000b, 01111111b
	db	11000000b, 11001100b
	db	11000000b, 11001111b
	db	00000000b, 11001100b
	db	11000000b, 11001100b
	db	10000000b, 01111111b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_9D:	; Code point 9D σ σ
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 01111111b
	db	00000000b, 11001100b
	db	00000000b, 11001100b
	db	00000000b, 11001100b
	db	00000000b, 11001100b
	db	00000000b, 01111000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_9E:	; Code point 9E ž ž
	db	00000000b
	db	11011000b
	db	01110000b
	db	00100000b
	db	00000000b
	db	11111000b
	db	00011000b
	db	00110000b
	db	01100000b
	db	11000000b
	db	11111000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_9F:	; Code point 9F Ÿ Ÿ
	db	00000000b, 01100110b
	db	00000000b, 01100110b
	db	00000000b, 00000000b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 01100110b
	db	00000000b, 01100110b
	db	00000000b, 00111100b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_A0:	; Code point A0   non-breaking space
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_A1:	; Code point A1 ¡ ¡
	db	00000000b
	db	00000000b
	db	00000000b
	db	11000000b
	db	11000000b
	db	00000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	00000000b
	db	00000000b
.glyph_A2:	; Code point A2 ¢ ¢
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 01111100b
	db	00000000b, 11010110b
	db	00000000b, 11010000b
	db	00000000b, 11010000b
	db	00000000b, 11010110b
	db	00000000b, 01111100b
	db	00000000b, 00110000b
	db	00000000b, 00110000b
	db	00000000b, 00000000b
.glyph_A3:	; Code point A3 £ £
	db	00000000b, 00000000b
	db	00000000b, 00111100b
	db	00000000b, 01100110b
	db	00000000b, 01100010b
	db	00000000b, 01100000b
	db	00000000b, 11110000b
	db	00000000b, 01100000b
	db	00000000b, 01100000b
	db	00000000b, 01100000b
	db	00000000b, 11110011b
	db	00000000b, 11011110b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_A4:	; Code point A4 ¤ ¤
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11000011b
	db	00000000b, 01111110b
	db	00000000b, 00100100b
	db	00000000b, 00100100b
	db	00000000b, 01111110b
	db	00000000b, 11000011b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_A5:	; Code point A5 ¥ ¥
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 01100110b
	db	00000000b, 00111100b
	db	00000000b, 11111111b
	db	00000000b, 00011000b
	db	00000000b, 11111111b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_A6:	; Code point A6 ¦ ¦
	db	00000000b
	db	00000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	00000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_A7:	; Code point A7 § §
	db	00000000b, 00000000b
	db	00000000b, 01111100b
	db	00000000b, 11000110b
	db	00000000b, 01100000b
	db	00000000b, 00111000b
	db	00000000b, 01101100b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 01101100b
	db	00000000b, 00111000b
	db	00000000b, 00001100b
	db	00000000b, 11000110b
	db	00000000b, 01111100b
	db	00000000b, 00000000b
.glyph_A8:	; Code point A8 ¨ ¨
	db	00110010b
	db	00110010b
	db	11111110b
	db	11111110b
	db	11111110b
	db	11111110b
	db	11111110b
	db	11111110b
	db	11111110b
	db	11111110b
	db	11111110b
	db	11111110b
	db	11111110b
	db	11111110b
.glyph_A9:	; Code point A9 © ©
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	10000000b, 00111111b
	db	11000000b, 01100000b
	db	01100000b, 11001110b
	db	01100000b, 11011011b
	db	01100000b, 11011000b
	db	01100000b, 11011011b
	db	01100000b, 11001110b
	db	11000000b, 01100000b
	db	10000000b, 00111111b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_AA:	; Code point AA ª ª
	db	00000000b
	db	01111000b
	db	00001100b
	db	01111100b
	db	11001100b
	db	01111100b
	db	00000000b
	db	11111100b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_AB:	; Code point AB « «
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00110110b
	db	00000000b, 01101100b
	db	00000000b, 11011000b
	db	00000000b, 01101100b
	db	00000000b, 00110110b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_AC:	; Code point AC ¬ ¬
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	11111100b
	db	00001100b
	db	00001100b
	db	00001100b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_AD:	; Code point AD ­ ­
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	11110000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_AE:	; Code point AE ® ®
	db	11110000b, 11111111b
	db	11110000b, 11111111b
	db	01110000b, 11000000b
	db	00110000b, 10011111b
	db	10010000b, 00100001b
	db	10010000b, 00100100b
	db	10010000b, 00100001b
	db	10010000b, 00100100b
	db	10010000b, 00100100b
	db	00110000b, 10011111b
	db	01110000b, 11000000b
	db	11110000b, 11111111b
	db	11110000b, 11111111b
	db	11110000b, 11111111b
.glyph_AF:	; Code point AF ¯ ¯
	db	00001000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
.glyph_B0:	; Code point B0 ° °
	db	00000000b
	db	01111000b
	db	11001100b
	db	11001100b
	db	11001100b
	db	01111000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_B1:	; Code point B1 ± ±
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00110000b
	db	00110000b
	db	11111100b
	db	00110000b
	db	00110000b
	db	00000000b
	db	11111100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_B2:	; Code point B2 ² ²
	db	00000000b
	db	11100000b
	db	00110000b
	db	01100000b
	db	11000000b
	db	11110000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_B3:	; Code point B3 ³ ³
	db	00000000b
	db	11100000b
	db	00110000b
	db	11100000b
	db	00110000b
	db	11100000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_B4:	; Code point B4 ´ ´
	db	11001000b
	db	10011000b
	db	00111000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
.glyph_B5:	; Code point B5 µ µ
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11001100b
	db	00000000b, 11001100b
	db	00000000b, 11001100b
	db	00000000b, 11001100b
	db	00000000b, 11001100b
	db	00000000b, 11111010b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
.glyph_B6:	; Code point B6 ¶ ¶
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 01111111b
	db	00000000b, 11011011b
	db	00000000b, 11011011b
	db	00000000b, 11011011b
	db	00000000b, 01111011b
	db	00000000b, 00011011b
	db	00000000b, 00011011b
	db	00000000b, 00011011b
	db	00000000b, 00011011b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_B7:	; Code point B7 · ·
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	11000000b
	db	11000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_B8:	; Code point B8 ¸ ¸
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	11111000b
	db	10011000b
	db	11001000b
	db	11001000b
	db	00011000b
	db	11111000b
.glyph_B9:	; Code point B9 ¹ ¹
	db	00000000b
	db	01100000b
	db	11100000b
	db	01100000b
	db	01100000b
	db	11110000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_BA:	; Code point BA º º
	db	00000000b
	db	01111000b
	db	11001100b
	db	11001100b
	db	11001100b
	db	01111000b
	db	00000000b
	db	11111100b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_BB:	; Code point BB » »
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11011000b
	db	00000000b, 01101100b
	db	00000000b, 00110110b
	db	00000000b, 01101100b
	db	00000000b, 11011000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_BC:	; Code point BC ¼ ¼
	db	00000000b, 00000000b
	db	00000000b, 01100000b
	db	00000000b, 11100000b
	db	00000000b, 01100011b
	db	00000000b, 01100110b
	db	00000000b, 01101100b
	db	00000000b, 00011000b
	db	00000000b, 00110000b
	db	00000000b, 01111011b
	db	00000000b, 11011011b
	db	00000000b, 00001111b
	db	00000000b, 00000011b
	db	00000000b, 00000011b
	db	00000000b, 00000000b
.glyph_BD:	; Code point BD ½ ½
	db	00000000b, 00000000b
	db	00000000b, 01100000b
	db	00000000b, 11100000b
	db	00000000b, 01100011b
	db	00000000b, 01100110b
	db	00000000b, 01101100b
	db	00000000b, 00011000b
	db	00000000b, 00110000b
	db	00000000b, 01101110b
	db	00000000b, 11000011b
	db	00000000b, 00000110b
	db	00000000b, 00001100b
	db	00000000b, 00001111b
	db	00000000b, 00000000b
.glyph_BE:	; Code point BE ¾ ¾
	db	00000000b, 00000000b
	db	00000000b, 11100000b
	db	00000000b, 00110000b
	db	00000000b, 01100011b
	db	00000000b, 00110110b
	db	00000000b, 11101100b
	db	00000000b, 00011000b
	db	00000000b, 00110000b
	db	00000000b, 01111011b
	db	00000000b, 11011011b
	db	00000000b, 00001111b
	db	00000000b, 00000011b
	db	00000000b, 00000011b
	db	00000000b, 00000000b
.glyph_BF:	; Code point BF ¿ ¿
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00110000b
	db	00000000b, 00110000b
	db	00000000b, 00000000b
	db	00000000b, 00110000b
	db	00000000b, 00110000b
	db	00000000b, 01100000b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 01111100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_C0:	; Code point C0 À À
	db	00000000b, 00110000b
	db	00000000b, 00011000b
	db	00000000b, 00000000b
	db	00000000b, 00011000b
	db	00000000b, 00111100b
	db	00000000b, 01100110b
	db	00000000b, 01100110b
	db	00000000b, 11000011b
	db	00000000b, 11111111b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_C1:	; Code point C1 Á Á
	db	00000000b, 00001100b
	db	00000000b, 00011000b
	db	00000000b, 00000000b
	db	00000000b, 00011000b
	db	00000000b, 00111100b
	db	00000000b, 01100110b
	db	00000000b, 01100110b
	db	00000000b, 11000011b
	db	00000000b, 11111111b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_C2:	; Code point C2 Â Â
	db	00000000b, 00011000b
	db	00000000b, 00111100b
	db	00000000b, 01100110b
	db	00000000b, 00011000b
	db	00000000b, 00111100b
	db	00000000b, 01100110b
	db	00000000b, 01100110b
	db	00000000b, 11000011b
	db	00000000b, 11111111b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_C3:	; Code point C3 Ã Ã
	db	00000000b, 01110011b
	db	00000000b, 11001110b
	db	00000000b, 00000000b
	db	00000000b, 00011000b
	db	00000000b, 00111100b
	db	00000000b, 01100110b
	db	00000000b, 01100110b
	db	00000000b, 11000011b
	db	00000000b, 11111111b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_C4:	; Code point C4 Ä Ä
	db	00000000b, 01100110b
	db	00000000b, 01100110b
	db	00000000b, 00000000b
	db	00000000b, 00011000b
	db	00000000b, 00111100b
	db	00000000b, 01100110b
	db	00000000b, 01100110b
	db	00000000b, 11000011b
	db	00000000b, 11111111b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_C5:	; Code point C5 Å Å
	db	00000000b, 00111100b
	db	00000000b, 01100110b
	db	00000000b, 00111100b
	db	00000000b, 00011000b
	db	00000000b, 00111100b
	db	00000000b, 01100110b
	db	00000000b, 01100110b
	db	00000000b, 11000011b
	db	00000000b, 11111111b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_C6:	; Code point C6 Æ Æ
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	11100000b, 00011111b
	db	00000000b, 00110110b
	db	00000000b, 01100110b
	db	00000000b, 01100110b
	db	11000000b, 01100111b
	db	00000000b, 11111110b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	11100000b, 11000111b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_C7:	; Code point C7 Ç Ç
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00111100b
	db	00000000b, 01100110b
	db	00000000b, 11000010b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11000010b
	db	00000000b, 01100110b
	db	00000000b, 00111100b
	db	00000000b, 00011000b
	db	00000000b, 00001100b
	db	00000000b, 00111000b
.glyph_C8:	; Code point C8 È È
	db	00000000b, 01100000b
	db	00000000b, 00110000b
	db	00000000b, 00011000b
	db	00000000b, 00000000b
	db	00000000b, 11111110b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11111100b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11111110b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_C9:	; Code point C9 É É
	db	00000000b, 00011000b
	db	00000000b, 00110000b
	db	00000000b, 01100000b
	db	00000000b, 00000000b
	db	00000000b, 11111110b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11111100b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11111110b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_CA:	; Code point CA Ê Ê
	db	00000000b, 00110000b
	db	00000000b, 01111000b
	db	00000000b, 11001100b
	db	00000000b, 00000000b
	db	00000000b, 11111110b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11111100b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11111110b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_CB:	; Code point CB Ë Ë
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 00000000b
	db	00000000b, 11111110b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11111100b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11000000b
	db	00000000b, 11111110b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_CC:	; Code point CC Ì Ì
	db	01100000b
	db	00110000b
	db	00011000b
	db	00000000b
	db	11111100b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	11111100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_CD:	; Code point CD Í Í
	db	00011000b
	db	00110000b
	db	01100000b
	db	00000000b
	db	11111100b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	11111100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_CE:	; Code point CE Î Î
	db	00110000b
	db	01111000b
	db	11001100b
	db	00000000b
	db	11111100b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	11111100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_CF:	; Code point CF Ï Ï
	db	00000000b
	db	11001100b
	db	11001100b
	db	00000000b
	db	11111100b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	11111100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_D0:	; Code point D0 Ð Ð
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 01111100b
	db	00000000b, 01100110b
	db	00000000b, 01100011b
	db	00000000b, 01100011b
	db	00000000b, 11110011b
	db	00000000b, 01100011b
	db	00000000b, 01100011b
	db	00000000b, 01100110b
	db	00000000b, 01111100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_D1:	; Code point D1 Ñ Ñ
	db	00000000b, 01110011b
	db	00000000b, 11001110b
	db	00000000b, 00000000b
	db	00000000b, 11000011b
	db	00000000b, 11100011b
	db	00000000b, 11110011b
	db	00000000b, 11011011b
	db	00000000b, 11001111b
	db	00000000b, 11000111b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_D2:	; Code point D2 Ò Ò
	db	00000000b, 00110000b
	db	00000000b, 00011000b
	db	00000000b, 00000000b
	db	00000000b, 00111100b
	db	00000000b, 01100110b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 01100110b
	db	00000000b, 00111100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_D3:	; Code point D3 Ó Ó
	db	00000000b, 00001100b
	db	00000000b, 00011000b
	db	00000000b, 00000000b
	db	00000000b, 00111100b
	db	00000000b, 01100110b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 01100110b
	db	00000000b, 00111100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_D4:	; Code point D4 Ô Ô
	db	00000000b, 00011000b
	db	00000000b, 00111100b
	db	00000000b, 01100110b
	db	00000000b, 00111100b
	db	00000000b, 01100110b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 01100110b
	db	00000000b, 00111100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_D5:	; Code point D5 Õ Õ
	db	00000000b, 01110011b
	db	00000000b, 11001110b
	db	00000000b, 00000000b
	db	00000000b, 00111100b
	db	00000000b, 01100110b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 01100110b
	db	00000000b, 00111100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_D6:	; Code point D6 Ö Ö
	db	00000000b, 01100110b
	db	00000000b, 01100110b
	db	00000000b, 00000000b
	db	00000000b, 00111100b
	db	00000000b, 01100110b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 01100110b
	db	00000000b, 00111100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_D7:	; Code point D7 × ×
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11000110b
	db	00000000b, 01101100b
	db	00000000b, 00111000b
	db	00000000b, 01101100b
	db	00000000b, 11000110b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_D8:	; Code point D8 Ø Ø
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	10000000b, 00000000b
	db	10000000b, 00111101b
	db	00000000b, 01100011b
	db	00000000b, 01100111b
	db	00000000b, 01101111b
	db	00000000b, 01111011b
	db	00000000b, 01110011b
	db	00000000b, 01100011b
	db	00000000b, 11011110b
	db	00000000b, 10000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_D9:	; Code point D9 Ù Ù
	db	00000000b, 00110000b
	db	00000000b, 00011000b
	db	00000000b, 00001100b
	db	00000000b, 00000000b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 01100110b
	db	00000000b, 00111100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_DA:	; Code point DA Ú Ú
	db	00000000b, 00001100b
	db	00000000b, 00011000b
	db	00000000b, 00110000b
	db	00000000b, 00000000b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 01100110b
	db	00000000b, 00111100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_DB:	; Code point DB Û Û
	db	00000000b, 00011000b
	db	00000000b, 00111100b
	db	00000000b, 01100110b
	db	00000000b, 00000000b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 01100110b
	db	00000000b, 00111100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_DC:	; Code point DC Ü Ü
	db	00000000b, 00000000b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 00000000b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 01100110b
	db	00000000b, 00111100b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_DD:	; Code point DD Ý Ý
	db	00000000b, 00001100b
	db	00000000b, 00011000b
	db	00000000b, 00010000b
	db	00000000b, 11000011b
	db	00000000b, 11000011b
	db	00000000b, 01100110b
	db	00000000b, 01100110b
	db	00000000b, 00111100b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00011000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_DE:	; Code point DE Þ Þ
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 11000000b
	db	00000000b, 11111100b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11111100b
	db	00000000b, 11000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_DF:	; Code point DF ß ß
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 01111000b
	db	00000000b, 11001100b
	db	00000000b, 11000110b
	db	00000000b, 11000110b
	db	00000000b, 11011100b
	db	00000000b, 11001100b
	db	00000000b, 11000110b
	db	00000000b, 11100110b
	db	00000000b, 11011100b
	db	00000000b, 11000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_E0:	; Code point E0 à à
	db	00000000b
	db	01100000b
	db	00110000b
	db	00011000b
	db	00000000b
	db	01111000b
	db	00001100b
	db	01111100b
	db	11001100b
	db	11001100b
	db	01111100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_E1:	; Code point E1 á á
	db	00000000b
	db	00011000b
	db	00110000b
	db	01100000b
	db	00000000b
	db	01111000b
	db	00001100b
	db	01111100b
	db	11001100b
	db	11001100b
	db	01111100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_E2:	; Code point E2 â â
	db	00000000b
	db	00110000b
	db	01111000b
	db	11001100b
	db	00000000b
	db	01111000b
	db	00001100b
	db	01111100b
	db	11001100b
	db	11001100b
	db	01111100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_E3:	; Code point E3 ã ã
	db	00000000b
	db	00000000b
	db	01110110b
	db	11011100b
	db	00000000b
	db	01111000b
	db	00001100b
	db	01111100b
	db	11001100b
	db	11001100b
	db	01111100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_E4:	; Code point E4 ä ä
	db	00000000b
	db	00000000b
	db	11001100b
	db	11001100b
	db	00000000b
	db	01111000b
	db	00001100b
	db	01111100b
	db	11001100b
	db	11001100b
	db	01111100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_E5:	; Code point E5 å å
	db	00000000b
	db	00111000b
	db	01101100b
	db	00111000b
	db	00000000b
	db	01111000b
	db	00001100b
	db	01111100b
	db	11001100b
	db	11001100b
	db	01111100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_E6:	; Code point E6 æ æ
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	10000000b, 01111111b
	db	11000000b, 00001100b
	db	11000000b, 01111111b
	db	00000000b, 11001100b
	db	11000000b, 11001100b
	db	10000000b, 01111111b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_E7:	; Code point E7 ç ç
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	01111000b
	db	11001100b
	db	11000000b
	db	11000000b
	db	11001100b
	db	01111000b
	db	00011000b
	db	00001100b
	db	01111000b
.glyph_E8:	; Code point E8 è è
	db	00000000b
	db	01100000b
	db	00110000b
	db	00011000b
	db	00000000b
	db	01111000b
	db	11001100b
	db	11111100b
	db	11000000b
	db	11001100b
	db	01111000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_E9:	; Code point E9 é é
	db	00000000b
	db	00011000b
	db	00110000b
	db	01100000b
	db	00000000b
	db	01111000b
	db	11001100b
	db	11111100b
	db	11000000b
	db	11001100b
	db	01111000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_EA:	; Code point EA ê ê
	db	00000000b
	db	00110000b
	db	01111000b
	db	11001100b
	db	00000000b
	db	01111000b
	db	11001100b
	db	11111100b
	db	11000000b
	db	11001100b
	db	01111000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_EB:	; Code point EB ë ë
	db	00000000b
	db	00000000b
	db	11001100b
	db	11001100b
	db	00000000b
	db	01111000b
	db	11001100b
	db	11111100b
	db	11000000b
	db	11001100b
	db	01111000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_EC:	; Code point EC ì ì
	db	00000000b
	db	10000000b
	db	11000000b
	db	01100000b
	db	00000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_ED:	; Code point ED í í
	db	00000000b
	db	00100000b
	db	01100000b
	db	11000000b
	db	00000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	11000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_EE:	; Code point EE î î
	db	00000000b
	db	01100000b
	db	11110000b
	db	10010000b
	db	00000000b
	db	01100000b
	db	01100000b
	db	01100000b
	db	01100000b
	db	01100000b
	db	01100000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_EF:	; Code point EF ï ï
	db	00000000b
	db	00000000b
	db	11001100b
	db	11001100b
	db	00000000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00110000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_F0:	; Code point F0 ð ð
	db	00000000b
	db	11010000b
	db	01100000b
	db	10110000b
	db	00011000b
	db	01111000b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	01111000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_F1:	; Code point F1 ñ ñ
	db	00000000b
	db	00000000b
	db	01110110b
	db	11011100b
	db	00000000b
	db	11011000b
	db	11101100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_F2:	; Code point F2 ò ò
	db	00000000b
	db	01100000b
	db	00110000b
	db	00011000b
	db	00000000b
	db	01111000b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	01111000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_F3:	; Code point F3 ó ó
	db	00000000b
	db	00011000b
	db	00110000b
	db	01100000b
	db	00000000b
	db	01111000b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	01111000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_F4:	; Code point F4 ô ô
	db	00000000b
	db	00110000b
	db	01111000b
	db	11001100b
	db	00000000b
	db	01111000b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	01111000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_F5:	; Code point F5 õ õ
	db	00000000b
	db	00000000b
	db	01110110b
	db	11011100b
	db	00000000b
	db	01111000b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	01111000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_F6:	; Code point F6 ö ö
	db	00000000b
	db	00000000b
	db	11001100b
	db	11001100b
	db	00000000b
	db	01111000b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	01111000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_F7:	; Code point F7 ÷ ÷
	db	00000000b
	db	00000000b
	db	00000000b
	db	00110000b
	db	00110000b
	db	00000000b
	db	11111100b
	db	00000000b
	db	00110000b
	db	00110000b
	db	00000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_F8:	; Code point F8 ø ø
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
	db	10000000b, 00000001b
	db	00000000b, 00111011b
	db	00000000b, 01100111b
	db	00000000b, 01101111b
	db	00000000b, 01111011b
	db	00000000b, 01110011b
	db	00000000b, 01101110b
	db	00000000b, 11000000b
	db	00000000b, 00000000b
	db	00000000b, 00000000b
.glyph_F9:	; Code point F9 ù ù
	db	00000000b
	db	01100000b
	db	00110000b
	db	00011000b
	db	00000000b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11011100b
	db	01101100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_FA:	; Code point FA ú ú
	db	00000000b
	db	00011000b
	db	00110000b
	db	01100000b
	db	00000000b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11011100b
	db	01101100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_FB:	; Code point FB û û
	db	00000000b
	db	00110000b
	db	01111000b
	db	11001100b
	db	00000000b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11011100b
	db	01101100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_FC:	; Code point FC ü ü
	db	00000000b
	db	00000000b
	db	11001100b
	db	11001100b
	db	00000000b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11011100b
	db	01101100b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_FD:	; Code point FD ý ý
	db	00000000b
	db	00011000b
	db	00110000b
	db	01100000b
	db	00000000b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	01111100b
	db	00001100b
	db	00011000b
	db	01110000b
.glyph_FE:	; Code point FE þ þ
	db	00000000b
	db	00000000b
	db	11000000b
	db	11000000b
	db	11111000b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11111000b
	db	11000000b
	db	11000000b
	db	00000000b
	db	00000000b
	db	00000000b
.glyph_FF:	; Code point FF ÿ ÿ
	db	00000000b
	db	00000000b
	db	11001100b
	db	11001100b
	db	00000000b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	11001100b
	db	01111100b
	db	00001100b
	db	00011000b
	db	01110000b
