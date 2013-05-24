VERSION 4.00
Begin VB.Form Form2 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Chat Scroller"
   ClientHeight    =   840
   ClientLeft      =   1590
   ClientTop       =   1740
   ClientWidth     =   2100
   Height          =   1305
   Left            =   1530
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   840
   ScaleWidth      =   2100
   ShowInTaskbar   =   0   'False
   Top             =   1335
   Width           =   2220
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   50
      Left            =   480
      Top             =   1800
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Start"
      Height          =   255
      Left            =   480
      TabIndex        =   2
      Top             =   480
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Stop"
      Height          =   270
      Left            =   480
      TabIndex        =   1
      Top             =   480
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   330
      Left            =   120
      TabIndex        =   0
      Text            =   "What to scroll"
      Top             =   90
      Width           =   1920
   End
End
Attribute VB_Name = "Form2"
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
Top = 0
Left = 0
FFX.StayOnTop Me

Me.Picture = Form1.Image2.Picture
Form1.Hide

End Sub


Private Sub Form_Unload(Cancel As Integer)
Form1.Visible = True
Unload Form2
End Sub


Private Sub timer1_Timer()
ChatSend Text1.Text
subbas.timeout 0.7
End Sub


