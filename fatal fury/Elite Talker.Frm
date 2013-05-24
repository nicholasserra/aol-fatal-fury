VERSION 4.00
Begin VB.Form Form13 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Elite Talker"
   ClientHeight    =   840
   ClientLeft      =   1845
   ClientTop       =   3360
   ClientWidth     =   2070
   Height          =   1305
   Left            =   1785
   LinkTopic       =   "Form13"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   840
   ScaleWidth      =   2070
   ShowInTaskbar   =   0   'False
   Top             =   2955
   Width           =   2190
   Begin VB.CommandButton Command2 
      Caption         =   "Test"
      Height          =   255
      Left            =   1080
      TabIndex        =   2
      Top             =   480
      Width           =   855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Send"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   855
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "Message"
      Top             =   120
      Width           =   1815
   End
End
Attribute VB_Name = "Form13"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
ChatSend subbas.Text_Elite(Text1.Text)
End Sub


Private Sub Command2_Click()
MsgBox subbas.Text_Elite(Text1.Text)
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
Unload Form13
End Sub


