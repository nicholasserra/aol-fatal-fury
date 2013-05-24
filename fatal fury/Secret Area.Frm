VERSION 4.00
Begin VB.Form Form22 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Secret"
   ClientHeight    =   4185
   ClientLeft      =   3390
   ClientTop       =   1890
   ClientWidth     =   2550
   Height          =   4650
   Left            =   3330
   LinkTopic       =   "Form22"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4185
   ScaleWidth      =   2550
   ShowInTaskbar   =   0   'False
   Top             =   1485
   Width           =   2670
   Begin VB.TextBox Text1 
      Height          =   1335
      Left            =   240
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   2
      Text            =   "Secret Area.frx":0000
      Top             =   2640
      Width           =   1815
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   480
      Top             =   1200
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Stop"
      Height          =   255
      Left            =   480
      TabIndex        =   1
      Top             =   360
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      Height          =   255
      Left            =   480
      TabIndex        =   0
      Top             =   120
      Width           =   1335
   End
   Begin VB.Label Label1 
      Caption         =   "0"
      Height          =   375
      Left            =   1200
      TabIndex        =   3
      Top             =   1200
      Width           =   975
   End
End
Attribute VB_Name = "Form22"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
timer1.Enabled = True

End Sub

Private Sub Command2_Click()
timer1.Enabled = False
End Sub


Private Sub Form_Load()
Top = 0
Left = 0
FFX.StayOnTop Me
Form1.Hide
End Sub


Private Sub Form_Unload(Cancel As Integer)
Form1.Visible = True
Unload Form22
End Sub


Private Sub timer1_Timer()
ChatSend Text1.Text
Label1.Caption = Label1.Caption + 1
subbas.timeout 0.5
End Sub


