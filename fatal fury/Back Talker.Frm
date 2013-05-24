VERSION 4.00
Begin VB.Form Form31 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Backward Talker"
   ClientHeight    =   795
   ClientLeft      =   2415
   ClientTop       =   4485
   ClientWidth     =   2505
   Height          =   1260
   Left            =   2355
   LinkTopic       =   "Form31"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   795
   ScaleWidth      =   2505
   ShowInTaskbar   =   0   'False
   Top             =   4080
   Width           =   2625
   Begin VB.CommandButton Command1 
      Caption         =   "send"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   2295
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "Message"
      Top             =   120
      Width           =   2295
   End
End
Attribute VB_Name = "Form31"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
ChatSend Text1.Text
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
Unload Me
End Sub


Private Sub Text1_Change()
SendKeys "{left}"
End Sub


