VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  '단일 고정
   Caption         =   "3D Surface Pratice by Ahyane"
   ClientHeight    =   9000
   ClientLeft      =   150
   ClientTop       =   720
   ClientWidth     =   12000
   Icon            =   "3D_Block.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   600
   ScaleMode       =   3  '픽셀
   ScaleWidth      =   800
   StartUpPosition =   3  'Windows 기본값
   Begin VB.CheckBox Check1 
      Caption         =   "Check1"
      Height          =   255
      Left            =   12960
      TabIndex        =   11
      Top             =   6480
      Value           =   1  '확인
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Timer Timer1 
      Interval        =   10
      Left            =   12240
      Top             =   6360
   End
   Begin VB.CommandButton Command4 
      Caption         =   "초기화"
      Height          =   375
      Left            =   12120
      TabIndex        =   10
      Top             =   5640
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.TextBox Text8 
      Height          =   270
      Left            =   12480
      TabIndex        =   9
      Text            =   "0"
      Top             =   3840
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.TextBox Text7 
      Height          =   270
      Left            =   12120
      TabIndex        =   8
      Text            =   "0"
      Top             =   3840
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.CommandButton Command2 
      Caption         =   "적용"
      Height          =   375
      Left            =   12120
      TabIndex        =   7
      Top             =   5160
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.TextBox Text6 
      Height          =   270
      Left            =   12480
      TabIndex        =   6
      Text            =   "0"
      Top             =   4560
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.TextBox Text5 
      Height          =   270
      Left            =   12120
      TabIndex        =   5
      Text            =   "0"
      Top             =   4560
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.TextBox Text4 
      Height          =   270
      Left            =   12480
      TabIndex        =   4
      Text            =   "0"
      Top             =   4800
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.TextBox Text3 
      Height          =   270
      Left            =   12840
      TabIndex        =   3
      Text            =   "0"
      Top             =   4560
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.TextBox Text2 
      Height          =   270
      Left            =   12480
      TabIndex        =   2
      Text            =   "0"
      Top             =   4320
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.TextBox Text1 
      Height          =   270
      Left            =   12120
      TabIndex        =   1
      Text            =   "0"
      Top             =   4080
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  '평면
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000000&
      BorderStyle     =   0  '없음
      ForeColor       =   &H80000008&
      Height          =   9000
      Left            =   0
      MouseIcon       =   "3D_Block.frx":058A
      MousePointer    =   99  '사용자 정의
      ScaleHeight     =   600
      ScaleMode       =   3  '픽셀
      ScaleWidth      =   800
      TabIndex        =   0
      Top             =   0
      Width           =   12000
      Begin VB.Label Label2 
         Alignment       =   1  '오른쪽 맞춤
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Top = 0"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   8.25
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   165
         Left            =   11280
         TabIndex        =   13
         Top             =   120
         Width           =   615
      End
      Begin VB.Label Label1 
         Alignment       =   1  '오른쪽 맞춤
         Appearance      =   0  '평면
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         BackStyle       =   0  '투명
         Caption         =   "Position = 0, 0"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   8.25
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   165
         Left            =   10710
         TabIndex        =   12
         Top             =   360
         Width           =   1185
      End
   End
   Begin VB.Menu MTest 
      Caption         =   "테스트(&T)"
      Begin VB.Menu MReset 
         Caption         =   "지표면 초기화(&R)"
         Shortcut        =   ^R
      End
      Begin VB.Menu MWave 
         Caption         =   "진동(&W)"
         Checked         =   -1  'True
         Shortcut        =   ^W
      End
      Begin VB.Menu MExit 
         Caption         =   "종료(&X)"
         Shortcut        =   ^{F4}
      End
   End
   Begin VB.Menu MInfo 
      Caption         =   "정보(&I)"
      Begin VB.Menu MSource 
         Caption         =   "모듈 소스(&S)"
         Shortcut        =   {F3}
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim Test(MaxBlockCount) As Block3D
Dim SelectedCell As Block3D

Private Function RefreshBlocks(Board As PictureBox)
    Dim i As Integer
    
    Board.Cls
    For i = 0 To MaxBlockCount
        DrawBlock3D Board, Test(i), False
    Next i
    DrawBlock3D Board, SelectedCell, False

End Function

