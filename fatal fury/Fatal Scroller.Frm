VERSION 4.00
Begin VB.Form Form34 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Fatal Fury Scroller"
   ClientHeight    =   495
   ClientLeft      =   3150
   ClientTop       =   2445
   ClientWidth     =   2040
   Height          =   960
   Left            =   3090
   LinkTopic       =   "Form34"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   495
   ScaleWidth      =   2040
   ShowInTaskbar   =   0   'False
   Top             =   2040
   Width           =   2160
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   480
      Top             =   960
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1815
   End
End
Attribute VB_Name = "Form34"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Command1.Caption = "Start" Then
timer1.Enabled = True
Command1.Caption = "Stop"
 Else
timer1.Enabled = False
Command1.Caption = "Start"
End If
End Sub


Private Sub Form_Load()
Top = 0
Left = 0
Me.Picture = Form1.Image2.Picture
Form1.Hide
FFX.StayOnTop Me
End Sub


Private Sub Form_Unload(Cancel As Integer)
If timer1.Enabled = True Then
timer1.Enabled = False
End If
Form1.Visible = True
Unload Me
End Sub


Private Sub timer1_Timer()
ChatSend "Fatal Fury"
subbas.timeout 0.7
End Sub


