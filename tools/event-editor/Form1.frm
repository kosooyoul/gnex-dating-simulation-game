VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   13005
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10950
   LinkTopic       =   "Form1"
   ScaleHeight     =   13005
   ScaleWidth      =   10950
   StartUpPosition =   3  'Windows 기본값
   Begin VB.Frame Frame10 
      Caption         =   "Frame10"
      Height          =   1215
      Left            =   5520
      TabIndex        =   58
      Top             =   11280
      Width           =   4815
   End
   Begin VB.CommandButton Command9 
      Caption         =   "Command7"
      Height          =   495
      Left            =   9480
      TabIndex        =   57
      Top             =   10680
      Width           =   855
   End
   Begin VB.Frame Frame9 
      Caption         =   "날씨 설정"
      Height          =   1215
      Left            =   5520
      TabIndex        =   55
      Top             =   9840
      Width           =   4815
      Begin VB.ComboBox Combo16 
         Height          =   300
         Left            =   840
         TabIndex        =   56
         Text            =   "Combo13"
         Top             =   480
         Width           =   2775
      End
   End
   Begin VB.CommandButton Command8 
      Caption         =   "Command7"
      Height          =   495
      Left            =   9480
      TabIndex        =   54
      Top             =   9360
      Width           =   855
   End
   Begin VB.Frame Frame8 
      Caption         =   "시간 설정"
      Height          =   1215
      Left            =   5520
      TabIndex        =   51
      Top             =   8520
      Width           =   4815
      Begin VB.ComboBox Combo18 
         Height          =   300
         Left            =   360
         TabIndex        =   53
         Text            =   "Combo13"
         Top             =   360
         Width           =   1095
      End
      Begin VB.ComboBox Combo17 
         Height          =   300
         Left            =   1560
         TabIndex        =   52
         Text            =   "Combo14"
         Top             =   360
         Width           =   1095
      End
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Command7"
      Height          =   495
      Left            =   9480
      TabIndex        =   50
      Top             =   7920
      Width           =   855
   End
   Begin VB.Frame Frame7 
      Caption         =   "날짜 설정"
      Height          =   1215
      Left            =   5520
      TabIndex        =   46
      Top             =   7080
      Width           =   4815
      Begin VB.ComboBox Combo15 
         Height          =   300
         Left            =   2760
         TabIndex        =   49
         Text            =   "Combo15"
         Top             =   360
         Width           =   1215
      End
      Begin VB.ComboBox Combo14 
         Height          =   300
         Left            =   1560
         TabIndex        =   48
         Text            =   "Combo14"
         Top             =   360
         Width           =   1095
      End
      Begin VB.ComboBox Combo13 
         Height          =   300
         Left            =   360
         TabIndex        =   47
         Text            =   "Combo13"
         Top             =   360
         Width           =   1095
      End
   End
   Begin VB.CommandButton Command6 
      Caption         =   "Command2"
      Height          =   375
      Left            =   4440
      TabIndex        =   45
      Top             =   11160
      Width           =   975
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Command2"
      Height          =   375
      Left            =   4320
      TabIndex        =   44
      Top             =   9480
      Width           =   975
   End
   Begin VB.Frame Frame6 
      Caption         =   "케릭터 이미지 교체"
      Height          =   1335
      Left            =   0
      TabIndex        =   39
      Top             =   10080
      Width           =   5295
      Begin VB.ComboBox Combo12 
         Height          =   300
         Left            =   1080
         TabIndex        =   41
         Text            =   "Combo9"
         Top             =   360
         Width           =   1815
      End
      Begin VB.ComboBox Combo11 
         Height          =   300
         Left            =   1320
         TabIndex        =   40
         Text            =   "Combo10"
         Top             =   840
         Width           =   2055
      End
      Begin VB.Label Label9 
         Caption         =   "위치"
         Height          =   255
         Left            =   240
         TabIndex        =   43
         Top             =   360
         Width           =   1455
      End
      Begin VB.Label Label8 
         Caption         =   "케릭터"
         Height          =   255
         Left            =   480
         TabIndex        =   42
         Top             =   840
         Width           =   975
      End
   End
   Begin VB.Frame Frame5 
      Caption         =   "배경화면 교체"
      Height          =   1335
      Left            =   0
      TabIndex        =   34
      Top             =   8400
      Width           =   5295
      Begin VB.ComboBox Combo10 
         Height          =   300
         Left            =   1320
         TabIndex        =   37
         Text            =   "Combo10"
         Top             =   840
         Width           =   2055
      End
      Begin VB.ComboBox Combo9 
         Height          =   300
         Left            =   1080
         TabIndex        =   35
         Text            =   "Combo9"
         Top             =   360
         Width           =   1815
      End
      Begin VB.Label Label7 
         Caption         =   "배경화면"
         Height          =   255
         Left            =   480
         TabIndex        =   38
         Top             =   840
         Width           =   975
      End
      Begin VB.Label Label6 
         Caption         =   "레이어"
         Height          =   255
         Left            =   240
         TabIndex        =   36
         Top             =   360
         Width           =   1455
      End
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Command2"
      Height          =   375
      Left            =   4320
      TabIndex        =   33
      Top             =   7800
      Width           =   975
   End
   Begin VB.Frame Frame4 
      Caption         =   "조건분기 - 변수"
      Height          =   1935
      Left            =   0
      TabIndex        =   25
      Top             =   6120
      Width           =   5295
      Begin VB.TextBox Text3 
         Height          =   270
         Left            =   1680
         TabIndex        =   31
         Text            =   "Text3"
         Top             =   1320
         Width           =   2175
      End
      Begin VB.OptionButton Option8 
         Caption         =   "다른 경우"
         Height          =   180
         Left            =   2760
         TabIndex        =   30
         Top             =   960
         Width           =   1095
      End
      Begin VB.OptionButton Option7 
         Caption         =   "같은 경우"
         Height          =   180
         Left            =   1320
         TabIndex        =   29
         Top             =   960
         Width           =   1095
      End
      Begin VB.TextBox Text2 
         Height          =   270
         Left            =   3360
         TabIndex        =   28
         Text            =   "값"
         Top             =   480
         Width           =   1455
      End
      Begin VB.ComboBox Combo8 
         Height          =   300
         Left            =   1320
         TabIndex        =   26
         Text            =   "Combo8"
         Top             =   480
         Width           =   1215
      End
      Begin VB.Label Label5 
         Caption         =   "건너뛸 라인수"
         Height          =   255
         Left            =   360
         TabIndex        =   32
         Top             =   1320
         Width           =   1335
      End
      Begin VB.Label Label4 
         Caption         =   "비교 변수"
         Height          =   255
         Left            =   360
         TabIndex        =   27
         Top             =   480
         Width           =   1455
      End
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Command1"
      Height          =   375
      Left            =   4320
      TabIndex        =   22
      Top             =   4200
      Width           =   1215
   End
   Begin VB.Frame Frame3 
      Caption         =   "선택지 출력"
      Height          =   2655
      Left            =   0
      TabIndex        =   12
      Top             =   1680
      Width           =   5295
      Begin VB.ComboBox Combo7 
         Height          =   300
         Left            =   2760
         TabIndex        =   23
         Text            =   "Combo7"
         Top             =   2160
         Width           =   1935
      End
      Begin VB.ComboBox Combo6 
         Height          =   300
         Left            =   840
         TabIndex        =   21
         Text            =   "Combo1"
         Top             =   1800
         Width           =   3855
      End
      Begin VB.ComboBox Combo5 
         Height          =   300
         Left            =   840
         TabIndex        =   20
         Text            =   "Combo1"
         Top             =   1440
         Width           =   3855
      End
      Begin VB.ComboBox Combo4 
         Height          =   300
         Left            =   840
         TabIndex        =   19
         Text            =   "Combo1"
         Top             =   1080
         Width           =   3855
      End
      Begin VB.ComboBox Combo3 
         Height          =   300
         Left            =   840
         TabIndex        =   18
         Text            =   "Combo1"
         Top             =   720
         Width           =   3855
      End
      Begin VB.OptionButton Option6 
         Caption         =   "4"
         Height          =   255
         Left            =   3840
         TabIndex        =   16
         Top             =   360
         Width           =   735
      End
      Begin VB.OptionButton Option5 
         Caption         =   "3"
         Height          =   255
         Left            =   3120
         TabIndex        =   15
         Top             =   360
         Width           =   735
      End
      Begin VB.OptionButton Option4 
         Caption         =   "2"
         Height          =   255
         Left            =   2400
         TabIndex        =   14
         Top             =   360
         Width           =   735
      End
      Begin VB.OptionButton Option3 
         Caption         =   "1"
         Height          =   255
         Left            =   1800
         TabIndex        =   13
         Top             =   360
         Width           =   735
      End
      Begin VB.Label Label3 
         Caption         =   "결과 저장 변수"
         Height          =   255
         Left            =   1440
         TabIndex        =   24
         Top             =   2160
         Width           =   1455
      End
      Begin VB.Label Label2 
         Caption         =   "선택지 개수"
         Height          =   375
         Left            =   240
         TabIndex        =   17
         Top             =   360
         Width           =   1455
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   375
      Left            =   4440
      TabIndex        =   10
      Top             =   5640
      Width           =   975
   End
   Begin VB.Frame Frame2 
      Caption         =   "대화자 이름 설정"
      Height          =   1215
      Left            =   0
      TabIndex        =   8
      Top             =   4680
      Width           =   5295
      Begin VB.CheckBox Check1 
         Caption         =   "대화자 없음"
         Height          =   255
         Left            =   360
         TabIndex        =   11
         Top             =   840
         Width           =   1695
      End
      Begin VB.ComboBox Combo2 
         Height          =   300
         Left            =   360
         TabIndex        =   9
         Text            =   "Combo2"
         Top             =   360
         Width           =   3615
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   375
      Left            =   4320
      TabIndex        =   3
      Top             =   1080
      Width           =   1215
   End
   Begin VB.Frame Frame1 
      Caption         =   "문장 출력"
      Height          =   1215
      Left            =   0
      TabIndex        =   2
      Top             =   120
      Width           =   5415
      Begin VB.OptionButton Option2 
         Caption         =   "우측"
         Height          =   255
         Left            =   2760
         TabIndex        =   7
         Top             =   840
         Width           =   1575
      End
      Begin VB.OptionButton Option1 
         Caption         =   "좌측"
         Height          =   255
         Left            =   1320
         TabIndex        =   6
         Top             =   840
         Width           =   1335
      End
      Begin VB.ComboBox Combo1 
         Height          =   300
         Left            =   1200
         TabIndex        =   4
         Text            =   "Combo1"
         Top             =   360
         Width           =   3855
      End
      Begin VB.Label Label1 
         Caption         =   "표시 문장"
         Height          =   255
         Left            =   240
         TabIndex        =   5
         Top             =   360
         Width           =   855
      End
   End
   Begin VB.ListBox List1 
      Height          =   3660
      ItemData        =   "Form1.frx":0000
      Left            =   5640
      List            =   "Form1.frx":0007
      TabIndex        =   1
      Top             =   240
      Width           =   4815
   End
   Begin VB.TextBox Text1 
      Height          =   2655
      Left            =   5640
      MultiLine       =   -1  'True
      ScrollBars      =   3  '양방향
      TabIndex        =   0
      Top             =   4080
      Width           =   4695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
