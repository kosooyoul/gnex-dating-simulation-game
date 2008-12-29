VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "이벤트 편집기 1"
   ClientHeight    =   10590
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   11235
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   10590
   ScaleWidth      =   11235
   StartUpPosition =   3  'Windows 기본값
   Begin VB.TextBox ClipMacro 
      Height          =   270
      Index           =   8
      Left            =   3000
      TabIndex        =   17
      Top             =   9600
      Width           =   8055
   End
   Begin VB.TextBox ClipMacro 
      Height          =   270
      Index           =   7
      Left            =   3000
      TabIndex        =   16
      Top             =   9240
      Width           =   8055
   End
   Begin VB.TextBox ClipMacro 
      Height          =   270
      Index           =   6
      Left            =   3000
      TabIndex        =   15
      Top             =   8880
      Width           =   8055
   End
   Begin VB.TextBox ClipMacro 
      Height          =   270
      Index           =   5
      Left            =   3000
      TabIndex        =   14
      Top             =   8520
      Width           =   8055
   End
   Begin VB.TextBox ClipMacro 
      Height          =   270
      Index           =   4
      Left            =   3000
      TabIndex        =   13
      Top             =   8160
      Width           =   8055
   End
   Begin VB.TextBox ClipMacro 
      Height          =   270
      Index           =   3
      Left            =   3000
      TabIndex        =   12
      Top             =   7800
      Width           =   8055
   End
   Begin VB.TextBox ClipMacro 
      Height          =   270
      Index           =   2
      Left            =   3000
      TabIndex        =   11
      Top             =   7440
      Width           =   8055
   End
   Begin VB.TextBox ClipMacro 
      Height          =   270
      Index           =   1
      Left            =   3000
      TabIndex        =   10
      Top             =   7080
      Width           =   8055
   End
   Begin VB.TextBox ClipMacro 
      Height          =   270
      Index           =   0
      Left            =   3000
      TabIndex        =   9
      Top             =   6720
      Width           =   8055
   End
   Begin VB.CommandButton GetCnt 
      Caption         =   "CNT"
      Height          =   300
      Left            =   3120
      TabIndex        =   7
      Top             =   6120
      Width           =   735
   End
   Begin VB.CommandButton PasteEvent 
      Caption         =   "이벤트붙여넣기"
      Height          =   300
      Left            =   5640
      TabIndex        =   6
      Top             =   6120
      Width           =   1575
   End
   Begin VB.CommandButton CopyEvent 
      Caption         =   "이벤트복사"
      Height          =   300
      Left            =   4080
      TabIndex        =   5
      Top             =   6120
      Width           =   1575
   End
   Begin VB.CommandButton Command3 
      Caption         =   "삭제"
      Height          =   300
      Left            =   9840
      TabIndex        =   4
      Top             =   6120
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "아래로"
      Height          =   300
      Left            =   8640
      TabIndex        =   3
      Top             =   6120
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "위로"
      Height          =   300
      Left            =   7440
      TabIndex        =   2
      Top             =   6120
      Width           =   1215
   End
   Begin VB.ListBox EventList 
      Height          =   6000
      ItemData        =   "Form1.frx":058A
      Left            =   3000
      List            =   "Form1.frx":058C
      TabIndex        =   1
      Top             =   0
      Width           =   8055
   End
   Begin VB.TextBox Text1 
      Height          =   6495
      Left            =   0
      MultiLine       =   -1  'True
      ScrollBars      =   3  '양방향
      TabIndex        =   0
      Top             =   0
      Width           =   2955
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   $"Form1.frx":058E
      Height          =   3060
      Left            =   2400
      TabIndex        =   8
      Top             =   6720
      Width           =   480
   End
   Begin VB.Menu MFile 
      Caption         =   "파일(&F)"
      Begin VB.Menu MNewEvent 
         Caption         =   "이벤트 새로 작성(&N)"
      End
      Begin VB.Menu MOpenEvent 
         Caption         =   "이벤트 읽어 오기(&O)"
      End
      Begin VB.Menu MSaveEvent 
         Caption         =   "이벤트 저장 하기(&S)"
         Shortcut        =   ^S
      End
   End
   Begin VB.Menu MEdit 
      Caption         =   "편집(&E)"
      Begin VB.Menu MEditData 
         Caption         =   "데이터 편집(&D)"
         Begin VB.Menu MEditMessages 
            Caption         =   "대화 문장 편집(&0)..."
         End
         Begin VB.Menu MEditSelect 
            Caption         =   "선택지 문장 편집(&1)..."
         End
         Begin VB.Menu MEditName 
            Caption         =   "인물 이름 편집(&2)..."
         End
         Begin VB.Menu MEditValueName 
            Caption         =   "변수 이름 편집(&3)..."
         End
      End
   End
   Begin VB.Menu MInsert 
      Caption         =   "삽입(&I)"
      Begin VB.Menu MInsertEvent 
         Caption         =   "이벤트 삽입(&E)"
         Begin VB.Menu MNotice 
            Caption         =   "주석(&N)"
            Shortcut        =   ^N
         End
         Begin VB.Menu MEvent0 
            Caption         =   "문장 출력(&0)..."
         End
         Begin VB.Menu MEvent1 
            Caption         =   "선택지 표시(&1)..."
            Shortcut        =   {F1}
         End
         Begin VB.Menu MEvent2 
            Caption         =   "화자 이름 설정(&2)..."
            Shortcut        =   {F2}
         End
         Begin VB.Menu MEvent3 
            Caption         =   "변수 조건 분기(&3)..."
            Shortcut        =   {F3}
         End
         Begin VB.Menu MEvent5 
            Caption         =   "배경 화면 변경(&5)..."
            Shortcut        =   {F5}
         End
         Begin VB.Menu MEvent6 
            Caption         =   "케릭터 표시 변경(&6)..."
            Shortcut        =   {F6}
         End
         Begin VB.Menu MEvent32 
            Caption         =   "챕터표시"
         End
         Begin VB.Menu MEvent33 
            Caption         =   "아이캡취"
         End
         Begin VB.Menu MEvent11 
            Caption         =   "배경음"
         End
      End
   End
   Begin VB.Menu MView 
      Caption         =   "보기(&V)"
      Begin VB.Menu MToCode 
         Caption         =   "배열로 보기(&C)"
      End
      Begin VB.Menu MGC 
         Caption         =   "현재 라인의 시작 카운트"
         Shortcut        =   {F12}
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
    Dim Temp As String
    Dim cnt As Integer
    If EventList.ListIndex > 0 Then
        cnt = EventList.ListIndex
        Temp = EventList.List(cnt)
        EventList.RemoveItem (EventList.ListIndex)
        EventList.AddItem Temp, cnt - 1
        EventList.ListIndex = cnt - 1
    End If
