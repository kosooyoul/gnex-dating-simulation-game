VERSION 5.00
Begin VB.Form Event5 
   BorderStyle     =   1  '단일 고정
   Caption         =   "5 : 배경화면 변경"
   ClientHeight    =   2295
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3975
   Icon            =   "Event5.frx":0000
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2295
   ScaleWidth      =   3975
   StartUpPosition =   3  'Windows 기본값
   Begin VB.Frame Frame5 
      Caption         =   "배경화면 변경"
      Height          =   1455
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   3735
      Begin VB.ComboBox EventBackLayer 
         Height          =   300
         ItemData        =   "Event5.frx":058A
         Left            =   1200
         List            =   "Event5.frx":05B5
         TabIndex        =   4
         Text            =   "Combo9"
         Top             =   480
         Width           =   2055
      End
      Begin VB.ComboBox EventBack 
         Height          =   300
         ItemData        =   "Event5.frx":05E3
         Left            =   1200
         List            =   "Event5.frx":060E
         TabIndex        =   3
         Text            =   "Combo10"
         Top             =   840
         Width           =   2055
      End
      Begin VB.Label Label6 
         Alignment       =   1  '오른쪽 맞춤
         AutoSize        =   -1  'True
         Caption         =   $"Event5.frx":063C
         Height          =   540
         Left            =   360
         TabIndex        =   5
         Top             =   520
         Width           =   720
      End
   End
   Begin VB.CommandButton CANCEL 
      Caption         =   "취소"
      Height          =   375
      Left            =   2640
      TabIndex        =   1
      Top             =   1680
      Width           =   1215
   End
   Begin VB.CommandButton OK 
      Caption         =   "확인"
      Height          =   375
      Left            =   1320
      TabIndex        =   0
      Top             =   1680
      Width           =   1215
   End
End
Attribute VB_Name = "Event5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CANCEL_Click()
    Unload Me
End Sub

