VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   6510
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6090
   LinkTopic       =   "Form2"
   ScaleHeight     =   6510
   ScaleWidth      =   6090
   StartUpPosition =   3  'Windows 기본값
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Text            =   "Text1"
      Top             =   5160
      Width           =   5775
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Command3"
      Height          =   375
      Left            =   4560
      TabIndex        =   3
      Top             =   5640
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   375
      Left            =   3120
      TabIndex        =   2
      Top             =   5640
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   375
      Left            =   1800
      TabIndex        =   1
      Top             =   5640
      Width           =   1215
   End
   Begin VB.ListBox List1 
      Height          =   5100
      ItemData        =   "Form2.frx":0000
      Left            =   0
      List            =   "Form2.frx":0002
      TabIndex        =   0
      Top             =   0
      Width           =   5895
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    List1.AddItem Text1.Text, List1.ListIndex
End Sub

Private Sub Command2_Click()
    List1.List(List1.ListIndex) = Text1.Text
End Sub

Private Sub Command3_Click()
    List1.RemoveItem List1.ListIndex
End Sub
