VERSION 4.00
Begin VB.Form Form18 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Mail Punter"
   ClientHeight    =   1230
   ClientLeft      =   3540
   ClientTop       =   2295
   ClientWidth     =   2460
   Height          =   1695
   Left            =   3480
   LinkTopic       =   "Form18"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Mail Punt.frx":0000
   ScaleHeight     =   1230
   ScaleWidth      =   2460
   ShowInTaskbar   =   0   'False
   Top             =   1890
   Width           =   2580
   Begin VB.TextBox Text3 
      Height          =   5415
      Left            =   3960
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   3
      Text            =   "Mail Punt.frx":8AE3
      Top             =   0
      Width           =   4575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Send Punt"
      Height          =   285
      Left            =   120
      TabIndex        =   2
      Top             =   840
      Width           =   2175
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Text            =   "Subject"
      Top             =   480
      Width           =   2175
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "Screen Name"
      Top             =   120
      Width           =   2175
   End
End
Attribute VB_Name = "Form18"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
Jolt.SendMail Text1.Text, text2.Text, Text3.Text
End Sub

Private Sub Form_Load()
Top = 0
Left = 0
FFX.StayOnTop Me
Form1.Hide
End Sub


Private Sub Form_Unload(Cancel As Integer)
Form1.Visible = True
Unload Form18
End Sub


Private Sub Label1_Click()

End Sub


