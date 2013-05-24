VERSION 4.00
Begin VB.Form Form21 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Port Scanner"
   ClientHeight    =   900
   ClientLeft      =   2010
   ClientTop       =   2655
   ClientWidth     =   4815
   Height          =   1365
   Left            =   1950
   LinkTopic       =   "Form21"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   900
   ScaleWidth      =   4815
   ShowInTaskbar   =   0   'False
   Top             =   2250
   Width           =   4935
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   2040
      Top             =   1320
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Stop"
      Height          =   255
      Left            =   2400
      TabIndex        =   1
      TabStop         =   0   'False
      Top             =   480
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Check"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      TabStop         =   0   'False
      Top             =   480
      Width           =   2175
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   480
      Top             =   1800
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Label Status 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Status"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   1920
      TabIndex        =   3
      Top             =   120
      Width           =   450
   End
End
Attribute VB_Name = "Form21"
Attribute VB_Creatable = False
Attribute VB_Exposed = False



Private Sub Command1_Click()
Timer1.Enabled = True
End Sub


Private Sub Command2_Click()
Text1.Enabled = True
Timer1.Enabled = False
    Winsock1.Close
End Sub


Private Sub Form_Load()
Top = 0
Left = 0
FFX.StayOnTop Me
Form1.Hide
End Sub

Private Sub Form_Unload(Cancel As Integer)
Winsock1.Close
Form1.Visible = True
Unload Form21
End Sub


Private Sub Text1_Change()
    Dim iCount As Integer
    Dim sChar As String
    Static sPrevText As String
    


    With Text1


        For iCount = 1 To Len(.Text)
            sChar = Mid$(.Text, iCount, 1)


            Select Case sChar
                Case "0" To "9", "." '<--- Place "allowed characters" on this line.
                Case vbCr, vbLf '<--- Required For MultiLine textboxes.
                Case Else
                Beep
                .Text = sPrevText
                .SelStart = iCount - 1
                Exit Sub
            End Select
    Next iCount
    sPrevText = .Text
End With

End Sub

Private Sub Timer1_Timer()
Dim i
p = Text1.Text
If p = "" Then
    MsgBox "Please enter the valid ip"
Else
Text1.Enabled = False
    status.Caption = "-"
        For i = "1" To "65530"
            If Timer1.Enabled = False Then
            Exit Sub
             Else
            status.Caption = "-"
            Winsock1.Connect p, i
            status.Caption = "Checking port: " & p & " : " & i
            Wait (2)
            End If
            If status.Caption = "Found" Then
                MsgBox "Found Port- " & i
                Beep
                status.Caption = ""
            End If
            Winsock1.Close
        Next i
End If
End Sub

Private Sub Winsock1_Connect()
status.Caption = "Found"
End Sub

Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
Dim TheData As String
    Winsock1.GetData TheData, vbString
End Sub


Function Wait(numseconds As Long)
    Dim start As Variant, rightnow As Variant
    Dim HourDiff As Variant, MinuteDiff As Variant, SecondDiff As Variant
    Dim TotalMinDiff As Variant, TotalSecDiff As Variant
    start = Now
    While True
        rightnow = Now
        HourDiff = Hour(rightnow) - Hour(start)
        MinuteDiff = Minute(rightnow) - Minute(start)
        SecondDiff = Second(rightnow) - Second(start) + 1
        If SecondDiff = 60 Then
            MinuteDiff = MinuteDiff + 1 ' Add 1 to minute.
            SecondDiff = 0 ' Zero seconds.
        End If
        If MinuteDiff = 60 Then
            HourDiff = HourDiff + 1 ' Add 1 to hour.
            MinuteDiff = 0 ' Zero minutes.
        End If
        TotalMinDiff = (HourDiff * 60) + MinuteDiff ' Get totals.
        TotalSecDiff = (TotalMinDiff * 60) + SecondDiff
        If TotalSecDiff >= numseconds Then
            Exit Function
        End If
        DoEvents
            'Debug.Print rightnow
        Wend
End Function

Private Sub Winsock2_DataArrival(ByVal bytesTotal As Long)

End Sub

Private Sub Winsock2_Error(ByVal Number As Integer, Description As String, ByVal Scode As Long, ByVal Source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)

End Sub


