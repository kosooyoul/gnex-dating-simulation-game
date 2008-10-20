VERSION 5.00
Begin VB.Form Event2 
   BorderStyle     =   1  '단일 고정
   Caption         =   "2 : 대화자 이름 설정"
   ClientHeight    =   2295
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5535
   Icon            =   "Event2.frx":0000
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2295
   ScaleWidth      =   5535
   StartUpPosition =   1  '소유자 가운데
   Begin VB.Frame Frame2 
      Caption         =   "대화자 이름 설정"
      Height          =   1455
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   5295
      Begin VB.Frame Frame1 
         Caption         =   "표시 위치"
         Height          =   975
         Left            =   3600
         TabIndex        =   6
         Top             =   240
         Width           =   1455
         Begin VB.OptionButton EventAlignLeft 
            Caption         =   "좌측"
            Height          =   255
            Left            =   240
            TabIndex        =   8
            Top             =   240
            Value           =   -1  'True
            Width           =   930
         End
         Begin VB.OptionButton EventAlignRight 
            Caption         =   "우측"
            Height          =   255
            Left            =   240
            TabIndex        =   7
            Top             =   600
            Width           =   930
         End
      End
      Begin VB.ComboBox EventName 
         Height          =   300
         ItemData        =   "Event2.frx":058A
         Left            =   960
         List            =   "Event2.frx":059D
         Style           =   2  '드롭다운 목록
         TabIndex        =   4
         Top             =   360
         Width           =   2295
      End
      Begin VB.CheckBox EventNoName 
         Caption         =   "대화명 없음"
         Height          =   255
         Left            =   960
         TabIndex        =   3
         Top             =   720
         Width           =   1695
      End
      Begin VB.Label Label1 
         Caption         =   "대화명"
         Height          =   255
         Left            =   240
         TabIndex        =   5
         Top             =   400
         Width           =   1215
      End
   End
   Begin VB.CommandButton CANCEL 
      Caption         =   "취소"
      Height          =   375
      Left            =   4200
      TabIndex        =   1
      Top             =   1680
      Width           =   1215
   End
   Begin VB.CommandButton OK 
      Caption         =   "확인"
      Height          =   375
      Left            =   2880
      TabIndex        =   0
      Top             =   1680
      Width           =   1215
   End
End
Attribute VB_Name = "Event2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub CANCEL_Click()
    Unload Me
End Sub

Private Sub EventNoName_Click()
    If EventNoName.Value = Checked Then
        EventName.ListIndex = -1
        EventName.Enabled = False
        EventName.BackColor = &H8000000F
    Else
        EventName.ListIndex = 0
        EventName.Enabled = True
        EventName.BackColor = &H80000005
    End If
End Sub

Private Sub Form_Load()
    Dim filenumber As Integer '파일번호
    Dim filename As String '파일이름
    Dim ftemp As String '파일내용
    On Error GoTo Err:
    
    EventName.Clear
    
    filename = App.Path & "\name.txt"
    filenumber = FreeFile '사용가능한 파일번호를 구하고
    '파일을 Input 모드(읽기 전용)로 연다.
    Open filename For Input As filenumber

    Do Until EOF(filenumber)
        '줄단위로 파일 끝가지 ftemp 라는 변수로 읽어 들인다.
        Line Input #filenumber, ftemp
        If Trim(ftemp) <> "" Then EventName.AddItem ftemp
    Loop

    Close filenumber '파일을 닫는다.
    
    EventName.ListIndex = 0
    
Err:
    
End Sub

'(int NameNumber, int Position)
Private Sub OK_Click()
    Dim Cmd As String
    Dim Temp As String
    
    Cmd = EventHead(2) + Evp + Trim(Str(EventName.ListIndex)) + Evp
    
    If EventAlignLeft.Value = True Then
        Cmd = Cmd + "0"
        Temp = "[좌측]"
    Else
        Cmd = Cmd + "1"
        Temp = "[우측]"
    End If
    
    Cmd = Cmd + Eve + Eve + Nts
    
    If EventName.ListIndex = -1 Then
        Cmd = Cmd + "[이름표시안함]"
    Else
        Cmd = Cmd + "[" + EventName.List(EventName.ListIndex) + "]-" + Temp
    End If
    Cmd = Cmd + Nte
    
    
    
    AddEvent (Cmd)
    Unload Me
End Sub
