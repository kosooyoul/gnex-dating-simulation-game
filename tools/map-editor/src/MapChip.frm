VERSION 5.00
Begin VB.Form Form3 
   BorderStyle     =   1  '단일 고정
   Caption         =   "맵 칩"
   ClientHeight    =   6570
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5370
   Icon            =   "MapChip.frx":0000
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   6570
   ScaleWidth      =   5370
   Begin VB.PictureBox Picture1 
      Height          =   6510
      Left            =   20
      ScaleHeight     =   6450
      ScaleWidth      =   5280
      TabIndex        =   0
      Top             =   40
      Width           =   5340
      Begin VB.Shape Shape1 
         BorderColor     =   &H0000FFFF&
         Height          =   240
         Left            =   120
         Top             =   360
         Width           =   240
      End
      Begin VB.Shape Shape2 
         BorderColor     =   &H00FFFF00&
         Height          =   240
         Left            =   2760
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   239
         Left            =   4920
         Picture         =   "MapChip.frx":058A
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   238
         Left            =   4680
         Picture         =   "MapChip.frx":08CC
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   237
         Left            =   4440
         Picture         =   "MapChip.frx":0C0E
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   236
         Left            =   4200
         Picture         =   "MapChip.frx":0F50
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   235
         Left            =   3960
         Picture         =   "MapChip.frx":1292
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   234
         Left            =   3720
         Picture         =   "MapChip.frx":15D4
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   233
         Left            =   3480
         Picture         =   "MapChip.frx":1916
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   232
         Left            =   3240
         Picture         =   "MapChip.frx":1C58
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   231
         Left            =   3000
         Picture         =   "MapChip.frx":1F9A
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   230
         Left            =   2760
         Picture         =   "MapChip.frx":22DC
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   229
         Left            =   4920
         Picture         =   "MapChip.frx":261E
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   228
         Left            =   4680
         Picture         =   "MapChip.frx":2960
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   227
         Left            =   4440
         Picture         =   "MapChip.frx":2A04
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   226
         Left            =   4200
         Picture         =   "MapChip.frx":2AA8
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   225
         Left            =   3960
         Picture         =   "MapChip.frx":2B4C
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   224
         Left            =   3720
         Picture         =   "MapChip.frx":2BCE
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   223
         Left            =   3480
         Picture         =   "MapChip.frx":2C4F
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   222
         Left            =   3240
         Picture         =   "MapChip.frx":2CD1
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   221
         Left            =   3000
         Picture         =   "MapChip.frx":2D53
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   220
         Left            =   2760
         Picture         =   "MapChip.frx":2DD4
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   219
         Left            =   4920
         Picture         =   "MapChip.frx":2E56
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   218
         Left            =   4680
         Picture         =   "MapChip.frx":2F50
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   217
         Left            =   4440
         Picture         =   "MapChip.frx":3047
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   216
         Left            =   4200
         Picture         =   "MapChip.frx":32D1
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   215
         Left            =   3960
         Picture         =   "MapChip.frx":3613
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   214
         Left            =   3720
         Picture         =   "MapChip.frx":3955
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   213
         Left            =   3480
         Picture         =   "MapChip.frx":3C97
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   212
         Left            =   3240
         Picture         =   "MapChip.frx":40DC
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   211
         Left            =   3000
         Picture         =   "MapChip.frx":435C
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   210
         Left            =   2760
         Picture         =   "MapChip.frx":469E
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   209
         Left            =   4920
         Picture         =   "MapChip.frx":491F
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   208
         Left            =   4680
         Picture         =   "MapChip.frx":4A18
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   207
         Left            =   4440
         Picture         =   "MapChip.frx":4B0B
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   206
         Left            =   4200
         Picture         =   "MapChip.frx":4BE7
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   205
         Left            =   3960
         Picture         =   "MapChip.frx":5008
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   204
         Left            =   3720
         Picture         =   "MapChip.frx":5277
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   203
         Left            =   3480
         Picture         =   "MapChip.frx":535B
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   202
         Left            =   3240
         Picture         =   "MapChip.frx":543E
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   201
         Left            =   3000
         Picture         =   "MapChip.frx":56AA
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   200
         Left            =   2760
         Picture         =   "MapChip.frx":5AE9
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   249
         Left            =   2280
         Picture         =   "MapChip.frx":5D52
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   248
         Left            =   2040
         Picture         =   "MapChip.frx":6094
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   247
         Left            =   1800
         Picture         =   "MapChip.frx":63D6
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   246
         Left            =   1560
         Picture         =   "MapChip.frx":6718
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   245
         Left            =   1320
         Picture         =   "MapChip.frx":6A5A
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   244
         Left            =   1080
         Picture         =   "MapChip.frx":6D9C
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   243
         Left            =   840
         Picture         =   "MapChip.frx":70DE
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   242
         Left            =   600
         Picture         =   "MapChip.frx":7420
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   241
         Left            =   360
         Picture         =   "MapChip.frx":7762
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   240
         Left            =   120
         Picture         =   "MapChip.frx":7AA4
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   239
         Left            =   2280
         Picture         =   "MapChip.frx":7DE6
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   238
         Left            =   2040
         Picture         =   "MapChip.frx":8128
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   237
         Left            =   1800
         Picture         =   "MapChip.frx":846A
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   236
         Left            =   1560
         Picture         =   "MapChip.frx":87AC
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   235
         Left            =   1320
         Picture         =   "MapChip.frx":8AEE
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   234
         Left            =   1080
         Picture         =   "MapChip.frx":8E30
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   233
         Left            =   840
         Picture         =   "MapChip.frx":9172
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   232
         Left            =   600
         Picture         =   "MapChip.frx":94B4
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   231
         Left            =   360
         Picture         =   "MapChip.frx":97F6
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   230
         Left            =   120
         Picture         =   "MapChip.frx":9B38
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   229
         Left            =   2280
         Picture         =   "MapChip.frx":9E7A
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   228
         Left            =   2040
         Picture         =   "MapChip.frx":A1BC
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   227
         Left            =   1800
         Picture         =   "MapChip.frx":A4FE
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   226
         Left            =   1560
         Picture         =   "MapChip.frx":A840
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   225
         Left            =   1320
         Picture         =   "MapChip.frx":AB82
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   224
         Left            =   1080
         Picture         =   "MapChip.frx":AEC4
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   223
         Left            =   840
         Picture         =   "MapChip.frx":B206
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   222
         Left            =   600
         Picture         =   "MapChip.frx":B548
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   221
         Left            =   360
         Picture         =   "MapChip.frx":B88A
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   220
         Left            =   120
         Picture         =   "MapChip.frx":BBCC
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   219
         Left            =   2280
         Picture         =   "MapChip.frx":BF0E
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   218
         Left            =   2040
         Picture         =   "MapChip.frx":C250
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   217
         Left            =   1800
         Picture         =   "MapChip.frx":C592
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   216
         Left            =   1560
         Picture         =   "MapChip.frx":C8D4
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   215
         Left            =   1320
         Picture         =   "MapChip.frx":CC16
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   214
         Left            =   1080
         Picture         =   "MapChip.frx":CF58
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   213
         Left            =   840
         Picture         =   "MapChip.frx":D29A
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   212
         Left            =   600
         Picture         =   "MapChip.frx":D5DC
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   211
         Left            =   360
         Picture         =   "MapChip.frx":D91E
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   210
         Left            =   120
         Picture         =   "MapChip.frx":DC60
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   209
         Left            =   2280
         Picture         =   "MapChip.frx":DFA2
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   208
         Left            =   2040
         Picture         =   "MapChip.frx":E2E4
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   207
         Left            =   1800
         Picture         =   "MapChip.frx":E626
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   206
         Left            =   1560
         Picture         =   "MapChip.frx":E968
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   205
         Left            =   1320
         Picture         =   "MapChip.frx":ECAA
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   204
         Left            =   1080
         Picture         =   "MapChip.frx":EFEC
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   203
         Left            =   840
         Picture         =   "MapChip.frx":F32E
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   202
         Left            =   600
         Picture         =   "MapChip.frx":F670
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   201
         Left            =   360
         Picture         =   "MapChip.frx":F9B2
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   200
         Left            =   120
         Picture         =   "MapChip.frx":FCF4
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   62
         Left            =   600
         Picture         =   "MapChip.frx":10036
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   30
         Left            =   120
         Picture         =   "MapChip.frx":10378
         Top             =   1080
         Width           =   240
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Layer 2"
         ForeColor       =   &H80000010&
         Height          =   180
         Index           =   2
         Left            =   2760
         TabIndex        =   3
         Top             =   120
         Width           =   630
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Layer 1"
         ForeColor       =   &H80000010&
         Height          =   180
         Index           =   0
         Left            =   120
         TabIndex        =   1
         Top             =   120
         Width           =   630
      End
      Begin VB.Line Line2 
         BorderColor     =   &H80000005&
         X1              =   2640
         X2              =   2640
         Y1              =   120
         Y2              =   6360
      End
      Begin VB.Line Line1 
         BorderColor     =   &H80000010&
         BorderWidth     =   2
         X1              =   2640
         X2              =   2640
         Y1              =   120
         Y2              =   6360
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   199
         Left            =   4920
         Picture         =   "MapChip.frx":106BA
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   198
         Left            =   4680
         Picture         =   "MapChip.frx":109FC
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   197
         Left            =   4440
         Picture         =   "MapChip.frx":10D3E
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   196
         Left            =   4200
         Picture         =   "MapChip.frx":11080
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   195
         Left            =   3960
         Picture         =   "MapChip.frx":113C2
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   194
         Left            =   3720
         Picture         =   "MapChip.frx":11704
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   193
         Left            =   3480
         Picture         =   "MapChip.frx":11A46
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   192
         Left            =   3240
         Picture         =   "MapChip.frx":11D88
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   191
         Left            =   3000
         Picture         =   "MapChip.frx":120CA
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   190
         Left            =   2760
         Picture         =   "MapChip.frx":1221B
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   189
         Left            =   4920
         Picture         =   "MapChip.frx":12371
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   188
         Left            =   4680
         Picture         =   "MapChip.frx":126B3
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   187
         Left            =   4440
         Picture         =   "MapChip.frx":129F5
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   186
         Left            =   4200
         Picture         =   "MapChip.frx":12D37
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   185
         Left            =   3960
         Picture         =   "MapChip.frx":13079
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   184
         Left            =   3720
         Picture         =   "MapChip.frx":130F5
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   183
         Left            =   3480
         Picture         =   "MapChip.frx":13333
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   182
         Left            =   3240
         Picture         =   "MapChip.frx":13581
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   181
         Left            =   3000
         Picture         =   "MapChip.frx":137D2
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   180
         Left            =   2760
         Picture         =   "MapChip.frx":13935
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   179
         Left            =   4920
         Picture         =   "MapChip.frx":13AA1
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   178
         Left            =   4680
         Picture         =   "MapChip.frx":13CF3
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   177
         Left            =   4440
         Picture         =   "MapChip.frx":13E3E
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   176
         Left            =   4200
         Picture         =   "MapChip.frx":13F61
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   175
         Left            =   3960
         Picture         =   "MapChip.frx":1406E
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   174
         Left            =   3720
         Picture         =   "MapChip.frx":141FD
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   173
         Left            =   3480
         Picture         =   "MapChip.frx":1431B
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   172
         Left            =   3240
         Picture         =   "MapChip.frx":14427
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   171
         Left            =   3000
         Picture         =   "MapChip.frx":14545
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   170
         Left            =   2760
         Picture         =   "MapChip.frx":145DF
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   169
         Left            =   4920
         Picture         =   "MapChip.frx":146B7
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   168
         Left            =   4680
         Picture         =   "MapChip.frx":149F9
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   167
         Left            =   4440
         Picture         =   "MapChip.frx":14D3B
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   166
         Left            =   4200
         Picture         =   "MapChip.frx":1507D
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   165
         Left            =   3960
         Picture         =   "MapChip.frx":15121
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   164
         Left            =   3720
         Picture         =   "MapChip.frx":151CF
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   163
         Left            =   3480
         Picture         =   "MapChip.frx":15253
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   162
         Left            =   3240
         Picture         =   "MapChip.frx":152E2
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   161
         Left            =   3000
         Picture         =   "MapChip.frx":15367
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   160
         Left            =   2760
         Picture         =   "MapChip.frx":154D1
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   159
         Left            =   4920
         Picture         =   "MapChip.frx":15642
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   158
         Left            =   4680
         Picture         =   "MapChip.frx":15984
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   157
         Left            =   4440
         Picture         =   "MapChip.frx":15CC6
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   156
         Left            =   4200
         Picture         =   "MapChip.frx":16008
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   155
         Left            =   3960
         Picture         =   "MapChip.frx":1634A
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   154
         Left            =   3720
         Picture         =   "MapChip.frx":1668C
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   153
         Left            =   3480
         Picture         =   "MapChip.frx":169CE
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   152
         Left            =   3240
         Picture         =   "MapChip.frx":16D10
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   151
         Left            =   3000
         Picture         =   "MapChip.frx":17052
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   150
         Left            =   2760
         Picture         =   "MapChip.frx":17130
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   149
         Left            =   4920
         Picture         =   "MapChip.frx":17280
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   148
         Left            =   4680
         Picture         =   "MapChip.frx":175C2
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   147
         Left            =   4440
         Picture         =   "MapChip.frx":17904
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   146
         Left            =   4200
         Picture         =   "MapChip.frx":17C46
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   145
         Left            =   3960
         Picture         =   "MapChip.frx":17F88
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   144
         Left            =   3720
         Picture         =   "MapChip.frx":182CA
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   143
         Left            =   3480
         Picture         =   "MapChip.frx":1860C
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   142
         Left            =   3240
         Picture         =   "MapChip.frx":1894E
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   141
         Left            =   3000
         Picture         =   "MapChip.frx":18C90
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   140
         Left            =   2760
         Picture         =   "MapChip.frx":18D07
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   139
         Left            =   4920
         Picture         =   "MapChip.frx":18DDB
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   138
         Left            =   4680
         Picture         =   "MapChip.frx":1911D
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   137
         Left            =   4440
         Picture         =   "MapChip.frx":1945F
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   136
         Left            =   4200
         Picture         =   "MapChip.frx":197A1
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   135
         Left            =   3960
         Picture         =   "MapChip.frx":19AE3
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   134
         Left            =   3720
         Picture         =   "MapChip.frx":19E25
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   133
         Left            =   3480
         Picture         =   "MapChip.frx":1A167
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   132
         Left            =   3240
         Picture         =   "MapChip.frx":1A4A9
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   131
         Left            =   3000
         Picture         =   "MapChip.frx":1A7EB
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   130
         Left            =   2760
         Picture         =   "MapChip.frx":1AB2D
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   129
         Left            =   4920
         Picture         =   "MapChip.frx":1AE6F
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   128
         Left            =   4680
         Picture         =   "MapChip.frx":1B1B1
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   127
         Left            =   4440
         Picture         =   "MapChip.frx":1B4F3
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   126
         Left            =   4200
         Picture         =   "MapChip.frx":1B835
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   125
         Left            =   3960
         Picture         =   "MapChip.frx":1BB77
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   124
         Left            =   3720
         Picture         =   "MapChip.frx":1BEB9
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   123
         Left            =   3480
         Picture         =   "MapChip.frx":1C1FB
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   122
         Left            =   3240
         Picture         =   "MapChip.frx":1C53D
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   121
         Left            =   3000
         Picture         =   "MapChip.frx":1C87F
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   120
         Left            =   2760
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   119
         Left            =   4920
         Picture         =   "MapChip.frx":1CBC1
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   118
         Left            =   4680
         Picture         =   "MapChip.frx":1D006
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   117
         Left            =   4440
         Picture         =   "MapChip.frx":1D449
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   116
         Left            =   4200
         Picture         =   "MapChip.frx":1D88E
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   115
         Left            =   3960
         Picture         =   "MapChip.frx":1DCCF
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   114
         Left            =   3720
         Picture         =   "MapChip.frx":1E10E
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   113
         Left            =   3480
         Picture         =   "MapChip.frx":1E54C
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   112
         Left            =   3240
         Picture         =   "MapChip.frx":1E990
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   111
         Left            =   3000
         Picture         =   "MapChip.frx":1EDD3
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   110
         Left            =   2760
         Picture         =   "MapChip.frx":1F219
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   109
         Left            =   4920
         Picture         =   "MapChip.frx":1F663
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   108
         Left            =   4680
         Picture         =   "MapChip.frx":1FAB1
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   107
         Left            =   4440
         Picture         =   "MapChip.frx":1FF08
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   106
         Left            =   4200
         Picture         =   "MapChip.frx":2035A
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   105
         Left            =   3960
         Picture         =   "MapChip.frx":2078D
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   104
         Left            =   3720
         Picture         =   "MapChip.frx":20A39
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   103
         Left            =   3480
         Picture         =   "MapChip.frx":20E8F
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   102
         Left            =   3240
         Picture         =   "MapChip.frx":21142
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   101
         Left            =   3000
         Picture         =   "MapChip.frx":21593
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   100
         Left            =   2760
         Picture         =   "MapChip.frx":219E4
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   99
         Left            =   4920
         Picture         =   "MapChip.frx":21E1E
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   98
         Left            =   4680
         Picture         =   "MapChip.frx":21FC0
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   97
         Left            =   4440
         Picture         =   "MapChip.frx":22160
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   96
         Left            =   4200
         Picture         =   "MapChip.frx":2230F
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   95
         Left            =   3960
         Picture         =   "MapChip.frx":224CD
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   94
         Left            =   3720
         Picture         =   "MapChip.frx":2266D
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   93
         Left            =   3480
         Picture         =   "MapChip.frx":227AE
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   92
         Left            =   3240
         Picture         =   "MapChip.frx":22960
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   91
         Left            =   3000
         Picture         =   "MapChip.frx":22DB4
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   90
         Left            =   2760
         Picture         =   "MapChip.frx":2302E
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   89
         Left            =   4920
         Picture         =   "MapChip.frx":232B0
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   88
         Left            =   4680
         Picture         =   "MapChip.frx":23465
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   87
         Left            =   4440
         Picture         =   "MapChip.frx":2361A
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   86
         Left            =   4200
         Picture         =   "MapChip.frx":2395C
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   85
         Left            =   3960
         Picture         =   "MapChip.frx":23C9E
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   84
         Left            =   3720
         Picture         =   "MapChip.frx":23E5B
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   83
         Left            =   3480
         Picture         =   "MapChip.frx":2419D
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   82
         Left            =   3240
         Picture         =   "MapChip.frx":244DF
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   81
         Left            =   3000
         Picture         =   "MapChip.frx":24923
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   80
         Left            =   2760
         Picture         =   "MapChip.frx":24B9E
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   79
         Left            =   4920
         Picture         =   "MapChip.frx":24E1B
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   78
         Left            =   4680
         Picture         =   "MapChip.frx":24FBD
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   77
         Left            =   4440
         Picture         =   "MapChip.frx":25153
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   76
         Left            =   4200
         Picture         =   "MapChip.frx":2525B
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   75
         Left            =   3960
         Picture         =   "MapChip.frx":25355
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   74
         Left            =   3720
         Picture         =   "MapChip.frx":25478
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   73
         Left            =   3480
         Picture         =   "MapChip.frx":257BA
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   72
         Left            =   3240
         Picture         =   "MapChip.frx":25AFC
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   71
         Left            =   3000
         Picture         =   "MapChip.frx":25E3E
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   70
         Left            =   2760
         Picture         =   "MapChip.frx":26180
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   69
         Left            =   4920
         Picture         =   "MapChip.frx":264C2
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   68
         Left            =   4680
         Picture         =   "MapChip.frx":26674
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   67
         Left            =   4440
         Picture         =   "MapChip.frx":267A6
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   66
         Left            =   4200
         Picture         =   "MapChip.frx":26AE8
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   65
         Left            =   3960
         Picture         =   "MapChip.frx":26BD4
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   64
         Left            =   3720
         Picture         =   "MapChip.frx":26CB3
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   63
         Left            =   3480
         Picture         =   "MapChip.frx":26DD3
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   62
         Left            =   3240
         Picture         =   "MapChip.frx":26ED1
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   61
         Left            =   3000
         Picture         =   "MapChip.frx":26FAE
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   60
         Left            =   2760
         Picture         =   "MapChip.frx":27084
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   59
         Left            =   4920
         Picture         =   "MapChip.frx":27161
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   58
         Left            =   4680
         Picture         =   "MapChip.frx":27303
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   57
         Left            =   4440
         Picture         =   "MapChip.frx":274A3
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   56
         Left            =   4200
         Picture         =   "MapChip.frx":277E5
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   55
         Left            =   3960
         Picture         =   "MapChip.frx":27B27
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   54
         Left            =   3720
         Picture         =   "MapChip.frx":27E69
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   53
         Left            =   3480
         Picture         =   "MapChip.frx":281AB
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   52
         Left            =   3240
         Picture         =   "MapChip.frx":284ED
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   51
         Left            =   3000
         Picture         =   "MapChip.frx":285CE
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   50
         Left            =   2760
         Picture         =   "MapChip.frx":28910
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   49
         Left            =   4920
         Picture         =   "MapChip.frx":289EC
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   48
         Left            =   4680
         Picture         =   "MapChip.frx":28B9C
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   47
         Left            =   4440
         Picture         =   "MapChip.frx":28D4C
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   46
         Left            =   4200
         Picture         =   "MapChip.frx":2908E
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   45
         Left            =   3960
         Picture         =   "MapChip.frx":293D0
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   44
         Left            =   3720
         Picture         =   "MapChip.frx":29712
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   43
         Left            =   3480
         Picture         =   "MapChip.frx":29A54
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   42
         Left            =   3240
         Picture         =   "MapChip.frx":29D96
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   41
         Left            =   3000
         Picture         =   "MapChip.frx":2A0D8
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   20
         Left            =   2760
         Picture         =   "MapChip.frx":2A231
         Top             =   960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   39
         Left            =   4920
         Picture         =   "MapChip.frx":2A593
         Top             =   1200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   38
         Left            =   4680
         Picture         =   "MapChip.frx":2A735
         Top             =   1200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   37
         Left            =   4440
         Picture         =   "MapChip.frx":2A8CB
         Top             =   1200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   36
         Left            =   4200
         Picture         =   "MapChip.frx":2AC0D
         Top             =   1200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   35
         Left            =   3960
         Picture         =   "MapChip.frx":2AF4F
         Top             =   1200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   34
         Left            =   3720
         Picture         =   "MapChip.frx":2B291
         Top             =   1200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   33
         Left            =   3480
         Picture         =   "MapChip.frx":2B5D3
         Top             =   1200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   32
         Left            =   3240
         Picture         =   "MapChip.frx":2B915
         Top             =   1200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   31
         Left            =   3000
         Picture         =   "MapChip.frx":2BC57
         Top             =   1200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   30
         Left            =   2760
         Picture         =   "MapChip.frx":2BDD0
         Top             =   1200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   29
         Left            =   4920
         Picture         =   "MapChip.frx":2BF50
         Top             =   960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   28
         Left            =   4680
         Picture         =   "MapChip.frx":2C098
         Top             =   960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   27
         Left            =   4440
         Picture         =   "MapChip.frx":2C1C3
         Top             =   960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   26
         Left            =   4200
         Picture         =   "MapChip.frx":2C505
         Top             =   960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   25
         Left            =   3960
         Picture         =   "MapChip.frx":2C847
         Top             =   960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   24
         Left            =   3720
         Picture         =   "MapChip.frx":2CB89
         Top             =   960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   23
         Left            =   3480
         Picture         =   "MapChip.frx":2CECB
         Top             =   960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   22
         Left            =   3240
         Picture         =   "MapChip.frx":2D20D
         Top             =   960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   21
         Left            =   3000
         Picture         =   "MapChip.frx":2D54F
         Top             =   960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   40
         Left            =   2760
         Picture         =   "MapChip.frx":2D891
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   19
         Left            =   4920
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   18
         Left            =   4680
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   17
         Left            =   4440
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   16
         Left            =   4200
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   15
         Left            =   3960
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   14
         Left            =   3720
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   13
         Left            =   3480
         Picture         =   "MapChip.frx":2D9EC
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   12
         Left            =   3240
         Picture         =   "MapChip.frx":2DDA5
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   11
         Left            =   3000
         Picture         =   "MapChip.frx":2E15D
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   10
         Left            =   2760
         Picture         =   "MapChip.frx":2E4C1
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   9
         Left            =   4920
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   8
         Left            =   4680
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   7
         Left            =   4440
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   6
         Left            =   4200
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   5
         Left            =   3960
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   4
         Left            =   3720
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   3
         Left            =   3480
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   2
         Left            =   3240
         Picture         =   "MapChip.frx":2E823
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   1
         Left            =   3000
         Picture         =   "MapChip.frx":2EB8D
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   0
         Left            =   2760
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   99
         Left            =   2280
         Picture         =   "MapChip.frx":2EEF6
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   98
         Left            =   2040
         Picture         =   "MapChip.frx":2F238
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   97
         Left            =   1800
         Picture         =   "MapChip.frx":2F57A
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   96
         Left            =   1560
         Picture         =   "MapChip.frx":2F8BC
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   95
         Left            =   1320
         Picture         =   "MapChip.frx":2FBFE
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   94
         Left            =   1080
         Picture         =   "MapChip.frx":2FF40
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   93
         Left            =   840
         Picture         =   "MapChip.frx":30282
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   92
         Left            =   600
         Picture         =   "MapChip.frx":305C4
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   91
         Left            =   360
         Picture         =   "MapChip.frx":30906
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   90
         Left            =   120
         Picture         =   "MapChip.frx":30C48
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   89
         Left            =   2280
         Picture         =   "MapChip.frx":30F8A
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   88
         Left            =   2040
         Picture         =   "MapChip.frx":312CC
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   87
         Left            =   1800
         Picture         =   "MapChip.frx":3160E
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   86
         Left            =   1560
         Picture         =   "MapChip.frx":31950
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   85
         Left            =   1320
         Picture         =   "MapChip.frx":31C92
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   84
         Left            =   1080
         Picture         =   "MapChip.frx":31FD4
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   83
         Left            =   840
         Picture         =   "MapChip.frx":32316
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   82
         Left            =   600
         Picture         =   "MapChip.frx":32658
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   81
         Left            =   360
         Picture         =   "MapChip.frx":3299A
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   80
         Left            =   120
         Picture         =   "MapChip.frx":32CDC
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   79
         Left            =   2280
         Picture         =   "MapChip.frx":3301E
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   78
         Left            =   2040
         Picture         =   "MapChip.frx":33360
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   77
         Left            =   1800
         Picture         =   "MapChip.frx":336A2
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   76
         Left            =   1560
         Picture         =   "MapChip.frx":339E4
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   75
         Left            =   1320
         Picture         =   "MapChip.frx":33D26
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   74
         Left            =   1080
         Picture         =   "MapChip.frx":34068
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   73
         Left            =   840
         Picture         =   "MapChip.frx":343AA
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   72
         Left            =   600
         Picture         =   "MapChip.frx":346EC
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   71
         Left            =   360
         Picture         =   "MapChip.frx":34A2E
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   70
         Left            =   120
         Picture         =   "MapChip.frx":34D70
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   69
         Left            =   2280
         Picture         =   "MapChip.frx":350B2
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   68
         Left            =   2040
         Picture         =   "MapChip.frx":353F4
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   67
         Left            =   1800
         Picture         =   "MapChip.frx":35736
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   66
         Left            =   1560
         Picture         =   "MapChip.frx":35A78
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   65
         Left            =   1320
         Picture         =   "MapChip.frx":35DBA
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   64
         Left            =   1080
         Picture         =   "MapChip.frx":360FC
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   63
         Left            =   840
         Picture         =   "MapChip.frx":3643E
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   61
         Left            =   360
         Picture         =   "MapChip.frx":36780
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   60
         Left            =   120
         Picture         =   "MapChip.frx":36AC2
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   59
         Left            =   2280
         Picture         =   "MapChip.frx":36E04
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   58
         Left            =   2040
         Picture         =   "MapChip.frx":37146
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   57
         Left            =   1800
         Picture         =   "MapChip.frx":37488
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   56
         Left            =   1560
         Picture         =   "MapChip.frx":377CA
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   55
         Left            =   1320
         Picture         =   "MapChip.frx":37B0C
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   54
         Left            =   1080
         Picture         =   "MapChip.frx":37E4E
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   53
         Left            =   840
         Picture         =   "MapChip.frx":38190
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   52
         Left            =   600
         Picture         =   "MapChip.frx":384D2
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   51
         Left            =   360
         Picture         =   "MapChip.frx":38814
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   50
         Left            =   120
         Picture         =   "MapChip.frx":38B56
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   49
         Left            =   2280
         Picture         =   "MapChip.frx":38E98
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   48
         Left            =   2040
         Picture         =   "MapChip.frx":391DA
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   47
         Left            =   1800
         Picture         =   "MapChip.frx":3951C
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   46
         Left            =   1560
         Picture         =   "MapChip.frx":3985E
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   45
         Left            =   1320
         Picture         =   "MapChip.frx":39BA0
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   44
         Left            =   1080
         Picture         =   "MapChip.frx":39EE2
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   43
         Left            =   840
         Picture         =   "MapChip.frx":3A224
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   42
         Left            =   600
         Picture         =   "MapChip.frx":3A566
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   41
         Left            =   360
         Picture         =   "MapChip.frx":3A8A8
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   40
         Left            =   120
         Picture         =   "MapChip.frx":3ABEA
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   39
         Left            =   2280
         Picture         =   "MapChip.frx":3AF2C
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   38
         Left            =   2040
         Picture         =   "MapChip.frx":3B26E
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   37
         Left            =   1800
         Picture         =   "MapChip.frx":3B5B0
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   36
         Left            =   1560
         Picture         =   "MapChip.frx":3B8F2
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   35
         Left            =   1320
         Picture         =   "MapChip.frx":3BC34
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   34
         Left            =   1080
         Picture         =   "MapChip.frx":3BF76
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   33
         Left            =   840
         Picture         =   "MapChip.frx":3C2B8
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   32
         Left            =   600
         Picture         =   "MapChip.frx":3C5FA
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   31
         Left            =   360
         Picture         =   "MapChip.frx":3C93C
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   29
         Left            =   2280
         Picture         =   "MapChip.frx":3CC7E
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   28
         Left            =   2040
         Picture         =   "MapChip.frx":3CFC0
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   27
         Left            =   1800
         Picture         =   "MapChip.frx":3D302
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   26
         Left            =   1560
         Picture         =   "MapChip.frx":3D644
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   25
         Left            =   1320
         Picture         =   "MapChip.frx":3D986
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   24
         Left            =   1080
         Picture         =   "MapChip.frx":3DCC8
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   23
         Left            =   840
         Picture         =   "MapChip.frx":3E00A
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   22
         Left            =   600
         Picture         =   "MapChip.frx":3E34C
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   21
         Left            =   360
         Picture         =   "MapChip.frx":3E68E
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   20
         Left            =   120
         Picture         =   "MapChip.frx":3E9D0
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   19
         Left            =   2280
         Picture         =   "MapChip.frx":3ED12
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   18
         Left            =   2040
         Picture         =   "MapChip.frx":3F054
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   17
         Left            =   1800
         Picture         =   "MapChip.frx":3F396
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   16
         Left            =   1560
         Picture         =   "MapChip.frx":3F6D8
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   15
         Left            =   1320
         Picture         =   "MapChip.frx":3FA1A
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   14
         Left            =   1080
         Picture         =   "MapChip.frx":3FD5C
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   13
         Left            =   840
         Picture         =   "MapChip.frx":4009E
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   12
         Left            =   600
         Picture         =   "MapChip.frx":403E0
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   11
         Left            =   360
         Picture         =   "MapChip.frx":40722
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   10
         Left            =   120
         Picture         =   "MapChip.frx":40A64
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   0
         Left            =   120
         Picture         =   "MapChip.frx":40DA6
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   1
         Left            =   360
         Picture         =   "MapChip.frx":410E8
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   2
         Left            =   600
         Picture         =   "MapChip.frx":4142A
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   3
         Left            =   840
         Picture         =   "MapChip.frx":4176C
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   4
         Left            =   1080
         Picture         =   "MapChip.frx":41AAE
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   5
         Left            =   1320
         Picture         =   "MapChip.frx":41DF0
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   6
         Left            =   1560
         Picture         =   "MapChip.frx":42132
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   7
         Left            =   1800
         Picture         =   "MapChip.frx":42474
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   8
         Left            =   2040
         Picture         =   "MapChip.frx":427B6
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   9
         Left            =   2280
         Picture         =   "MapChip.frx":42AF8
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   199
         Left            =   2280
         Picture         =   "MapChip.frx":42E3A
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   198
         Left            =   2040
         Picture         =   "MapChip.frx":4317C
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   197
         Left            =   1800
         Picture         =   "MapChip.frx":434BE
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   196
         Left            =   1560
         Picture         =   "MapChip.frx":43800
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   195
         Left            =   1320
         Picture         =   "MapChip.frx":43B42
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   194
         Left            =   1080
         Picture         =   "MapChip.frx":43E84
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   193
         Left            =   840
         Picture         =   "MapChip.frx":441C6
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   192
         Left            =   600
         Picture         =   "MapChip.frx":44508
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   191
         Left            =   360
         Picture         =   "MapChip.frx":4484A
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   189
         Left            =   2280
         Picture         =   "MapChip.frx":44B8C
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   188
         Left            =   2040
         Picture         =   "MapChip.frx":44ECE
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   187
         Left            =   1800
         Picture         =   "MapChip.frx":45210
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   186
         Left            =   1560
         Picture         =   "MapChip.frx":45552
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   185
         Left            =   1320
         Picture         =   "MapChip.frx":45894
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   184
         Left            =   1080
         Picture         =   "MapChip.frx":45BD6
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   183
         Left            =   840
         Picture         =   "MapChip.frx":45F18
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   182
         Left            =   600
         Picture         =   "MapChip.frx":4625A
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   181
         Left            =   360
         Picture         =   "MapChip.frx":4659C
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   179
         Left            =   2280
         Picture         =   "MapChip.frx":468DE
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   178
         Left            =   2040
         Picture         =   "MapChip.frx":46C20
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   177
         Left            =   1800
         Picture         =   "MapChip.frx":46F62
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   176
         Left            =   1560
         Picture         =   "MapChip.frx":472A4
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   175
         Left            =   1320
         Picture         =   "MapChip.frx":475E6
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   174
         Left            =   1080
         Picture         =   "MapChip.frx":47928
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   173
         Left            =   840
         Picture         =   "MapChip.frx":47C6A
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   172
         Left            =   600
         Picture         =   "MapChip.frx":47FAC
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   171
         Left            =   360
         Picture         =   "MapChip.frx":482EE
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   169
         Left            =   2280
         Picture         =   "MapChip.frx":48630
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   168
         Left            =   2040
         Picture         =   "MapChip.frx":48972
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   167
         Left            =   1800
         Picture         =   "MapChip.frx":48CB4
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   166
         Left            =   1560
         Picture         =   "MapChip.frx":48FF6
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   165
         Left            =   1320
         Picture         =   "MapChip.frx":49338
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   164
         Left            =   1080
         Picture         =   "MapChip.frx":4967A
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   163
         Left            =   840
         Picture         =   "MapChip.frx":499BC
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   162
         Left            =   600
         Picture         =   "MapChip.frx":49CFE
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   161
         Left            =   360
         Picture         =   "MapChip.frx":4A040
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   159
         Left            =   2280
         Picture         =   "MapChip.frx":4A382
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   158
         Left            =   2040
         Picture         =   "MapChip.frx":4A6C4
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   157
         Left            =   1800
         Picture         =   "MapChip.frx":4AA06
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   156
         Left            =   1560
         Picture         =   "MapChip.frx":4AD48
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   155
         Left            =   1320
         Picture         =   "MapChip.frx":4B08A
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   154
         Left            =   1080
         Picture         =   "MapChip.frx":4B3CC
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   153
         Left            =   840
         Picture         =   "MapChip.frx":4B70E
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   152
         Left            =   600
         Picture         =   "MapChip.frx":4BA50
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   151
         Left            =   360
         Picture         =   "MapChip.frx":4BD92
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   149
         Left            =   2280
         Picture         =   "MapChip.frx":4C0D4
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   148
         Left            =   2040
         Picture         =   "MapChip.frx":4C416
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   147
         Left            =   1800
         Picture         =   "MapChip.frx":4C758
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   146
         Left            =   1560
         Picture         =   "MapChip.frx":4CA9A
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   145
         Left            =   1320
         Picture         =   "MapChip.frx":4CDDC
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   144
         Left            =   1080
         Picture         =   "MapChip.frx":4D11E
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   143
         Left            =   840
         Picture         =   "MapChip.frx":4D460
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   142
         Left            =   600
         Picture         =   "MapChip.frx":4D7A2
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   141
         Left            =   360
         Picture         =   "MapChip.frx":4DAE4
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   139
         Left            =   2280
         Picture         =   "MapChip.frx":4DE26
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   138
         Left            =   2040
         Picture         =   "MapChip.frx":4E168
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   137
         Left            =   1800
         Picture         =   "MapChip.frx":4E4AA
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   136
         Left            =   1560
         Picture         =   "MapChip.frx":4E7EC
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   135
         Left            =   1320
         Picture         =   "MapChip.frx":4EB2E
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   134
         Left            =   1080
         Picture         =   "MapChip.frx":4EE70
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   133
         Left            =   840
         Picture         =   "MapChip.frx":4F1B2
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   132
         Left            =   600
         Picture         =   "MapChip.frx":4F4F4
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   131
         Left            =   360
         Picture         =   "MapChip.frx":4F836
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   129
         Left            =   2280
         Picture         =   "MapChip.frx":4FB78
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   128
         Left            =   2040
         Picture         =   "MapChip.frx":4FEBA
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   127
         Left            =   1800
         Picture         =   "MapChip.frx":501FC
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   126
         Left            =   1560
         Picture         =   "MapChip.frx":5053E
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   125
         Left            =   1320
         Picture         =   "MapChip.frx":50880
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   124
         Left            =   1080
         Picture         =   "MapChip.frx":50BC2
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   123
         Left            =   840
         Picture         =   "MapChip.frx":50F04
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   122
         Left            =   600
         Picture         =   "MapChip.frx":51246
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   121
         Left            =   360
         Picture         =   "MapChip.frx":51588
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   119
         Left            =   2280
         Picture         =   "MapChip.frx":518CA
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   118
         Left            =   2040
         Picture         =   "MapChip.frx":51C0C
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   117
         Left            =   1800
         Picture         =   "MapChip.frx":51F4E
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   116
         Left            =   1560
         Picture         =   "MapChip.frx":52290
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   115
         Left            =   1320
         Picture         =   "MapChip.frx":525D2
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   114
         Left            =   1080
         Picture         =   "MapChip.frx":52914
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   113
         Left            =   840
         Picture         =   "MapChip.frx":52C56
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   112
         Left            =   600
         Picture         =   "MapChip.frx":52F98
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   111
         Left            =   360
         Picture         =   "MapChip.frx":532DA
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   109
         Left            =   2280
         Picture         =   "MapChip.frx":5361C
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   108
         Left            =   2040
         Picture         =   "MapChip.frx":5395E
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   107
         Left            =   1800
         Picture         =   "MapChip.frx":53CA0
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   106
         Left            =   1560
         Picture         =   "MapChip.frx":53FE2
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   105
         Left            =   1320
         Picture         =   "MapChip.frx":54324
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   104
         Left            =   1080
         Picture         =   "MapChip.frx":54666
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   103
         Left            =   840
         Picture         =   "MapChip.frx":549A8
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   102
         Left            =   600
         Picture         =   "MapChip.frx":54CEA
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   101
         Left            =   360
         Picture         =   "MapChip.frx":5502C
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   190
         Left            =   120
         Picture         =   "MapChip.frx":5536E
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   180
         Left            =   120
         Picture         =   "MapChip.frx":556B0
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   170
         Left            =   120
         Picture         =   "MapChip.frx":559F2
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   160
         Left            =   120
         Picture         =   "MapChip.frx":55D34
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   150
         Left            =   120
         Picture         =   "MapChip.frx":56076
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   140
         Left            =   120
         Picture         =   "MapChip.frx":563B8
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   130
         Left            =   120
         Picture         =   "MapChip.frx":566FA
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   120
         Left            =   120
         Picture         =   "MapChip.frx":56A3C
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   110
         Left            =   120
         Picture         =   "MapChip.frx":56D7E
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   100
         Left            =   120
         Picture         =   "MapChip.frx":570C0
         Top             =   2760
         Width           =   240
      End
      Begin VB.Shape Shape3 
         BorderColor     =   &H0000FF00&
         BorderWidth     =   2
         FillColor       =   &H0000FF00&
         FillStyle       =   0  '단색
         Height          =   6015
         Index           =   0
         Left            =   120
         Top             =   360
         Width           =   2415
      End
      Begin VB.Shape Shape3 
         BorderColor     =   &H00FF0000&
         BorderWidth     =   2
         FillColor       =   &H00FF0000&
         FillStyle       =   0  '단색
         Height          =   495
         Index           =   2
         Left            =   2760
         Top             =   360
         Width           =   2415
      End
      Begin VB.Shape Shape3 
         BorderColor     =   &H000000FF&
         BorderWidth     =   2
         FillColor       =   &H000000FF&
         FillStyle       =   0  '단색
         Height          =   2415
         Index           =   3
         Left            =   2760
         Top             =   960
         Width           =   2415
      End
      Begin VB.Shape Shape3 
         BorderColor     =   &H00FF00FF&
         BorderWidth     =   2
         FillColor       =   &H00FF00FF&
         FillStyle       =   0  '단색
         Height          =   2895
         Index           =   4
         Left            =   2760
         Top             =   3480
         Width           =   2415
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Layer 1"
         ForeColor       =   &H80000005&
         Height          =   180
         Index           =   1
         Left            =   135
         TabIndex        =   2
         Top             =   135
         Width           =   630
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Layer 2"
         ForeColor       =   &H80000005&
         Height          =   180
         Index           =   3
         Left            =   2775
         TabIndex        =   4
         Top             =   135
         Width           =   630
      End
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub mapchip_Click(Index As Integer)
    SelectedMapChip = Index
    Me.Caption = "맵 칩 " & SelectedMapChip & "/" & SelectedMapOverChip
    Shape1.Top = mapchip(Index).Top
    Shape1.Left = mapchip(Index).Left
End Sub

Private Sub mapoverchip_Click(Index As Integer)
    SelectedMapOverChip = Index
    Me.Caption = "맵 칩 " & SelectedMapChip & "/" & SelectedMapOverChip
    Shape2.Top = mapoverchip(Index).Top
    Shape2.Left = mapoverchip(Index).Left
End Sub

