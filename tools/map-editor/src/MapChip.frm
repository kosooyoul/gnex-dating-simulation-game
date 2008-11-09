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
         Picture         =   "MapChip.frx":2CA2
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   226
         Left            =   4200
         Picture         =   "MapChip.frx":2FE4
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   225
         Left            =   3960
         Picture         =   "MapChip.frx":3326
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   224
         Left            =   3720
         Picture         =   "MapChip.frx":3668
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   223
         Left            =   3480
         Picture         =   "MapChip.frx":39AA
         Top             =   5880
         Width           =   255
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   222
         Left            =   3240
         Picture         =   "MapChip.frx":3D2C
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   221
         Left            =   3000
         Picture         =   "MapChip.frx":406E
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   220
         Left            =   2760
         Picture         =   "MapChip.frx":43B0
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   219
         Left            =   4920
         Picture         =   "MapChip.frx":46F2
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   218
         Left            =   4680
         Picture         =   "MapChip.frx":4A9E
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   217
         Left            =   4440
         Picture         =   "MapChip.frx":4DE0
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   216
         Left            =   4200
         Picture         =   "MapChip.frx":5122
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   215
         Left            =   3960
         Picture         =   "MapChip.frx":5464
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   214
         Left            =   3720
         Picture         =   "MapChip.frx":580E
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   213
         Left            =   3480
         Picture         =   "MapChip.frx":5BA6
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   212
         Left            =   3240
         Picture         =   "MapChip.frx":5EE8
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   211
         Left            =   3000
         Picture         =   "MapChip.frx":622A
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   210
         Left            =   2760
         Picture         =   "MapChip.frx":656C
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   209
         Left            =   4920
         Picture         =   "MapChip.frx":68AE
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   208
         Left            =   4680
         Picture         =   "MapChip.frx":6C48
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   207
         Left            =   4440
         Picture         =   "MapChip.frx":6F8A
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   206
         Left            =   4200
         Picture         =   "MapChip.frx":72CC
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   205
         Left            =   3960
         Picture         =   "MapChip.frx":760E
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   204
         Left            =   3720
         Picture         =   "MapChip.frx":79AB
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   203
         Left            =   3480
         Picture         =   "MapChip.frx":7D2F
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   202
         Left            =   3240
         Picture         =   "MapChip.frx":8071
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   201
         Left            =   3000
         Picture         =   "MapChip.frx":83B3
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   200
         Left            =   2760
         Picture         =   "MapChip.frx":86F5
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   249
         Left            =   2280
         Picture         =   "MapChip.frx":8A37
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   248
         Left            =   2040
         Picture         =   "MapChip.frx":8D79
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   247
         Left            =   1800
         Picture         =   "MapChip.frx":90BB
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   246
         Left            =   1560
         Picture         =   "MapChip.frx":93FD
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   245
         Left            =   1320
         Picture         =   "MapChip.frx":973F
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   244
         Left            =   1080
         Picture         =   "MapChip.frx":9A81
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   243
         Left            =   840
         Picture         =   "MapChip.frx":9DC3
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   242
         Left            =   600
         Picture         =   "MapChip.frx":A105
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   241
         Left            =   360
         Picture         =   "MapChip.frx":A447
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   240
         Left            =   120
         Picture         =   "MapChip.frx":A789
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   239
         Left            =   2280
         Picture         =   "MapChip.frx":AACB
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   238
         Left            =   2040
         Picture         =   "MapChip.frx":AE0D
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   237
         Left            =   1800
         Picture         =   "MapChip.frx":B14F
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   236
         Left            =   1560
         Picture         =   "MapChip.frx":B491
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   235
         Left            =   1320
         Picture         =   "MapChip.frx":B7D3
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   234
         Left            =   1080
         Picture         =   "MapChip.frx":BB15
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   233
         Left            =   840
         Picture         =   "MapChip.frx":BE57
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   232
         Left            =   600
         Picture         =   "MapChip.frx":C199
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   231
         Left            =   360
         Picture         =   "MapChip.frx":C4DB
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   230
         Left            =   120
         Picture         =   "MapChip.frx":C81D
         Top             =   5880
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   229
         Left            =   2280
         Picture         =   "MapChip.frx":CB5F
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   228
         Left            =   2040
         Picture         =   "MapChip.frx":CEA1
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   227
         Left            =   1800
         Picture         =   "MapChip.frx":D1E3
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   226
         Left            =   1560
         Picture         =   "MapChip.frx":D525
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   225
         Left            =   1320
         Picture         =   "MapChip.frx":D867
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   224
         Left            =   1080
         Picture         =   "MapChip.frx":DBA9
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   223
         Left            =   840
         Picture         =   "MapChip.frx":DEEB
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   222
         Left            =   600
         Picture         =   "MapChip.frx":E22D
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   221
         Left            =   360
         Picture         =   "MapChip.frx":E56F
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   220
         Left            =   120
         Picture         =   "MapChip.frx":E8B1
         Top             =   5640
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   219
         Left            =   2280
         Picture         =   "MapChip.frx":EBF3
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   218
         Left            =   2040
         Picture         =   "MapChip.frx":EF35
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   217
         Left            =   1800
         Picture         =   "MapChip.frx":F277
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   216
         Left            =   1560
         Picture         =   "MapChip.frx":F5B9
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   215
         Left            =   1320
         Picture         =   "MapChip.frx":F8FB
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   214
         Left            =   1080
         Picture         =   "MapChip.frx":FC3D
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   213
         Left            =   840
         Picture         =   "MapChip.frx":FF7F
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   212
         Left            =   600
         Picture         =   "MapChip.frx":102C1
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   211
         Left            =   360
         Picture         =   "MapChip.frx":10603
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   210
         Left            =   120
         Picture         =   "MapChip.frx":10945
         Top             =   5400
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   209
         Left            =   2280
         Picture         =   "MapChip.frx":10C87
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   208
         Left            =   2040
         Picture         =   "MapChip.frx":10FC9
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   207
         Left            =   1800
         Picture         =   "MapChip.frx":1130B
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   206
         Left            =   1560
         Picture         =   "MapChip.frx":1164D
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   205
         Left            =   1320
         Picture         =   "MapChip.frx":1198F
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   204
         Left            =   1080
         Picture         =   "MapChip.frx":11CD1
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   203
         Left            =   840
         Picture         =   "MapChip.frx":12013
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   202
         Left            =   600
         Picture         =   "MapChip.frx":12355
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   201
         Left            =   360
         Picture         =   "MapChip.frx":12697
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   200
         Left            =   120
         Picture         =   "MapChip.frx":129D9
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   62
         Left            =   600
         Picture         =   "MapChip.frx":12D1B
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   30
         Left            =   120
         Picture         =   "MapChip.frx":1305D
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
         Picture         =   "MapChip.frx":1339F
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   198
         Left            =   4680
         Picture         =   "MapChip.frx":1373D
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   197
         Left            =   4440
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   196
         Left            =   4200
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   195
         Left            =   3960
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   194
         Left            =   3720
         Picture         =   "MapChip.frx":13A7F
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   193
         Left            =   3480
         Picture         =   "MapChip.frx":13E1D
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   192
         Left            =   3240
         Picture         =   "MapChip.frx":141CA
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   191
         Left            =   3000
         Picture         =   "MapChip.frx":14572
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   190
         Left            =   2760
         Picture         =   "MapChip.frx":148B4
         Top             =   5160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   189
         Left            =   4920
         Picture         =   "MapChip.frx":14BF6
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   188
         Left            =   4680
         Picture         =   "MapChip.frx":14F38
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   187
         Left            =   4440
         Picture         =   "MapChip.frx":1527A
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   186
         Left            =   4200
         Picture         =   "MapChip.frx":155BC
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   185
         Left            =   3960
         Picture         =   "MapChip.frx":158FE
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   184
         Left            =   3720
         Picture         =   "MapChip.frx":15C40
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   183
         Left            =   3480
         Picture         =   "MapChip.frx":15F82
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   182
         Left            =   3240
         Picture         =   "MapChip.frx":1633E
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   181
         Left            =   3000
         Picture         =   "MapChip.frx":166FA
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   180
         Left            =   2760
         Picture         =   "MapChip.frx":16A3C
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   179
         Left            =   4920
         Picture         =   "MapChip.frx":16D7E
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   178
         Left            =   4680
         Picture         =   "MapChip.frx":170C0
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   177
         Left            =   4440
         Picture         =   "MapChip.frx":17402
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   176
         Left            =   4200
         Picture         =   "MapChip.frx":17744
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   175
         Left            =   3960
         Picture         =   "MapChip.frx":17A86
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   174
         Left            =   3720
         Picture         =   "MapChip.frx":17DC8
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   173
         Left            =   3480
         Picture         =   "MapChip.frx":1810A
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   172
         Left            =   3240
         Picture         =   "MapChip.frx":1844C
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   171
         Left            =   3000
         Picture         =   "MapChip.frx":1878E
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   170
         Left            =   2760
         Picture         =   "MapChip.frx":18AD0
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   169
         Left            =   4920
         Picture         =   "MapChip.frx":18E12
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   168
         Left            =   4680
         Picture         =   "MapChip.frx":19154
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   167
         Left            =   4440
         Picture         =   "MapChip.frx":19496
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   166
         Left            =   4200
         Picture         =   "MapChip.frx":197D8
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   165
         Left            =   3960
         Picture         =   "MapChip.frx":19B1A
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   164
         Left            =   3720
         Picture         =   "MapChip.frx":19E5C
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   163
         Left            =   3480
         Picture         =   "MapChip.frx":1A19E
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   162
         Left            =   3240
         Picture         =   "MapChip.frx":1A4E0
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   161
         Left            =   3000
         Picture         =   "MapChip.frx":1A822
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   160
         Left            =   2760
         Picture         =   "MapChip.frx":1AB64
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   159
         Left            =   4920
         Picture         =   "MapChip.frx":1AEA6
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   158
         Left            =   4680
         Picture         =   "MapChip.frx":1B1E8
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   157
         Left            =   4440
         Picture         =   "MapChip.frx":1B52A
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   156
         Left            =   4200
         Picture         =   "MapChip.frx":1B86C
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   155
         Left            =   3960
         Picture         =   "MapChip.frx":1BBAE
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   154
         Left            =   3720
         Picture         =   "MapChip.frx":1BEF0
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   153
         Left            =   3480
         Picture         =   "MapChip.frx":1C232
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   152
         Left            =   3240
         Picture         =   "MapChip.frx":1C574
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   151
         Left            =   3000
         Picture         =   "MapChip.frx":1C8B6
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   150
         Left            =   2760
         Picture         =   "MapChip.frx":1CBF8
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   149
         Left            =   4920
         Picture         =   "MapChip.frx":1CF3A
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   148
         Left            =   4680
         Picture         =   "MapChip.frx":1D27C
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   147
         Left            =   4440
         Picture         =   "MapChip.frx":1D5BE
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   146
         Left            =   4200
         Picture         =   "MapChip.frx":1D900
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   145
         Left            =   3960
         Picture         =   "MapChip.frx":1DC42
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   144
         Left            =   3720
         Picture         =   "MapChip.frx":1DF84
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   143
         Left            =   3480
         Picture         =   "MapChip.frx":1E2C6
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   142
         Left            =   3240
         Picture         =   "MapChip.frx":1E608
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   141
         Left            =   3000
         Picture         =   "MapChip.frx":1E94A
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   140
         Left            =   2760
         Picture         =   "MapChip.frx":1EC8C
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   139
         Left            =   4920
         Picture         =   "MapChip.frx":1EFCE
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   138
         Left            =   4680
         Picture         =   "MapChip.frx":1F310
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   137
         Left            =   4440
         Picture         =   "MapChip.frx":1F652
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   136
         Left            =   4200
         Picture         =   "MapChip.frx":1F994
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   135
         Left            =   3960
         Picture         =   "MapChip.frx":1FCD6
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   134
         Left            =   3720
         Picture         =   "MapChip.frx":20018
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   133
         Left            =   3480
         Picture         =   "MapChip.frx":2035A
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   132
         Left            =   3240
         Picture         =   "MapChip.frx":2069C
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   131
         Left            =   3000
         Picture         =   "MapChip.frx":209DE
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   130
         Left            =   2760
         Picture         =   "MapChip.frx":20D20
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   129
         Left            =   4920
         Picture         =   "MapChip.frx":21062
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   128
         Left            =   4680
         Picture         =   "MapChip.frx":213A4
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   127
         Left            =   4440
         Picture         =   "MapChip.frx":216E6
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   126
         Left            =   4200
         Picture         =   "MapChip.frx":21A28
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   125
         Left            =   3960
         Picture         =   "MapChip.frx":21D6A
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   124
         Left            =   3720
         Picture         =   "MapChip.frx":220AC
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   123
         Left            =   3480
         Picture         =   "MapChip.frx":223EE
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   122
         Left            =   3240
         Picture         =   "MapChip.frx":22730
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   121
         Left            =   3000
         Picture         =   "MapChip.frx":22A72
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
         Picture         =   "MapChip.frx":22DB4
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   118
         Left            =   4680
         Picture         =   "MapChip.frx":230F6
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   117
         Left            =   4440
         Picture         =   "MapChip.frx":23438
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   116
         Left            =   4200
         Picture         =   "MapChip.frx":2377A
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   115
         Left            =   3960
         Picture         =   "MapChip.frx":23B4E
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   114
         Left            =   3720
         Picture         =   "MapChip.frx":23F19
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   113
         Left            =   3480
         Picture         =   "MapChip.frx":2425B
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   112
         Left            =   3240
         Picture         =   "MapChip.frx":2459D
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   111
         Left            =   3000
         Picture         =   "MapChip.frx":2494A
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   110
         Left            =   2760
         Picture         =   "MapChip.frx":24D04
         Top             =   3120
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   109
         Left            =   4920
         Picture         =   "MapChip.frx":250AF
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   108
         Left            =   4680
         Picture         =   "MapChip.frx":2544F
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   107
         Left            =   4440
         Picture         =   "MapChip.frx":257D4
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   106
         Left            =   4200
         Picture         =   "MapChip.frx":25B75
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   105
         Left            =   3960
         Picture         =   "MapChip.frx":25EB7
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   104
         Left            =   3720
         Picture         =   "MapChip.frx":261F9
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   103
         Left            =   3480
         Picture         =   "MapChip.frx":2653B
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   102
         Left            =   3240
         Picture         =   "MapChip.frx":2687D
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   101
         Left            =   3000
         Picture         =   "MapChip.frx":26BBF
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   100
         Left            =   2760
         Picture         =   "MapChip.frx":26F01
         Top             =   2880
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   99
         Left            =   4920
         Picture         =   "MapChip.frx":27243
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   98
         Left            =   4680
         Picture         =   "MapChip.frx":275D7
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   97
         Left            =   4440
         Picture         =   "MapChip.frx":2795B
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   96
         Left            =   4200
         Picture         =   "MapChip.frx":27CE8
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   95
         Left            =   3960
         Picture         =   "MapChip.frx":2802A
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   94
         Left            =   3720
         Picture         =   "MapChip.frx":2836C
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   93
         Left            =   3480
         Picture         =   "MapChip.frx":286AE
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   92
         Left            =   3240
         Picture         =   "MapChip.frx":289F0
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   91
         Left            =   3000
         Picture         =   "MapChip.frx":28D32
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   90
         Left            =   2760
         Picture         =   "MapChip.frx":29074
         Top             =   2640
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   89
         Left            =   4920
         Picture         =   "MapChip.frx":293B6
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   88
         Left            =   4680
         Picture         =   "MapChip.frx":29763
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   87
         Left            =   4440
         Picture         =   "MapChip.frx":29B0A
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   86
         Left            =   4200
         Picture         =   "MapChip.frx":29EB1
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   85
         Left            =   3960
         Picture         =   "MapChip.frx":2A1F3
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   84
         Left            =   3720
         Picture         =   "MapChip.frx":2A535
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   83
         Left            =   3480
         Picture         =   "MapChip.frx":2A877
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   82
         Left            =   3240
         Picture         =   "MapChip.frx":2ABB9
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   81
         Left            =   3000
         Picture         =   "MapChip.frx":2AEFB
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   80
         Left            =   2760
         Picture         =   "MapChip.frx":2B23D
         Top             =   2400
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   79
         Left            =   4920
         Picture         =   "MapChip.frx":2B57F
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   78
         Left            =   4680
         Picture         =   "MapChip.frx":2B8C1
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   77
         Left            =   4440
         Picture         =   "MapChip.frx":2BC03
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   76
         Left            =   4200
         Picture         =   "MapChip.frx":2BF45
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   75
         Left            =   3960
         Picture         =   "MapChip.frx":2C287
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   74
         Left            =   3720
         Picture         =   "MapChip.frx":2C5C9
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   73
         Left            =   3480
         Picture         =   "MapChip.frx":2C90B
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   72
         Left            =   3240
         Picture         =   "MapChip.frx":2CC4D
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   71
         Left            =   3000
         Picture         =   "MapChip.frx":2CF8F
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   70
         Left            =   2760
         Picture         =   "MapChip.frx":2D2D1
         Top             =   2160
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   69
         Left            =   4920
         Picture         =   "MapChip.frx":2D613
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   68
         Left            =   4680
         Picture         =   "MapChip.frx":2D955
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   67
         Left            =   4440
         Picture         =   "MapChip.frx":2DC97
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   66
         Left            =   4200
         Picture         =   "MapChip.frx":2DFD9
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   65
         Left            =   3960
         Picture         =   "MapChip.frx":2E31B
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   64
         Left            =   3720
         Picture         =   "MapChip.frx":2E65D
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   63
         Left            =   3480
         Picture         =   "MapChip.frx":2E99F
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   62
         Left            =   3240
         Picture         =   "MapChip.frx":2ECE1
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   61
         Left            =   3000
         Picture         =   "MapChip.frx":2F023
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   60
         Left            =   2760
         Picture         =   "MapChip.frx":2F365
         Top             =   1920
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   59
         Left            =   4920
         Picture         =   "MapChip.frx":2F6A7
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   58
         Left            =   4680
         Picture         =   "MapChip.frx":2F9E9
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   57
         Left            =   4440
         Picture         =   "MapChip.frx":2FD2B
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   56
         Left            =   4200
         Picture         =   "MapChip.frx":3006D
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   55
         Left            =   3960
         Picture         =   "MapChip.frx":303AF
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   54
         Left            =   3720
         Picture         =   "MapChip.frx":306F1
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   53
         Left            =   3480
         Picture         =   "MapChip.frx":30A33
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   52
         Left            =   3240
         Picture         =   "MapChip.frx":30D75
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   51
         Left            =   3000
         Picture         =   "MapChip.frx":310B7
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   50
         Left            =   2760
         Picture         =   "MapChip.frx":313F9
         Top             =   1680
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   49
         Left            =   4920
         Picture         =   "MapChip.frx":3173B
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   48
         Left            =   4680
         Picture         =   "MapChip.frx":31A7D
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   47
         Left            =   4440
         Picture         =   "MapChip.frx":31DBF
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   46
         Left            =   4200
         Picture         =   "MapChip.frx":32101
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   45
         Left            =   3960
         Picture         =   "MapChip.frx":32443
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   44
         Left            =   3720
         Picture         =   "MapChip.frx":32785
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   43
         Left            =   3480
         Picture         =   "MapChip.frx":32AC7
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   42
         Left            =   3240
         Picture         =   "MapChip.frx":32E09
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   41
         Left            =   3000
         Picture         =   "MapChip.frx":3314B
         Top             =   1440
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   20
         Left            =   2760
         Picture         =   "MapChip.frx":3348D
         Top             =   960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   39
         Left            =   4920
         Picture         =   "MapChip.frx":337EF
         Top             =   1200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   38
         Left            =   4680
         Picture         =   "MapChip.frx":33B31
         Top             =   1200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   37
         Left            =   4440
         Picture         =   "MapChip.frx":33E73
         Top             =   1200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   36
         Left            =   4200
         Picture         =   "MapChip.frx":341B5
         Top             =   1200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   35
         Left            =   3960
         Picture         =   "MapChip.frx":344F7
         Top             =   1200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   34
         Left            =   3720
         Picture         =   "MapChip.frx":34839
         Top             =   1200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   33
         Left            =   3480
         Picture         =   "MapChip.frx":34B7B
         Top             =   1200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   32
         Left            =   3240
         Picture         =   "MapChip.frx":34EBD
         Top             =   1200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   31
         Left            =   3000
         Picture         =   "MapChip.frx":351FF
         Top             =   1200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   30
         Left            =   2760
         Picture         =   "MapChip.frx":35541
         Top             =   1200
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   29
         Left            =   4920
         Picture         =   "MapChip.frx":35883
         Top             =   960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   28
         Left            =   4680
         Picture         =   "MapChip.frx":35BC5
         Top             =   960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   27
         Left            =   4440
         Picture         =   "MapChip.frx":35F07
         Top             =   960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   26
         Left            =   4200
         Picture         =   "MapChip.frx":36249
         Top             =   960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   25
         Left            =   3960
         Picture         =   "MapChip.frx":3658B
         Top             =   960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   24
         Left            =   3720
         Picture         =   "MapChip.frx":368CD
         Top             =   960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   23
         Left            =   3480
         Picture         =   "MapChip.frx":36C0F
         Top             =   960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   22
         Left            =   3240
         Picture         =   "MapChip.frx":36F51
         Top             =   960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   21
         Left            =   3000
         Picture         =   "MapChip.frx":37293
         Top             =   960
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   40
         Left            =   2760
         Picture         =   "MapChip.frx":375D5
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
         Picture         =   "MapChip.frx":37917
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   12
         Left            =   3240
         Picture         =   "MapChip.frx":37CD0
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   11
         Left            =   3000
         Picture         =   "MapChip.frx":38088
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   10
         Left            =   2760
         Picture         =   "MapChip.frx":383EC
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
         Picture         =   "MapChip.frx":3874E
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapoverchip 
         Height          =   240
         Index           =   1
         Left            =   3000
         Picture         =   "MapChip.frx":38AB8
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
         Picture         =   "MapChip.frx":38E21
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   98
         Left            =   2040
         Picture         =   "MapChip.frx":39163
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   97
         Left            =   1800
         Picture         =   "MapChip.frx":394A5
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   96
         Left            =   1560
         Picture         =   "MapChip.frx":397E7
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   95
         Left            =   1320
         Picture         =   "MapChip.frx":39B29
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   94
         Left            =   1080
         Picture         =   "MapChip.frx":39E6B
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   93
         Left            =   840
         Picture         =   "MapChip.frx":3A1AD
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   92
         Left            =   600
         Picture         =   "MapChip.frx":3A4EF
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   91
         Left            =   360
         Picture         =   "MapChip.frx":3A831
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   90
         Left            =   120
         Picture         =   "MapChip.frx":3AB73
         Top             =   2520
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   89
         Left            =   2280
         Picture         =   "MapChip.frx":3AEB5
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   88
         Left            =   2040
         Picture         =   "MapChip.frx":3B1F7
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   87
         Left            =   1800
         Picture         =   "MapChip.frx":3B539
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   86
         Left            =   1560
         Picture         =   "MapChip.frx":3B87B
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   85
         Left            =   1320
         Picture         =   "MapChip.frx":3BBBD
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   84
         Left            =   1080
         Picture         =   "MapChip.frx":3BEFF
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   83
         Left            =   840
         Picture         =   "MapChip.frx":3C241
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   82
         Left            =   600
         Picture         =   "MapChip.frx":3C583
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   81
         Left            =   360
         Picture         =   "MapChip.frx":3C8C5
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   80
         Left            =   120
         Picture         =   "MapChip.frx":3CC07
         Top             =   2280
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   79
         Left            =   2280
         Picture         =   "MapChip.frx":3CF49
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   78
         Left            =   2040
         Picture         =   "MapChip.frx":3D28B
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   77
         Left            =   1800
         Picture         =   "MapChip.frx":3D5CD
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   76
         Left            =   1560
         Picture         =   "MapChip.frx":3D90F
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   75
         Left            =   1320
         Picture         =   "MapChip.frx":3DC51
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   74
         Left            =   1080
         Picture         =   "MapChip.frx":3DF93
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   73
         Left            =   840
         Picture         =   "MapChip.frx":3E2D5
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   72
         Left            =   600
         Picture         =   "MapChip.frx":3E617
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   71
         Left            =   360
         Picture         =   "MapChip.frx":3E959
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   70
         Left            =   120
         Picture         =   "MapChip.frx":3EC9B
         Top             =   2040
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   69
         Left            =   2280
         Picture         =   "MapChip.frx":3EFDD
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   68
         Left            =   2040
         Picture         =   "MapChip.frx":3F31F
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   67
         Left            =   1800
         Picture         =   "MapChip.frx":3F661
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   66
         Left            =   1560
         Picture         =   "MapChip.frx":3F9A3
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   65
         Left            =   1320
         Picture         =   "MapChip.frx":3FCE5
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   64
         Left            =   1080
         Picture         =   "MapChip.frx":40027
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   63
         Left            =   840
         Picture         =   "MapChip.frx":40369
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   61
         Left            =   360
         Picture         =   "MapChip.frx":406AB
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   60
         Left            =   120
         Picture         =   "MapChip.frx":409ED
         Top             =   1800
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   59
         Left            =   2280
         Picture         =   "MapChip.frx":40D2F
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   58
         Left            =   2040
         Picture         =   "MapChip.frx":41071
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   57
         Left            =   1800
         Picture         =   "MapChip.frx":413B3
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   56
         Left            =   1560
         Picture         =   "MapChip.frx":416F5
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   55
         Left            =   1320
         Picture         =   "MapChip.frx":41A37
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   54
         Left            =   1080
         Picture         =   "MapChip.frx":41D79
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   53
         Left            =   840
         Picture         =   "MapChip.frx":420BB
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   52
         Left            =   600
         Picture         =   "MapChip.frx":423FD
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   51
         Left            =   360
         Picture         =   "MapChip.frx":4273F
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   50
         Left            =   120
         Picture         =   "MapChip.frx":42A81
         Top             =   1560
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   49
         Left            =   2280
         Picture         =   "MapChip.frx":42DC3
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   48
         Left            =   2040
         Picture         =   "MapChip.frx":43105
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   47
         Left            =   1800
         Picture         =   "MapChip.frx":43447
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   46
         Left            =   1560
         Picture         =   "MapChip.frx":43789
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   45
         Left            =   1320
         Picture         =   "MapChip.frx":43ACB
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   44
         Left            =   1080
         Picture         =   "MapChip.frx":43E0D
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   43
         Left            =   840
         Picture         =   "MapChip.frx":4414F
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   42
         Left            =   600
         Picture         =   "MapChip.frx":44491
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   41
         Left            =   360
         Picture         =   "MapChip.frx":447D3
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   40
         Left            =   120
         Picture         =   "MapChip.frx":44B15
         Top             =   1320
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   39
         Left            =   2280
         Picture         =   "MapChip.frx":44E57
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   38
         Left            =   2040
         Picture         =   "MapChip.frx":45199
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   37
         Left            =   1800
         Picture         =   "MapChip.frx":454DB
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   36
         Left            =   1560
         Picture         =   "MapChip.frx":4581D
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   35
         Left            =   1320
         Picture         =   "MapChip.frx":45B5F
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   34
         Left            =   1080
         Picture         =   "MapChip.frx":45EA1
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   33
         Left            =   840
         Picture         =   "MapChip.frx":461E3
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   32
         Left            =   600
         Picture         =   "MapChip.frx":46525
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   31
         Left            =   360
         Picture         =   "MapChip.frx":46867
         Top             =   1080
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   29
         Left            =   2280
         Picture         =   "MapChip.frx":46BA9
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   28
         Left            =   2040
         Picture         =   "MapChip.frx":46EEB
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   27
         Left            =   1800
         Picture         =   "MapChip.frx":4722D
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   26
         Left            =   1560
         Picture         =   "MapChip.frx":4756F
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   25
         Left            =   1320
         Picture         =   "MapChip.frx":478B1
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   24
         Left            =   1080
         Picture         =   "MapChip.frx":47BF3
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   23
         Left            =   840
         Picture         =   "MapChip.frx":47F35
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   22
         Left            =   600
         Picture         =   "MapChip.frx":48277
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   21
         Left            =   360
         Picture         =   "MapChip.frx":485B9
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   20
         Left            =   120
         Picture         =   "MapChip.frx":488FB
         Top             =   840
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   19
         Left            =   2280
         Picture         =   "MapChip.frx":48C3D
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   18
         Left            =   2040
         Picture         =   "MapChip.frx":48F7F
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   17
         Left            =   1800
         Picture         =   "MapChip.frx":492C1
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   16
         Left            =   1560
         Picture         =   "MapChip.frx":49603
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   15
         Left            =   1320
         Picture         =   "MapChip.frx":49945
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   14
         Left            =   1080
         Picture         =   "MapChip.frx":49C87
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   13
         Left            =   840
         Picture         =   "MapChip.frx":49FC9
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   12
         Left            =   600
         Picture         =   "MapChip.frx":4A30B
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   11
         Left            =   360
         Picture         =   "MapChip.frx":4A64D
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   10
         Left            =   120
         Picture         =   "MapChip.frx":4A98F
         Top             =   600
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   0
         Left            =   120
         Picture         =   "MapChip.frx":4ACD1
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   1
         Left            =   360
         Picture         =   "MapChip.frx":4B013
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   2
         Left            =   600
         Picture         =   "MapChip.frx":4B355
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   3
         Left            =   840
         Picture         =   "MapChip.frx":4B697
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   4
         Left            =   1080
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   5
         Left            =   1320
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   6
         Left            =   1560
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   7
         Left            =   1800
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   8
         Left            =   2040
         Picture         =   "MapChip.frx":4B9D9
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   9
         Left            =   2280
         Picture         =   "MapChip.frx":4BD1B
         Top             =   360
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   199
         Left            =   2280
         Picture         =   "MapChip.frx":4C05D
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   198
         Left            =   2040
         Picture         =   "MapChip.frx":4C39F
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   197
         Left            =   1800
         Picture         =   "MapChip.frx":4C6E1
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   196
         Left            =   1560
         Picture         =   "MapChip.frx":4CA23
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   195
         Left            =   1320
         Picture         =   "MapChip.frx":4CD65
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   194
         Left            =   1080
         Picture         =   "MapChip.frx":4D0A7
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   193
         Left            =   840
         Picture         =   "MapChip.frx":4D3E9
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   192
         Left            =   600
         Picture         =   "MapChip.frx":4D72B
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   191
         Left            =   360
         Picture         =   "MapChip.frx":4DA6D
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   189
         Left            =   2280
         Picture         =   "MapChip.frx":4DDAF
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   188
         Left            =   2040
         Picture         =   "MapChip.frx":4E0F1
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   187
         Left            =   1800
         Picture         =   "MapChip.frx":4E433
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   186
         Left            =   1560
         Picture         =   "MapChip.frx":4E775
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   185
         Left            =   1320
         Picture         =   "MapChip.frx":4EAB7
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   184
         Left            =   1080
         Picture         =   "MapChip.frx":4EDF9
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   183
         Left            =   840
         Picture         =   "MapChip.frx":4F13B
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   182
         Left            =   600
         Picture         =   "MapChip.frx":4F47D
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   181
         Left            =   360
         Picture         =   "MapChip.frx":4F7BF
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   179
         Left            =   2280
         Picture         =   "MapChip.frx":4FB01
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   178
         Left            =   2040
         Picture         =   "MapChip.frx":4FE43
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   177
         Left            =   1800
         Picture         =   "MapChip.frx":50185
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   176
         Left            =   1560
         Picture         =   "MapChip.frx":504C7
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   175
         Left            =   1320
         Picture         =   "MapChip.frx":50809
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   174
         Left            =   1080
         Picture         =   "MapChip.frx":50B4B
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   173
         Left            =   840
         Picture         =   "MapChip.frx":50E8D
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   172
         Left            =   600
         Picture         =   "MapChip.frx":511CF
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   171
         Left            =   360
         Picture         =   "MapChip.frx":51511
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   169
         Left            =   2280
         Picture         =   "MapChip.frx":51853
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   168
         Left            =   2040
         Picture         =   "MapChip.frx":51B95
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   167
         Left            =   1800
         Picture         =   "MapChip.frx":51ED7
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   166
         Left            =   1560
         Picture         =   "MapChip.frx":52219
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   165
         Left            =   1320
         Picture         =   "MapChip.frx":5255B
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   164
         Left            =   1080
         Picture         =   "MapChip.frx":5289D
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   163
         Left            =   840
         Picture         =   "MapChip.frx":52BDF
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   162
         Left            =   600
         Picture         =   "MapChip.frx":52F21
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   161
         Left            =   360
         Picture         =   "MapChip.frx":53263
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   159
         Left            =   2280
         Picture         =   "MapChip.frx":535A5
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   158
         Left            =   2040
         Picture         =   "MapChip.frx":538E7
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   157
         Left            =   1800
         Picture         =   "MapChip.frx":53C29
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   156
         Left            =   1560
         Picture         =   "MapChip.frx":53F6B
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   155
         Left            =   1320
         Picture         =   "MapChip.frx":542AD
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   154
         Left            =   1080
         Picture         =   "MapChip.frx":545EF
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   153
         Left            =   840
         Picture         =   "MapChip.frx":54931
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   152
         Left            =   600
         Picture         =   "MapChip.frx":54C73
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   151
         Left            =   360
         Picture         =   "MapChip.frx":54FB5
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   149
         Left            =   2280
         Picture         =   "MapChip.frx":552F7
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   148
         Left            =   2040
         Picture         =   "MapChip.frx":55639
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   147
         Left            =   1800
         Picture         =   "MapChip.frx":5597B
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   146
         Left            =   1560
         Picture         =   "MapChip.frx":55CBD
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   145
         Left            =   1320
         Picture         =   "MapChip.frx":55FFF
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   144
         Left            =   1080
         Picture         =   "MapChip.frx":56341
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   143
         Left            =   840
         Picture         =   "MapChip.frx":56683
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   142
         Left            =   600
         Picture         =   "MapChip.frx":569C5
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   141
         Left            =   360
         Picture         =   "MapChip.frx":56D07
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   139
         Left            =   2280
         Picture         =   "MapChip.frx":57049
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   138
         Left            =   2040
         Picture         =   "MapChip.frx":5738B
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   137
         Left            =   1800
         Picture         =   "MapChip.frx":576CD
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   136
         Left            =   1560
         Picture         =   "MapChip.frx":57A0F
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   135
         Left            =   1320
         Picture         =   "MapChip.frx":57D51
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   134
         Left            =   1080
         Picture         =   "MapChip.frx":58093
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   133
         Left            =   840
         Picture         =   "MapChip.frx":583D5
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   132
         Left            =   600
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   131
         Left            =   360
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   129
         Left            =   2280
         Picture         =   "MapChip.frx":58717
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   128
         Left            =   2040
         Picture         =   "MapChip.frx":58A59
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   127
         Left            =   1800
         Picture         =   "MapChip.frx":58D9B
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   126
         Left            =   1560
         Picture         =   "MapChip.frx":590DD
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   125
         Left            =   1320
         Picture         =   "MapChip.frx":5941F
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   124
         Left            =   1080
         Picture         =   "MapChip.frx":59761
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   123
         Left            =   840
         Picture         =   "MapChip.frx":59AA3
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   122
         Left            =   600
         Picture         =   "MapChip.frx":59DE5
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   121
         Left            =   360
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   119
         Left            =   2280
         Picture         =   "MapChip.frx":5A127
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   118
         Left            =   2040
         Picture         =   "MapChip.frx":5A469
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   117
         Left            =   1800
         Picture         =   "MapChip.frx":5A7AB
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   116
         Left            =   1560
         Picture         =   "MapChip.frx":5AAED
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   115
         Left            =   1320
         Picture         =   "MapChip.frx":5AE2F
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   114
         Left            =   1080
         Picture         =   "MapChip.frx":5B171
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   113
         Left            =   840
         Picture         =   "MapChip.frx":5B4B3
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   112
         Left            =   600
         Picture         =   "MapChip.frx":5B7F5
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   111
         Left            =   360
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   109
         Left            =   2280
         Picture         =   "MapChip.frx":5BB37
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   108
         Left            =   2040
         Picture         =   "MapChip.frx":5BE79
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   107
         Left            =   1800
         Picture         =   "MapChip.frx":5C1BB
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   106
         Left            =   1560
         Picture         =   "MapChip.frx":5C4FD
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   105
         Left            =   1320
         Picture         =   "MapChip.frx":5C83F
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   104
         Left            =   1080
         Picture         =   "MapChip.frx":5CB81
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   103
         Left            =   840
         Picture         =   "MapChip.frx":5CEC3
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   102
         Left            =   600
         Picture         =   "MapChip.frx":5D205
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   101
         Left            =   360
         Top             =   2760
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   190
         Left            =   120
         Picture         =   "MapChip.frx":5D547
         Top             =   4920
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   180
         Left            =   120
         Picture         =   "MapChip.frx":5D889
         Top             =   4680
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   170
         Left            =   120
         Picture         =   "MapChip.frx":5DBCB
         Top             =   4440
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   160
         Left            =   120
         Top             =   4200
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   150
         Left            =   120
         Top             =   3960
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   140
         Left            =   120
         Top             =   3720
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   130
         Left            =   120
         Top             =   3480
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   120
         Left            =   120
         Top             =   3240
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   110
         Left            =   120
         Top             =   3000
         Width           =   240
      End
      Begin VB.Image mapchip 
         Height          =   240
         Index           =   100
         Left            =   120
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