Private Function InitBlocks(Selected As Block3D, Block() As Block3D, X As Integer, Y As Integer)
    Dim i As Integer
    Dim j As Integer
    
    For i = 0 To X
        For j = 0 To Y
            Block(i + j * MaxBlockWidth).BorderColor = RGB(50, 50, 50)
            Block(i + j * MaxBlockWidth).Vertex(0) = 0
            Block(i + j * MaxBlockWidth).Vertex(1) = 0
            Block(i + j * MaxBlockWidth).Vertex(2) = 0
            Block(i + j * MaxBlockWidth).Vertex(3) = 0
            Block(i + j * MaxBlockWidth).Level = 0
            Block(i + j * MaxBlockWidth).Pos.X = i
            Block(i + j * MaxBlockWidth).Pos.Y = j
        Next j
    Next i
    
    Selected.BorderColor = RGB(255, 0, 0)
    Selected.Pos.X = MaxBlockWidth / 2 - 1
    Selected.Pos.Y = MaxBlockWidth / 2 - 1
    MoveCount.X = Selected.Pos.X
    MoveCount.Y = Selected.Pos.Y
    
    Call SetLabel
End Function

Private Function GetSelectedBlock()
    SelectedCell.Level = Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Level
    SelectedCell.Vertex(0) = Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(0)
    SelectedCell.Vertex(1) = Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(1)
    SelectedCell.Vertex(2) = Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(2)
    SelectedCell.Vertex(3) = Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(3)
    
    Text1.Text = Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).BorderColor
    Text2.Text = -Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(0)
    Text3.Text = -Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(1)
    Text4.Text = -Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(2)
    Text5.Text = -Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(3)
    Text6.Text = Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Level
    
End Function

Private Sub Check1_Click()
Timer1.Enabled = Check1.Value
End Sub

Private Sub Command2_Click()
'값적용
    Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).BorderColor = Val(Text1.Text)
    Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(0) = -Val(Text2.Text)
    Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(1) = -Val(Text3.Text)
    Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(2) = -Val(Text4.Text)
    Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(3) = -Val(Text5.Text)
    Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Level = Val(Text6.Text)
    
    RefreshBlocks Picture1
End Sub

Private Sub Command4_Click()
    InitBlocks SelectedCell, Test, MaxBlockWidth - 1, MaxBlockWidth - 1
End Sub

Private Sub Form_Load()
    InitBlocks SelectedCell, Test, MaxBlockWidth - 1, MaxBlockWidth - 1
End Sub

Private Sub MExit_Click()
    End
End Sub

Private Sub MReset_Click()
    Call Command4_Click
End Sub

Private Sub MSource_Click()
    Form2.Show vbModal
End Sub

Private Sub MWave_Click()
    MWave.Checked = Not (MWave.Checked)
    If MWave.Checked Then Check1.Value = Checked Else Check1.Value = Unchecked
    Call Check1_Click
End Sub

