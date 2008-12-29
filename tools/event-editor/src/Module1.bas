Attribute VB_Name = "Module1"
Public EventHead(10) As String
Public EventCNT(10) As Integer
Public Const Evp = ","
Public Const Eve = vbTab
Public Const Nts = "/*"
Public Const Nte = "*/"
Public Const EndEvent = "End Event"


Option Explicit
Public Server As String
Public PortNum As Integer
Public UserName As String

Public ImgCode As String
Public RCVMode As Boolean

Public XX As Single
Public YY As Single

Public Declare Function SetWindowPos Lib "user32" (ByVal hWnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cX As Long, ByVal cY As Long, ByVal wFlags As Long) As Long
Public Declare Function SetLayeredWindowAttributes Lib "user32" (ByVal hWnd As Long, ByVal crKey As Long, ByVal bAlpha As Byte, ByVal dwFlags As Long) As Long
Public Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hWnd As Long, ByVal nIndex As Long) As Long
Public Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hWnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long

Public Const HWND_TOPMOST = -1 '-1
Public Const HWND_NOTOPMOST = -2 '-2 창 보이기 순서
Public Const SWP_NOMOVE = &H2
Public Const SWP_NOSIZE = &H1
Public Const SWP_NOACTIVATE = &H10
Public Const SWP_SHOWWINDOW = &H40
Public Const TOPMOST_FLAGS = SWP_NOMOVE Or SWP_NOSIZE

Public Const LWA_ALPHA = &H2
Public Const ULW_ALPHA = &H2
Public Const GWL_EXSTYLE = (-20)
Public Const WS_EX_LAYERED = &H80000

Public Sub MakeTransparentForm(TheForm As Form, Degree As Long) '
    Dim WStyle As Long
    
    On Error Resume Next
    
    WStyle = GetWindowLong(TheForm.hWnd, GWL_EXSTYLE)
    WStyle = WStyle Or WS_EX_LAYERED
    SetWindowLong TheForm.hWnd, GWL_EXSTYLE, WStyle
    SetLayeredWindowAttributes TheForm.hWnd, 0, Degree, LWA_ALPHA
End Sub

Public Sub AlwaysOnTop(TheForm As Form, Toggle As Boolean) '창 표시 순서
    If Toggle = True Then
        SetWindowPos TheForm.hWnd, HWND_TOPMOST, 0, 0, 0, 0, TOPMOST_FLAGS
    Else
        SetWindowPos TheForm.hWnd, HWND_NOTOPMOST, 0, 0, 0, 0, TOPMOST_FLAGS
    End If
End Sub

Public Function SetEventHead()
    EventHead(0) = "DrawMessage"
    EventHead(1) = "DrawSelect"
    EventHead(2) = "SetName"
    EventHead(3) = "IfNotEqual"
    EventHead(4) = "IfEqual"
    EventHead(5) = "ChangeBack"
    EventHead(6) = "ChangeChara"
    EventHead(7) = "Eye"
    EventHead(8) = "DrawChapter"
    EventHead(9) = "Music"
    
    EventCNT(0) = 2
    EventCNT(1) = 7
    EventCNT(2) = 3
    EventCNT(3) = 4
    EventCNT(4) = 4
    EventCNT(5) = 4
    EventCNT(6) = 3
    EventCNT(7) = 2
    EventCNT(8) = 2
    EventCNT(9) = 2
End Function

Public Function AddEvent(Cmd As String)
    'Form1.EventList.AddItem (Cmd)
    On Error GoTo Err
    Form1.EventList.AddItem (Cmd), Form1.EventList.ListIndex

Err:
    If Err.Number Then Form1.EventList.AddItem (Cmd), 0

End Function

Public Function ResetEventList()
    Form1.EventList.Clear
    'Form1.EventList.AddItem EndEvent
End Function

Public Function CommandToArray()
    Dim Source As String
    Dim ArrayCode As String
    Dim Head As String
    Dim HeadNumber As Integer
    Dim LineCount As Integer

    ArrayCode = ""

    For LineCount = 0 To Form1.EventList.ListCount
        Source = Form1.EventList.List(LineCount)
        
        If Left(Source, 2) = "//" Then  '주석은 그대로
            ArrayCode = ArrayCode + Source + vbCrLf
        
        ElseIf InStr(Source, ",") > 0 Then
            Head = Left(Source, InStr(Source, ",") - 1)
            Source = Mid(Source, InStr(Source, ","))

            Select Case Head
                Case EventHead(0)
                    HeadNumber = 0
                Case EventHead(1)
                    HeadNumber = 1
                Case EventHead(2)
                    HeadNumber = 2
                Case EventHead(3)
                    HeadNumber = 3
                Case EventHead(4)
                    HeadNumber = 4
                Case EventHead(5)
                    HeadNumber = 5
                Case EventHead(6)
                    HeadNumber = 6
                Case EventHead(7)
                    HeadNumber = 33
                Case EventHead(8)
                    HeadNumber = 32
                Case EventHead(9)
                    HeadNumber = 11
            End Select
            Head = Left(Source, InStr(Source, vbTab) - 1)
            ArrayCode = ArrayCode + Trim(Str(HeadNumber)) + Head + "," + vbCrLf
            
        End If
        
    Next LineCount
    
    Form1.Text1.Text = ArrayCode & "-1"
    
End Function

Public Function GetCount()
    Dim Source As String
    Dim ArrayCodeCNT As Integer
    Dim Head As String
    Dim HeadNumber As Integer
    Dim LineCount As Integer

    ArrayCodeCNT = 0

    For LineCount = 0 To Form1.EventList.ListIndex - 1
        Source = Form1.EventList.List(LineCount)
        
        If InStr(Source, ",") > 0 Then
            Head = Left(Source, InStr(Source, ",") - 1)
            Source = Mid(Source, InStr(Source, ","))
                    
                    
            Select Case Head
                Case EventHead(0)
                    ArrayCodeCNT = ArrayCodeCNT + EventCNT(0)
                Case EventHead(1)
                    ArrayCodeCNT = ArrayCodeCNT + EventCNT(1)
                Case EventHead(2)
                    ArrayCodeCNT = ArrayCodeCNT + EventCNT(2)
                Case EventHead(3)
                    ArrayCodeCNT = ArrayCodeCNT + EventCNT(3)
                Case EventHead(4)
                    ArrayCodeCNT = ArrayCodeCNT + EventCNT(4)
                Case EventHead(5)
                    ArrayCodeCNT = ArrayCodeCNT + EventCNT(5)
                Case EventHead(6)
                    ArrayCodeCNT = ArrayCodeCNT + EventCNT(6)
                Case EventHead(7)
                    ArrayCodeCNT = ArrayCodeCNT + EventCNT(7)
                Case EventHead(8)
                    ArrayCodeCNT = ArrayCodeCNT + EventCNT(8)
                Case EventHead(9)
                    ArrayCodeCNT = ArrayCodeCNT + EventCNT(9)
            End Select
            
        End If
        
    Next LineCount
    
    MsgBox "현재라인 시작 카운트는 [" & ArrayCodeCNT & "] 입니다."
    
End Function