End Sub

Private Sub Command2_Click()
    Dim Temp As String
    Dim cnt As Integer
    If EventList.ListIndex < EventList.ListCount - 1 And EventList.ListIndex > -1 Then
        cnt = EventList.ListIndex
        Temp = EventList.List(cnt)
        EventList.RemoveItem (EventList.ListIndex)
        EventList.AddItem Temp, cnt + 1
        EventList.ListIndex = cnt + 1
    End If
End Sub

Private Sub Command3_Click()
    If EventList.ListIndex > -1 Then
        EventList.RemoveItem (EventList.ListIndex)
    End If
End Sub

'Private Sub Command4_Click()
'Dim i As Integer
'Dim tmp As String
'
'On Error Resume Next
'tmp = ""
'For i = 0 To List1.ListCount
'    tmp = tmp + Mid(List1.List(i), InStr(List1.List(i), ": ") + 2) & vbCrLf
'Next i
'
'Text3.Text = tmp
'End Sub

Private Sub CopyEvent_Click()
    Clipboard.SetText EventList.List(EventList.ListIndex)
End Sub

Private Sub EventList_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyDelete Then
        Call Command3_Click
    ElseIf KeyCode = vbKeyA Then
        Call Command1_Click
    ElseIf KeyCode = vbKeyZ Then
        Call Command2_Click
    ElseIf KeyCode = vbKeyC Then
        Call CopyEvent_Click
    ElseIf KeyCode = vbKeyV Then
        Call PasteEvent_Click
        
    ElseIf KeyCode = vbKeyQ Then
        Call MEvent0_Click
    ElseIf KeyCode = vbKeyW Then
        Call MEvent1_Click
    ElseIf KeyCode = vbKeyE Then
        Call MEvent2_Click
    ElseIf KeyCode = vbKeyR Then
        Call MEvent3_Click
    ElseIf KeyCode = vbKeyT Then
        Call MEvent3_Click
    ElseIf KeyCode = vbKeyY Then
        Call MEvent5_Click
    ElseIf KeyCode = vbKeyU Then
        Call MEvent6_Click
        
    ElseIf 49 <= KeyCode <= 57 Then
        Call PasteMacro_Click(KeyCode - 49)
    End If
    
End Sub

