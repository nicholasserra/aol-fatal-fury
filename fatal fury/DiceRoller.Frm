VERSION 4.00
Begin VB.Form Form6 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Dice Roller Scroller"
   ClientHeight    =   510
   ClientLeft      =   1515
   ClientTop       =   1680
   ClientWidth     =   2040
   Height          =   975
   Left            =   1455
   LinkTopic       =   "Form6"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   510
   ScaleWidth      =   2040
   ShowInTaskbar   =   0   'False
   Top             =   1275
   Width           =   2160
   Begin VB.CommandButton Command2 
      Caption         =   "Start"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   1815
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   50
      Left            =   480
      Top             =   0
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Stop"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1815
   End
End
Attribute VB_Name = "Form6"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
timer1.Enabled = False
Command2.Visible = True
Command1.Visible = False
End Sub

Private Sub Command2_Click()
subbas.IsUserOnline
If subbas.IsUserOnline = 0 Then
MsgBox "Not Online", vbCritical, "Sign On"
End If
If subbas.IsUserOnline = 1 Then
timer1.Enabled = True
Command2.Visible = False
Command1.Visible = True
End If
End Sub


Private Sub Form_Load()
Form1.Hide

FFX.StayOnTop Me
Me.Picture = Form1.Image2.Picture
Top = 0
Left = 0

End Sub

Private Sub Form_Unload(Cancel As Integer)
Form1.Visible = True
Unload Form6
End Sub


Private Sub timer1_Timer()
ChatSend "//roll"
subbas.timeout 0.7

End Sub


