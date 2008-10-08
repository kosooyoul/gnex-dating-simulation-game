VERSION 5.00
Begin VB.Form Event6 
   BorderStyle     =   1  '단일 고정
   Caption         =   "6 : 케릭터 이미지 교체"
   ClientHeight    =   2295
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4215
   Icon            =   "Event6.frx":0000
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2295
   ScaleWidth      =   4215
   StartUpPosition =   3  'Windows 기본값
   Begin VB.Frame Frame6 
      Caption         =   "케릭터 이미지 교체"
      Height          =   1455
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   3975
      Begin VB.ComboBox EventChara 
         Height          =   300
         ItemData        =   "Event6.frx":058A
         Left            =   1560
         List            =   "Event6.frx":05B5
         TabIndex        =   4
         Text            =   "Combo10"
         Top             =   840
         Width           =   1950
      End
      Begin VB.ComboBox EventCharaPos 
         Height          =   300
         ItemData        =   "Event6.frx":05E3
         Left            =   1560
         List            =   "Event6.frx":060E
         TabIndex        =   3
         Text            =   "Combo9"
         Top             =   480
         Width           =   1950
      End
      Begin VB.Label Label9 
         Alignment       =   1  '오른쪽 맞춤
         AutoSize        =   -1  'True
         Caption         =   $"Event6.frx":063C
         Height          =   540
         Left            =   240
         TabIndex        =   5
         Top             =   525
         Width           =   1140
      End
   End
   Begin VB.CommandButton CANCEL 
      Caption         =   "취소"
      Height          =   375
      Left            =   2880
      TabIndex        =   1
      Top             =   1680
      Width           =   1215
   End
   Begin VB.CommandButton OK 
      Caption         =   "확인"
      Height          =   375
      Left            =   1560
      TabIndex        =   0
      Top             =   1680
      Width           =   1215
   End
End
Attribute VB_Name = "Event6"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CANCEL_Click()
    Unload Me
End Sub

