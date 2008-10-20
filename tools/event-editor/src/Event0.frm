VERSION 5.00
Begin VB.Form Event0 
   BorderStyle     =   1  '단일 고정
   Caption         =   "0 : 문장 출력"
   ClientHeight    =   2310
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5535
   Icon            =   "Event0.frx":0000
   LinkTopic       =   "Event0"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2310
   ScaleWidth      =   5535
   StartUpPosition =   1  '소유자 가운데
   Begin VB.CommandButton CANCEL 
      Caption         =   "취소"
      Height          =   375
      Left            =   4200
      TabIndex        =   4
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
   Begin VB.Frame Frame1 
      Caption         =   "문장 출력"
      Height          =   1455
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   5295
      Begin VB.TextBox Text1 
         Height          =   270
         Left            =   3480
         TabIndex        =   6
         Text            =   "Text1"
         Top             =   840
         Width           =   615
      End
      Begin VB.TextBox Text2 
         Height          =   270
         Left            =   4440
         TabIndex        =   5
         Text            =   "Text2"
         Top             =   840
         Width           =   615
      End
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
      Begin VB.Label Label2 
         Caption         =   "다중삽입"
         Height          =   255
         Left            =   2640
         TabIndex        =   7
         Top             =   885
         Width           =   1095
      End
      Begin VB.Line Line1 
         X1              =   3960
         X2              =   4800
         Y1              =   960
         Y2              =   960
      End
      Begin VB.Label Label1 
         Caption         =   "표시 문장"
         Height          =   255
         Left            =   240
         TabIndex        =   3
         Top             =   400
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

Private Sub EventString_Click()
    Text1.Text = EventString.ListIndex
    Text2.Text = EventString.ListIndex
End Sub

Private Sub Form_Load()
    Dim filenumber As Integer '파일번호
    Dim filename As String '파일이름
    Dim ftemp As String '파일내용
    On Error GoTo Err:
    
    EventString.Clear
    
    filename = App.Path & "\message.txt"
    filenumber = FreeFile '사용가능한 파일번호를 구하고
    '파일을 Input 모드(읽기 전용)로 연다.
    Open filename For Input As filenumber

    Do Until EOF(filenumber)
        '줄단위로 파일 끝가지 ftemp 라는 변수로 읽어 들인다.
        Line Input #filenumber, ftemp
        If Trim(ftemp) <> "" Then EventString.AddItem ftemp
    Loop

    Close filenumber '파일을 닫는다.
    
Err:
    
    EventString.ListIndex = 0
End Sub

Private Sub OK_Click()
    Dim Cmd As String
    Dim i As Integer

    For i = Val(Text1.Text) To Val(Text2.Text)
        Cmd = EventHead(0) + Evp + Trim(Str(i))
        Cmd = Cmd + Eve + Eve + Nts + EventString.List(i) + Nte
        AddEvent (Cmd)
    Next i
        
    Unload Me
End Sub
