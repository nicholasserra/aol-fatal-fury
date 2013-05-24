VERSION 4.00
Begin VB.Form Form15 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Elite IMer"
   ClientHeight    =   1185
   ClientLeft      =   2295
   ClientTop       =   1710
   ClientWidth     =   2055
   Height          =   1650
   Left            =   2235
   LinkTopic       =   "Form15"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1185
   ScaleWidth      =   2055
   ShowInTaskbar   =   0   'False
   Top             =   1305
   Width           =   2175
   Begin VB.CommandButton Command2 
      Caption         =   "Test"
      Height          =   255
      Left            =   1080
      TabIndex        =   3
      Top             =   840
      Width           =   855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Send"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   840
      Width           =   855
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Text            =   "Message"
      Top             =   480
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "Screen Name"
      Top             =   120
      Width           =   1815
   End
End
Attribute VB_Name = "Form15"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
InstantMessage Text1.Text, text2.Text = subbas.Text_Elite(Text1.Text)
End Sub


Private Sub Command2_Click()
MsgBox subbas.Text_Elite(text2.Text)
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
Unload Form15
End Sub


Private Sub text2_Change()
text2.Text = Jolt.Text_Elite(Text1.Text)
End Sub


