VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   1  '단일 고정
   Caption         =   "Form2"
   ClientHeight    =   9480
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   10815
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9480
   ScaleWidth      =   10815
   StartUpPosition =   3  'Windows 기본값
   Begin VB.Image Image1 
      Height          =   2205
      Index           =   4
      Left            =   1440
      Picture         =   "SelChr.frx":0000
      Top             =   120
      Width           =   1290
   End
   Begin VB.Image Image1 
      Height          =   2205
      Index           =   3
      Left            =   120
      Picture         =   "SelChr.frx":958E
      Top             =   120
      Width           =   1290
   End
   Begin VB.Image Image1 
      Height          =   2205
      Index           =   34
      Left            =   5400
      Picture         =   "SelChr.frx":12B1C
      Top             =   6960
      Width           =   1290
   End
   Begin VB.Image Image1 
      Height          =   2205
      Index           =   33
      Left            =   4080
      Picture         =   "SelChr.frx":1C0AA
      Top             =   6960
      Width           =   1290
   End
   Begin VB.Image Image1 
      Height          =   2205
      Index           =   32
      Left            =   2760
      Picture         =   "SelChr.frx":25638
      Top             =   6960
      Width           =   1290
   End
   Begin VB.Image Image1 
      Height          =   2205
      Index           =   31
      Left            =   1440
      Picture         =   "SelChr.frx":2EBC6
      Top             =   6960
      Width           =   1290
   End
   Begin VB.Image Image1 
      Height          =   2205
      Index           =   30
      Left            =   120
      Picture         =   "SelChr.frx":38154
      Top             =   6960
      Width           =   1290
   End
   Begin VB.Image Image1 
      Height          =   2205
      Index           =   20
      Left            =   120
      Picture         =   "SelChr.frx":416E2
      Top             =   4680
      Width           =   1290
   End
   Begin VB.Image Image1 
      Height          =   2205
      Index           =   10
      Left            =   120
      Picture         =   "SelChr.frx":4AC70
      Top             =   2400
      Width           =   1290
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    AlwaysOnTop Me, True
End Sub

Private Sub Image1_Click(Index As Integer)
    Event6.EventChara.Text = Index
    Unload Me
End Sub
