VERSION 5.00
Begin VB.Form Event3 
   BorderStyle     =   1  '단일 고정
   Caption         =   "3-4 : 변수값 일치 여부에 따라 다른 이벤트로 이동"
   ClientHeight    =   2535
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5535
   Icon            =   "Event3.frx":0000
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2535
   ScaleWidth      =   5535
   StartUpPosition =   1  '소유자 가운데
   Begin VB.Frame Frame4 
      Caption         =   "변수값 일치 여부에 따라 다른 이벤트로 이동"
      Height          =   1695
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   5295
      Begin VB.Frame Frame1 
         Caption         =   "조건"
         Height          =   1095
         Left            =   3240
         TabIndex        =   7
         Top             =   360
         Width           =   1815
         Begin VB.OptionButton EventEqual 
            Caption         =   "다른 경우"
            Height          =   180
            Left            =   240
            TabIndex        =   9
            Top             =   360
            Value           =   -1  'True
            Width           =   1215
         End
         Begin VB.OptionButton EventNoEqual 
            Caption         =   "같은 경우"
            Height          =   180
            Left            =   240
            TabIndex        =   8
            Top             =   720
            Width           =   1215
         End
      End
      Begin VB.ComboBox EventEqualValue1 
         Height          =   300
         ItemData        =   "Event3.frx":058A
         Left            =   1440
         List            =   "Event3.frx":05B5
         Style           =   2  '드롭다운 목록
         TabIndex        =   5
         Top             =   440
         Width           =   1575
      End
      Begin VB.TextBox EventEqualValue2 
         Height          =   270
         Left            =   1440
         TabIndex        =   4
         Text            =   "0"
         Top             =   840
         Width           =   1575
      End
      Begin VB.TextBox EventNextCount 
         Height          =   270
         Left            =   1440
         TabIndex        =   3
         Text            =   "0"
         Top             =   1200
         Width           =   1575
      End
      Begin VB.Label Label4 
         Alignment       =   1  '오른쪽 맞춤
         AutoSize        =   -1  'True
         Caption         =   $"Event3.frx":05E3
         Height          =   900
         Left            =   360
         TabIndex        =   6
         Top             =   495
         Width           =   960
      End
   End
   Begin VB.CommandButton CANCEL 
      Caption         =   "취소"
      Height          =   375
      Left            =   4200
      TabIndex        =   1
      Top             =   1920
      Width           =   1215
   End
   Begin VB.CommandButton OK 
      Caption         =   "확인"
      Height          =   375
      Left            =   2880
      TabIndex        =   0
      Top             =   1920
      Width           =   1215
   End
End
Attribute VB_Name = "Event3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CANCEL_Click()
    Unload Me
End Sub

Private Sub EventEqualValue2_GotFocus()
    EventEqualValue2.SelStart = 0
    EventEqualValue2.SelLength = Len(EventEqualValue2.Text)
End Sub

Private Sub EventEqualValue2_LostFocus()
    EventEqualValue2.Text = Val(EventEqualValue2.Text)
End Sub

Private Sub EventNextCount_GotFocus()
    EventNextCount.SelStart = 0
    EventNextCount.SelLength = Len(EventNextCount.Text)
End Sub

Private Sub EventNextCount_LostFocus()
    EventNextCount.Text = Val(EventNextCount.Text)
End Sub

Private Sub Form_Load()
    AlwaysOnTop Me, True
    EventEqualValue1.ListIndex = 0
End Sub

'3 > IfEqual(int Value1, int Value2, int ElseCount)
'4 > ElseEqual(int Value1, int Value2, int IfCount)
Private Sub OK_Click()
    Dim Cmd As String
    Dim Temp As String
    
    If EventEqual.Value = True Then
        Cmd = EventHead(3)
        Temp = "!="
    Else
        Cmd = EventHead(4)
        Temp = "=="
    End If
    
    Cmd = Cmd + Evp + Trim(Str(EventEqualValue1.ListIndex))
    Cmd = Cmd + Evp + Trim(EventEqualValue2.Text)
    Cmd = Cmd + Evp + Trim(EventNextCount.Text)
    
    Cmd = Cmd + Eve + Eve + Nts
    
    Cmd = Cmd + "IF(V[" + Trim(Str(EventEqualValue1.ListIndex)) + "]" + Temp
    Cmd = Cmd + Trim(EventEqualValue2.Text) + ") GOTO(CURRENT+" + Trim(EventNextCount.Text) + ")"
    
    Cmd = Cmd + Nte
    
    AddEvent (Cmd)
    Unload Me
End Sub