Private Sub Form_Load()
    SetEventHead
    MOpenEvent_Click
    
    Dim filenumber As Integer '파일번호
    Dim filename As String '파일이름
    Dim ftemp As String '파일내용
    Dim cnt As Integer
    On Error GoTo Err:
    cnt = 0
    
    filename = App.Path & "\macro.txt"
    filenumber = FreeFile '사용가능한 파일번호를 구하고
    '파일을 Input 모드(읽기 전용)로 연다.
    Open filename For Input As filenumber

    Do Until EOF(filenumber)
        '줄단위로 파일 끝가지 ftemp 라는 변수로 읽어 들인다.
        Line Input #filenumber, ftemp
        If Trim(ftemp) <> "" Then
            ClipMacro(cnt).Text = ftemp
            cnt = cnt + 1
        End If
    Loop

    Close filenumber '파일을 닫는다.

Err:
    
    
    
    'AlwaysOnTop Me, True
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Dim filenumber As Integer '파일번호를 위한 변수
    Dim filename As String '파일이름을 위한 변수
    Dim Temp As String
    Dim i As Integer
    
    Temp = ClipMacro(0).Text
    
    For i = 1 To 8
        Temp = Temp & vbCrLf & ClipMacro(i).Text
    Next i
   
    filename = App.Path & "\macro.txt"
    filenumber = FreeFile '사용가능한 파일 번호를 구하고
    '저장 모드로 파일을 읽어 온다.
    Open filename For Output As filenumber
    '텍스트 박스의 내용으로 파일을 덮어씌운다.
    Print #filenumber, Temp
    Close filenumber '파일을 닫는다.

End Sub

Private Sub GetCnt_Click()
    Call GetCount
End Sub

Private Sub MEditMessages_Click()
    MessageList.Show vbModal
End Sub

Private Sub MEditName_Click()
    NameList.Show vbModal
End Sub

Private Sub MEditSelect_Click()
    SelectList.Show vbModal
End Sub

Private Sub MEvent0_Click()
    Event0.Show vbModal
End Sub

Private Sub MEvent1_Click()
    Event1.Show vbModal
End Sub

Private Sub MEvent11_Click()
    Call AddEvent(EventHead(9) + ",-1")
End Sub

Private Sub MEvent2_Click()
    Event2.Show vbModal
End Sub

Private Sub MEvent3_Click()
    Event3.Show vbModal
End Sub

Private Sub MEvent32_Click()
    Call AddEvent(EventHead(8) + ",0")
End Sub

Private Sub MEvent33_Click()
    Call AddEvent(EventHead(7))
End Sub

Private Sub MEvent5_Click()
    Event5.Show vbModal
End Sub

Private Sub MEvent6_Click()
    Event6.Show vbModal
End Sub

Private Sub MGC_Click()
    Call GetCount
End Sub

Private Sub MNewEvent_Click()
    ResetEventList
End Sub

Private Sub MNotice_Click()
    Dim Cmd As String
    Cmd = InputBox("현재까지의 라인에 대한 설명을 입력하세요", "주석 입력")
    AddEvent ("//" & Cmd)
End Sub

Private Sub MOpenEvent_Click()
    Dim filenumber As Integer '파일번호
    Dim filename As String '파일이름
    Dim ftemp As String '파일내용
    On Error GoTo Err:
    
    EventList.Clear
    
    filename = App.Path & "\EVENT.txt"
    filenumber = FreeFile '사용가능한 파일번호를 구하고
    '파일을 Input 모드(읽기 전용)로 연다.
    Open filename For Input As filenumber

    Do Until EOF(filenumber)
        '줄단위로 파일 끝가지 ftemp 라는 변수로 읽어 들인다.
        Line Input #filenumber, ftemp
        If Trim(ftemp) <> "" Then EventList.AddItem ftemp
    Loop

    Close filenumber '파일을 닫는다.

Err:
End Sub

Private Sub MSaveEvent_Click()
    Dim filenumber As Integer '파일번호를 위한 변수
    Dim filename As String '파일이름을 위한 변수
    Dim Temp As String
    Dim i As Integer
    
    Temp = EventList.List(0)
    
    For i = 1 To EventList.ListCount
        Temp = Temp & vbCrLf & EventList.List(i)
    Next i
   
    filename = App.Path & "\EVENT.txt"
    filenumber = FreeFile '사용가능한 파일 번호를 구하고
    '저장 모드로 파일을 읽어 온다.
    Open filename For Output As filenumber
    '텍스트 박스의 내용으로 파일을 덮어씌운다.
    Print #filenumber, Temp
    Close filenumber '파일을 닫는다.
End Sub

Private Sub MToCode_Click()
    CommandToArray
End Sub

Private Sub PasteEvent_Click()
On Error Resume Next
    EventList.AddItem Clipboard.GetText, EventList.ListIndex
End Sub

Private Sub PasteMacro_Click(Num As Integer)
On Error Resume Next
    EventList.AddItem ClipMacro(Num).Text, EventList.ListIndex
End Sub
