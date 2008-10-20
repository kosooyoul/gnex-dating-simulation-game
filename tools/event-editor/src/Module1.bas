Attribute VB_Name = "Module1"
Public EventHead(10) As String
Public Const Evp = ","
Public Const Eve = vbTab
Public Const Nts = "/*"
Public Const Nte = "*/"
Public Const EndEvent = "End Event"

Public Function SetEventHead()
    EventHead(0) = "DrawMessage"
    EventHead(1) = "DrawSelect"
    EventHead(2) = "SetName"
    EventHead(3) = "IfNotEqual"
    EventHead(4) = "IfEqual"
    EventHead(5) = "ChangeBack"
    EventHead(6) = "ChangeChara"
    EventHead(7) = "SetDate"
    EventHead(8) = "SetTime"
    EventHead(9) = "SetWeather"
End Function

Public Function AddEvent(Cmd As String)
    Form1.EventList.AddItem (Cmd)
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
            End Select
            Head = Left(Source, InStr(Source, vbTab) - 1)
            ArrayCode = ArrayCode + Trim(Str(HeadNumber)) + Head + "," + vbCrLf
            
        End If
        
    Next LineCount
    
    Form1.Text1.Text = ArrayCode & "-1"
    
End Function