Private Sub Picture1_KeyDown(KeyCode As Integer, Shift As Integer)
    Dim Shifted As Integer

    On Error Resume Next

    If Shift Then Shifted = -1 Else Shifted = 1
    
    Select Case KeyCode
        '선택셀 이동
        Case vbKeyUp
            SelectedCell.Pos.Y = (SelectedCell.Pos.Y + MaxBlockWidth - 1) Mod MaxBlockWidth
            MoveCount.Y = SelectedCell.Pos.Y
            Call SetLabel
        Case vbKeyDown
            SelectedCell.Pos.Y = (SelectedCell.Pos.Y + 1) Mod MaxBlockWidth
            MoveCount.Y = SelectedCell.Pos.Y
            Call SetLabel
        Case vbKeyLeft
            SelectedCell.Pos.X = (SelectedCell.Pos.X + MaxBlockWidth - 1) Mod MaxBlockWidth
            MoveCount.X = SelectedCell.Pos.X
            Call SetLabel
        Case vbKeyRight
            SelectedCell.Pos.X = (SelectedCell.Pos.X + 1) Mod MaxBlockWidth
            MoveCount.X = SelectedCell.Pos.X
            Call SetLabel
        
        '선택된 셀 조절
        Case vbKeyS 'Up
            Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(0) = _
            Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(0) - Shifted
            '주변셀
            Test(SelectedCell.Pos.X + 1 + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(3) = Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(0)
            Test(SelectedCell.Pos.X + 1 + (SelectedCell.Pos.Y - 1) * MaxBlockWidth).Vertex(2) = Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(0)
            Test(SelectedCell.Pos.X + (SelectedCell.Pos.Y - 1) * MaxBlockWidth).Vertex(1) = Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(0)
            
        Case vbKeyD 'Down
            Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(2) = _
            Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(2) - Shifted
            '주변셀
            Test(SelectedCell.Pos.X - 1 + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(1) = Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(2)
            Test(SelectedCell.Pos.X - 1 + (SelectedCell.Pos.Y + 1) * MaxBlockWidth).Vertex(0) = Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(2)
            Test(SelectedCell.Pos.X + (SelectedCell.Pos.Y + 1) * MaxBlockWidth).Vertex(3) = Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(2)
            
        Case vbKeyA 'Left
            Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(3) = _
            Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(3) - Shifted
            '주변셀
            Test(SelectedCell.Pos.X - 1 + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(0) = Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(3)
            Test(SelectedCell.Pos.X - 1 + (SelectedCell.Pos.Y - 1) * MaxBlockWidth).Vertex(1) = Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(3)
            Test(SelectedCell.Pos.X + (SelectedCell.Pos.Y - 1) * MaxBlockWidth).Vertex(2) = Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(3)
            
        Case vbKeyF 'Right
            Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(1) = _
            Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(1) - Shifted
            '주변셀
            Test(SelectedCell.Pos.X + 1 + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(2) = Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(1)
            Test(SelectedCell.Pos.X + 1 + (SelectedCell.Pos.Y + 1) * MaxBlockWidth).Vertex(3) = Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(1)
            Test(SelectedCell.Pos.X + (SelectedCell.Pos.Y + 1) * MaxBlockWidth).Vertex(0) = Test(SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth).Vertex(1)
            
        Case vbKeySpace
            SmoothUp SelectedCell.Pos.X + SelectedCell.Pos.Y * MaxBlockWidth, Shifted
            
    End Select
    
    GetSelectedBlock
    RefreshBlocks Picture1
        
End Sub

Private Function SmoothUp(BlockNumber As Integer, Upndown As Integer)
    Dim temp As Integer
    Dim max As Integer
    Dim i As Integer, j As Integer
    On Error Resume Next
    temp = BlockNumber
      
    max = 1000 * Upndown
    
    For i = 0 To 2
        If Upndown > 0 Then
            If max > Test(temp).Vertex(i) Then max = Test(temp).Vertex(i)
        Else
            If max < Test(temp).Vertex(i) Then max = Test(temp).Vertex(i)
        End If
    Next i
    
    max = max - Upndown
    
    Test(temp).Vertex(0) = max
    Test(temp).Vertex(1) = max
    Test(temp).Vertex(2) = max
    Test(temp).Vertex(3) = max
    
    Test(temp + MaxBlockWidth).Vertex(0) = Test(temp).Vertex(0)
    Test(temp + MaxBlockWidth).Vertex(3) = Test(temp).Vertex(0)
    
    Test(temp - MaxBlockWidth).Vertex(1) = Test(temp).Vertex(0)
    Test(temp - MaxBlockWidth).Vertex(2) = Test(temp).Vertex(0)
    
    Test(temp + 1).Vertex(2) = Test(temp).Vertex(0)
    Test(temp + 1).Vertex(3) = Test(temp).Vertex(0)
    
    Test(temp - 1).Vertex(1) = Test(temp).Vertex(0)
    Test(temp - 1).Vertex(0) = Test(temp).Vertex(0)
    
    Test(temp + 1 + MaxBlockWidth).Vertex(3) = Test(temp).Vertex(0)
    
    Test(temp - 1 - MaxBlockWidth).Vertex(1) = Test(temp).Vertex(0)
    
    Test(temp + MaxBlockWidth - 1).Vertex(0) = Test(temp).Vertex(0)
    
    Test(temp - MaxBlockWidth + 1).Vertex(2) = Test(temp).Vertex(0)
End Function

Private Function SetLabel()
    Label1.Caption = "Position = " & SelectedCell.Pos.X & ", " & SelectedCell.Pos.Y
    Label2.Caption = "12 = " & Text2.Text & ", 3 = " & Text3.Text & ", 6 = " & Text4.Text & ", 9 = " & Text5.Text & ", Top = " & Text6.Text
End Function

Private Sub Timer1_Timer()
Dim i As Integer
For i = 0 To 10
    SmoothUp Rnd * 1600, Rnd * 3 - 1
Next i

RefreshBlocks Picture1
End Sub
