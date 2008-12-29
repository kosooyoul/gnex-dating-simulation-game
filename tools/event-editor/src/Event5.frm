VERSION 5.00
Begin VB.Form Event5 
   BorderStyle     =   1  '단일 고정
   Caption         =   "5 : 배경화면 변경"
   ClientHeight    =   2670
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3975
   Icon            =   "Event5.frx":0000
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2670
   ScaleWidth      =   3975
   StartUpPosition =   1  '소유자 가운데
   Begin VB.Frame Frame5 
      Caption         =   "배경화면 변경"
      Height          =   1815
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   3735
      Begin VB.ComboBox EffectList 
         Height          =   300
         ItemData        =   "Event5.frx":058A
         Left            =   1200
         List            =   "Event5.frx":0597
         Style           =   2  '드롭다운 목록
         TabIndex        =   6
         Top             =   1200
         Width           =   2055
      End
      Begin VB.ComboBox EventBackLayer 
         Height          =   300
         ItemData        =   "Event5.frx":05C7
         Left            =   1200
         List            =   "Event5.frx":05D4
         Style           =   2  '드롭다운 목록
         TabIndex        =   4
         Top             =   480
         Width           =   2055
      End
      Begin VB.ComboBox EventBack 
         Height          =   300
         ItemData        =   "Event5.frx":05E1
         Left            =   1200
         List            =   "Event5.frx":060C
         Style           =   2  '드롭다운 목록
         TabIndex        =   3
         Top             =   840
         Width           =   2055
      End
      Begin VB.Label Label6 
         Alignment       =   1  '오른쪽 맞춤
         AutoSize        =   -1  'True
         Caption         =   $"Event5.frx":063A
         Height          =   900
         Left            =   360
         TabIndex        =   5
         Top             =   525
         Width           =   720
      End
   End
   Begin VB.CommandButton CANCEL 
      Caption         =   "취소"
      Height          =   375
      Left            =   2640
      TabIndex        =   1
      Top             =   2040
      Width           =   1215
   End
   Begin VB.CommandButton OK 
      Caption         =   "확인"
      Height          =   375
      Left            =   1320
      TabIndex        =   0
      Top             =   2040
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

Private Sub Form_Load()
    AlwaysOnTop Me, True
    EventBackLayer.ListIndex = 0
    EventBack.ListIndex = 0
    EffectList.ListIndex = 0
End Sub

Private Sub OK_Click()
    Dim Cmd As String
    Cmd = EventHead(5) + Evp + Trim(Str(EventBackLayer.ListIndex))
    Cmd = Cmd + Evp + Trim(Str(EventBack.ListIndex))
    Cmd = Cmd + Evp + Trim(Str(EffectList.ListIndex))
    Cmd = Cmd + Eve + Eve + Nts + EffectList.List(EffectList.ListIndex) + Nte
    AddEvent (Cmd)
    Unload Me
End Sub
