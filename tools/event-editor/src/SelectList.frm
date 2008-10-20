VERSION 5.00
Begin VB.Form SelectList 
   Caption         =   "선택지 문장 편집"
   ClientHeight    =   6150
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5895
   LinkTopic       =   "Form2"
   ScaleHeight     =   6150
   ScaleWidth      =   5895
   StartUpPosition =   1  '소유자 가운데
   Begin VB.ListBox List1 
      Height          =   5100
      ItemData        =   "SelectList.frx":0000
      Left            =   0
      List            =   "SelectList.frx":0007
      TabIndex        =   5
      Top             =   0
      Width           =   5895
   End
   Begin VB.CommandButton Command1 
      Caption         =   "삽입"
      Height          =   375
      Left            =   1800
      TabIndex        =   4
      Top             =   5640
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "수정"
      Height          =   375
      Left            =   3120
      TabIndex        =   3
      Top             =   5640
      Width           =   1335
   End
   Begin VB.CommandButton Command3 
      Caption         =   "삭제"
      Height          =   375
      Left            =   4560
      TabIndex        =   2
      Top             =   5640
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   0
      TabIndex        =   1
      Top             =   5160
      Width           =   5895
   End
   Begin VB.CommandButton Command4 
      Caption         =   "저장"
      Height          =   375
      Left            =   0
      TabIndex        =   0
      Top             =   5640
      Width           =   1215
   End
End
Attribute VB_Name = "SelectList"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    If Text1.Text = "" Then Exit Sub
    If List1.ListIndex < 0 Then
        List1.AddItem Text1.Text
    Else
        List1.AddItem Text1.Text, List1.ListIndex
    End If
    List1.ListIndex = 0
    Text1.Text = ""
    List1.ListIndex = List1.ListCount - 1
End Sub

Private Sub Command2_Click()
    List1.List(List1.ListIndex) = Text1.Text
End Sub

Private Sub Command3_Click()
    Dim Temp As Integer
    On Error Resume Next
    Temp = List1.ListIndex
    List1.RemoveItem Temp
    List1.ListIndex = Temp - 1
End Sub

Private Sub Command4_Click()
    Call MSGSave
End Sub

Private Sub Form_Load()
    Dim filenumber As Integer '파일번호
    Dim filename As String '파일이름
    Dim ftemp As String '파일내용
    On Error GoTo Err:
    
    List1.Clear
    
    filename = App.Path & "\select.txt"
    filenumber = FreeFile '사용가능한 파일번호를 구하고
    '파일을 Input 모드(읽기 전용)로 연다.
    Open filename For Input As filenumber

    Do Until EOF(filenumber)
        '줄단위로 파일 끝가지 ftemp 라는 변수로 읽어 들인다.
        Line Input #filenumber, ftemp
        If Trim(ftemp) <> "" Then List1.AddItem ftemp
    Loop

    Close filenumber '파일을 닫는다.
    
    List1.AddItem ""
Err:

End Sub

Private Sub List1_DblClick()
    Text1.Text = List1.List(List1.ListIndex)
End Sub

Private Sub Text1_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Call Command1_Click
    End If
End Sub

Function MSGSave()
    Dim filenumber As Integer '파일번호를 위한 변수
    Dim filename As String '파일이름을 위한 변수
    Dim Temp As String
    Dim i As Integer
    
    Temp = List1.List(0)
    
    For i = 1 To List1.ListCount
        Temp = Temp & vbCrLf & List1.List(i)
    Next i
   
    filename = App.Path & "\select.txt"
    filenumber = FreeFile '사용가능한 파일 번호를 구하고
    '저장 모드로 파일을 읽어 온다.
    Open filename For Output As filenumber
    '텍스트 박스의 내용으로 파일을 덮어씌운다.
    Print #filenumber, Temp
    Close filenumber '파일을 닫는다.
End Function

