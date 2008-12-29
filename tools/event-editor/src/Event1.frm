VERSION 5.00
Begin VB.Form Event1 
   BorderStyle     =   1  '단일 고정
   Caption         =   "1 : 선택지 표시"
   ClientHeight    =   3495
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5535
   Icon            =   "Event1.frx":0000
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3495
   ScaleWidth      =   5535
   StartUpPosition =   1  '소유자 가운데
   Begin VB.Frame Frame3 
      Caption         =   "선택지 표시"
      Height          =   2655
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   5295
      Begin VB.ComboBox EventSelect 
         Height          =   300
         Index           =   0
         ItemData        =   "Event1.frx":058A
         Left            =   1200
         List            =   "Event1.frx":05A0
         Style           =   2  '드롭다운 목록
         TabIndex        =   7
         Top             =   960
         Width           =   3855
      End
      Begin VB.ComboBox EventSelectValue 
         Height          =   300
         ItemData        =   "Event1.frx":05D6
         Left            =   3120
         List            =   "Event1.frx":0601
         Style           =   2  '드롭다운 목록
         TabIndex        =   6
         Top             =   480
         Width           =   1935
      End
      Begin VB.ComboBox EventSelect 
         Enabled         =   0   'False
         Height          =   300
         Index           =   1
         ItemData        =   "Event1.frx":062F
         Left            =   1200
         List            =   "Event1.frx":0645
         Style           =   2  '드롭다운 목록
         TabIndex        =   5
         Top             =   1320
         Width           =   3855
      End
      Begin VB.ComboBox EventSelect 
         Enabled         =   0   'False
         Height          =   300
         Index           =   2
         ItemData        =   "Event1.frx":067B
         Left            =   1200
         List            =   "Event1.frx":0691
         Style           =   2  '드롭다운 목록
         TabIndex        =   4
         Top             =   1680
         Width           =   3855
      End
      Begin VB.ComboBox EventSelect 
         Enabled         =   0   'False
         Height          =   300
         Index           =   3
         ItemData        =   "Event1.frx":06C7
         Left            =   1200
         List            =   "Event1.frx":06DD
         Style           =   2  '드롭다운 목록
         TabIndex        =   3
         Top             =   2040
         Width           =   3855
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   $"Event1.frx":0713
         Height          =   1260
         Left            =   285
         TabIndex        =   9
         Top             =   1005
         Width           =   810
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "선택결과 저장 변수"
         Height          =   180
         Left            =   1440
         TabIndex        =   8
         Top             =   520
         Width           =   1560
      End
   End
   Begin VB.CommandButton CANCEL 
      Caption         =   "취소"
      Height          =   375
      Left            =   4200
      TabIndex        =   1
      Top             =   2880
      Width           =   1215
   End
   Begin VB.CommandButton OK 
      Caption         =   "확인"
      Height          =   375
      Left            =   2880
      TabIndex        =   0
      Top             =   2880
      Width           =   1215
   End
End
Attribute VB_Name = "Event1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private SelectCount As Integer

Private Sub CANCEL_Click()
    Unload Me
End Sub

Private Sub EventSelect_Click(Index As Integer)
    Dim i As Integer
    
    If EventSelect(Index).ListIndex > 0 Then
        If Index < 3 Then
            EventSelect(Index + 1).Enabled = True
        End If
    Else
        For i = Index + 1 To 3
            EventSelect(i).Enabled = False
            EventSelect(i).ListIndex = 0
        Next i
    End If
End Sub

Private Sub Form_Load()
    Dim filenumber As Integer '파일번호
    Dim filename As String '파일이름
    Dim ftemp As String '파일내용
    Dim i As Integer
        AlwaysOnTop Me, True
    EventSelectValue.ListIndex = 0
    For i = 0 To 3
        On Error GoTo Err:
        
        EventSelect(i).Clear
        
        filename = App.Path & "\select.txt"
        filenumber = FreeFile '사용가능한 파일번호를 구하고
        '파일을 Input 모드(읽기 전용)로 연다.
        Open filename For Input As filenumber
    
        Do Until EOF(filenumber)
            '줄단위로 파일 끝가지 ftemp 라는 변수로 읽어 들인다.
            Line Input #filenumber, ftemp
            If Trim(ftemp) <> "" Then EventSelect(i).AddItem ftemp
        Loop
    
        Close filenumber '파일을 닫는다.
        
        EventSelect(i).ListIndex = 0
    Next i
    
Err:
End Sub

'(int Value, int MsgCount, int Select1, int Select2, int Select3, int Select4)
Private Sub OK_Click()
    Dim Cmd As String
    Dim Cnt As Integer
    Dim i As Integer
    
    Cmd = EventHead(1) + Evp + Trim(Str(EventSelectValue.ListIndex))
    
    Cnt = 0
    For i = 0 To 3
        If EventSelect(i).ListIndex > 0 Then
            Cnt = Cnt + 1
        End If
    Next i
        
    Cmd = Cmd + Evp + Trim(Str(Cnt))
    
    For i = 0 To 3
        Cmd = Cmd + Evp + Trim(Str(EventSelect(i).ListIndex - 1))
    Next i
    
    Cmd = Cmd + Eve + Nts
    
    Cmd = Cmd + "V[" + Trim(Str(EventSelectValue.ListIndex)) + "] = "
    For i = 0 To 3
        If EventSelect(i).ListIndex > 0 Then
            Cmd = Cmd + "[" + EventSelect(i).List(EventSelect(i).ListIndex) + "]"
        End If
    Next i
    
    Cmd = Cmd + Nte
    
    AddEvent (Cmd)
    Unload Me
End Sub
