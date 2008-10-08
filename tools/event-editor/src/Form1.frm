VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "이벤트 편집기 1"
   ClientHeight    =   6495
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   11055
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   6495
   ScaleWidth      =   11055
   StartUpPosition =   3  'Windows 기본값
   Begin VB.CommandButton Command3 
      Caption         =   "삭제"
      Height          =   615
      Left            =   5520
      TabIndex        =   4
      Top             =   5760
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "아래로"
      Height          =   615
      Left            =   4320
      TabIndex        =   3
      Top             =   5760
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "위로"
      Height          =   615
      Left            =   3120
      TabIndex        =   2
      Top             =   5760
      Width           =   1215
   End
   Begin VB.ListBox EventList 
      Height          =   5640
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
   Begin VB.Menu MFile 
      Caption         =   "파일(&F)"
      Begin VB.Menu MNewEvent 
         Caption         =   "이벤트 새로 작성(&N)"
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
         Begin VB.Menu MEvent0 
            Caption         =   "문장 출력(&0)..."
         End
         Begin VB.Menu MEvent1 
            Caption         =   "선택지 표시(&1)..."
         End
         Begin VB.Menu MEvent2 
            Caption         =   "화자 이름 설정(&2)..."
         End
         Begin VB.Menu MEvent3 
            Caption         =   "변수 조건 분기(&3)..."
         End
         Begin VB.Menu MEvent5 
            Caption         =   "배경 화면 변경(&5)..."
            Visible         =   0   'False
         End
         Begin VB.Menu MEvent6 
            Caption         =   "케릭터 표시 변경(&6)..."
            Visible         =   0   'False
         End
      End
   End
   Begin VB.Menu MView 
      Caption         =   "보기(&V)"
      Begin VB.Menu MToCode 
         Caption         =   "배열로 보기(&C)"
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
    Dim Cnt As Integer
    If EventList.ListIndex > 0 Then
        Cnt = EventList.ListIndex
        Temp = EventList.List(Cnt)
        EventList.RemoveItem (EventList.ListIndex)
        EventList.AddItem Temp, Cnt - 1
        EventList.ListIndex = Cnt - 1
    End If
End Sub

Private Sub Command2_Click()
    Dim Temp As String
    Dim Cnt As Integer
    If EventList.ListIndex < EventList.ListCount - 1 And EventList.ListIndex > -1 Then
        Cnt = EventList.ListIndex
        Temp = EventList.List(Cnt)
        EventList.RemoveItem (EventList.ListIndex)
        EventList.AddItem Temp, Cnt + 1
        EventList.ListIndex = Cnt + 1
    End If
End Sub

Private Sub Command3_Click()
    If EventList.ListIndex > -1 Then
        EventList.RemoveItem (EventList.ListIndex)
    End If
End Sub

Private Sub Form_Load()
    SetEventHead
End Sub

Private Sub MEvent0_Click()
    Event0.Show vbModal
End Sub

Private Sub MEvent1_Click()
    Event1.Show vbModal
End Sub

Private Sub MEvent2_Click()
    Event2.Show vbModal
End Sub

Private Sub MEvent3_Click()
    Event3.Show vbModal
End Sub

Private Sub MEvent5_Click()
    Event5.Show vbModal
End Sub

Private Sub MEvent6_Click()
    Event6.Show vbModal
End Sub

Private Sub MNewEvent_Click()
    ResetEventList
End Sub

Private Sub MToCode_Click()
    CommandToArray
End Sub
