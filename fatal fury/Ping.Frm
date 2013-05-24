VERSION 4.00
Begin VB.Form Form19 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "IP Pinger"
   ClientHeight    =   2190
   ClientLeft      =   3345
   ClientTop       =   2265
   ClientWidth     =   3135
   Height          =   2655
   Left            =   3285
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2190
   ScaleWidth      =   3135
   ShowInTaskbar   =   0   'False
   Top             =   1860
   Width           =   3255
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   120
      TabIndex        =   2
      Text            =   "127.0.0.1"
      Top             =   120
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   1575
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Text            =   "Ping.frx":0000
      Top             =   480
      Width           =   2895
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Ping"
      Height          =   255
      Left            =   1800
      TabIndex        =   0
      Top             =   120
      Width           =   1215
   End
End
Attribute VB_Name = "Form19"
Attribute VB_Creatable = False
Attribute VB_Exposed = False



Private Sub Command1_Click()
On Error GoTo errorhandler
Dim ECHO As ICMP_ECHO_REPLY
Dim pos As Integer
Text1.Text = ""
'ping an ip address, passing the
'address and the ECHO structure
 Call Ping(text2.Text, ECHO, "Fatal Fury IP Pinger")

'display the results from the ECHO structure

'prints status code
AddText "" & GetStatusCode(ECHO.status)
'The address that actually replied
AddText "" & ECHO.Address
'Trip time (note: routers tend to lie.  The time is only an estimate)
AddText "" & ECHO.RoundTripTime & " ms"
'prints data size (as specified)
AddText "" & ECHO.DataSize & " bytes"

If Left$(ECHO.Data, 1) <> Chr$(0) Then
pos = InStr(ECHO.Data, Chr$(0))
'If ip success then print returned Data
End If
'Part of the ICMP reply structure
AddText "" & ECHO.DataPointer
errorhandler:
 If Err = 9 Then
 MsgBox "Subscript Out of Range", vbCritical, "Out of Range"
 End If
 Resume Next
End Sub



'I didn't write this code myself... but I have used this in several apps and
'found it *very* useful so I decided to share it!
'I do, though, understand the code well so if there are any questions ask away!
'nero@gti.net

'(I have code to change a hostname to an IP.  This would make your application more friendly)
Sub AddText(dTEXT As String)
Text1.Text = Text1.Text & dTEXT & Chr(13) & Chr(10)
End Sub


Private Sub Form_Load()
Top = 0
Left = 0
FFX.StayOnTop Me
Me.Picture = Form1.image2.Picture
Form1.Hide
End Sub


Private Sub Form_Unload(Cancel As Integer)
Form1.Visible = True
Unload Me
End Sub


