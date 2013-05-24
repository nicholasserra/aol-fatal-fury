VERSION 4.00
Begin VB.Form Form25 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Mail Me"
   ClientHeight    =   2085
   ClientLeft      =   1140
   ClientTop       =   1650
   ClientWidth     =   2880
   Height          =   2550
   Left            =   1080
   LinkTopic       =   "Form25"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2085
   ScaleWidth      =   2880
   ShowInTaskbar   =   0   'False
   Top             =   1245
   Width           =   3000
   Begin VB.CommandButton Command1 
      Caption         =   "Send"
      Height          =   255
      Left            =   1440
      TabIndex        =   2
      Top             =   120
      Width           =   1215
   End
   Begin VB.TextBox Text2 
      Height          =   1455
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Text            =   "Mail Me.frx":0000
      Top             =   480
      Width           =   2535
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "Subject"
      Top             =   120
      Width           =   1215
   End
End
Attribute VB_Name = "Form25"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Text1.Text = "" And Text1.Text = "" Then
MsgBox "You have not completely filled out this form!"
 Else
Jolt.SendMail "ne088@angelfire.com", Text1.Text, text2.Text
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
Unload Form25
End Sub


