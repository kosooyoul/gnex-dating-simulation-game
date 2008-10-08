VERSION 5.00
Begin VB.Form Event7 
   BorderStyle     =   1  '단일 고정
   Caption         =   "7 : 날짜 설정"
   ClientHeight    =   5955
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7290
   Icon            =   "Event7.frx":0000
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5955
   ScaleWidth      =   7290
   StartUpPosition =   3  'Windows 기본값
   Begin VB.Frame Frame7 
      Caption         =   "날짜 설정"
      Height          =   1215
      Left            =   120
      TabIndex        =   8
      Top             =   120
      Width           =   5295
      Begin VB.ComboBox EventYear 
         Height          =   300
         Left            =   360
         TabIndex        =   11
         Text            =   "Combo13"
         Top             =   360
         Width           =   1095
      End
      Begin VB.ComboBox EventMonth 
         Height          =   300
         Left            =   1560
         TabIndex        =   10
         Text            =   "Combo14"
         Top             =   360
         Width           =   1095
      End
      Begin VB.ComboBox EventDay 
         Height          =   300
         Left            =   2760
         TabIndex        =   9
         Text            =   "Combo15"
         Top             =   360
         Width           =   1215
      End
   End
   Begin VB.Frame Frame8 
      Caption         =   "시간 설정"
      Height          =   1215
      Left            =   120
      TabIndex        =   5
      Top             =   1440
      Width           =   5295
      Begin VB.ComboBox EventMinute 
         Height          =   300
         Left            =   1560
         TabIndex        =   7
         Text            =   "Combo14"
         Top             =   360
         Width           =   1095
      End
      Begin VB.ComboBox EventHour 
         Height          =   300
         Left            =   360
         TabIndex        =   6
         Text            =   "Combo13"
         Top             =   360
         Width           =   1095
      End
   End
   Begin VB.Frame Frame9 
      Caption         =   "시간 경과"
      Height          =   1215
      Left            =   120
      TabIndex        =   2
      Top             =   4080
      Width           =   5295
      Begin VB.ComboBox EventElementCount 
         Height          =   300
         Left            =   1440
         TabIndex        =   4
         Text            =   "Combo13"
         Top             =   360
         Width           =   2775
      End
      Begin VB.ComboBox EventElement 
         Height          =   300
         Left            =   480
         TabIndex        =   3
         Text            =   "Combo1"
         Top             =   360
         Width           =   735
      End
   End
   Begin VB.Frame Frame10 
      Caption         =   "날씨 설정"
      Height          =   1215
      Left            =   120
      TabIndex        =   0
      Top             =   2760
      Width           =   5295
      Begin VB.ComboBox EventWeather 
         Height          =   300
         Left            =   600
         TabIndex        =   1
         Text            =   "Combo1"
         Top             =   480
         Width           =   2295
      End
   End
End
Attribute VB_Name = "Event7"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
