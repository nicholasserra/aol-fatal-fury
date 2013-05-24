VERSION 4.00
Begin VB.Form Form4 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "IM Bomber"
   ClientHeight    =   570
   ClientLeft      =   1230
   ClientTop       =   2490
   ClientWidth     =   3450
   Height          =   1035
   Left            =   1170
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   570
   ScaleWidth      =   3450
   ShowInTaskbar   =   0   'False
   Top             =   2085
   Width           =   3570
   Begin VB.CommandButton Command2 
      Caption         =   "Start"
      Height          =   255
      Left            =   2280
      TabIndex        =   3
      Top             =   120
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Stop"
      Height          =   255
      Left            =   2280
      TabIndex        =   2
      Top             =   120
      Width           =   1095
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   480
      Top             =   2040
   End
   Begin VB.TextBox Text2 
      Height          =   1215
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Text            =   "IMBomb.frx":0000
      Top             =   1320
      Width           =   3135
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "Screen Name"
      Top             =   120
      Width           =   2055
   End
   Begin VB.Label Label1 
      Caption         =   "<Font Size=""3"" Face=""Arial"" Color=""BLACK"">"
      Height          =   615
      Left            =   960
      TabIndex        =   4
      Top             =   3000
      Width           =   1575
   End
End
Attribute VB_Name = "Form4"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
timer1.Enabled = False
timer1.Enabled = False
Command2.Visible = True
Command1.Visible = False
End Sub

Private Sub Command2_Click()

timer1.Enabled = True
Command2.Visible = False
Command1.Visible = True

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
Unload Form4
End Sub


Private Sub timer1_Timer()
InstantMessage Text1.Text, Label1.Caption & text2.Text
Jolt.timeout 0.7

End Sub


