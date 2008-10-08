VERSION 5.00
Begin VB.Form Event0 
   BorderStyle     =   1  '단일 고정
   Caption         =   "0 : 문장 출력"
   ClientHeight    =   1815
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5535
   Icon            =   "Event0.frx":0000
   LinkTopic       =   "Event0"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1815
   ScaleWidth      =   5535
   StartUpPosition =   3  'Windows 기본값
   Begin VB.CommandButton CANCEL 
      Caption         =   "취소"
      Height          =   375
      Left            =   4200
      TabIndex        =   4
      Top             =   1200
      Width           =   1215
   End
   Begin VB.CommandButton OK 
      Caption         =   "확인"
      Height          =   375
      Left            =   2880
      TabIndex        =   0
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Frame Frame1 
      Caption         =   "문장 출력"
      Height          =   975
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   5295
      Begin VB.ComboBox EventString 
         Height          =   300
         ItemData        =   "Event0.frx":058A
         Left            =   1200
         List            =   "Event0.frx":059D
         Style           =   2  '드롭다운 목록
         TabIndex        =   2
         Top             =   360
         Width           =   3855
      End
      Begin VB.Label Label1 
         Caption         =   "표시 문장"
         Height          =   255
         Left            =   240
         TabIndex        =   3
         Top             =   360
         Width           =   855
      End
   End
End
Attribute VB_Name = "Event0"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CANCEL_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    EventString.ListIndex = 0
End Sub

Private Sub OK_Click()
    Dim Cmd As String
    Cmd = EventHead(0) + Evp + Trim(Str(EventString.ListIndex))
    Cmd = Cmd + Eve + Eve + Nts + EventString.List(EventString.ListIndex) + Nte
    AddEvent (Cmd)
    Unload Me
End Sub
