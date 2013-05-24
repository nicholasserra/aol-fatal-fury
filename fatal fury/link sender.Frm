VERSION 4.00
Begin VB.Form Form27 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Link Sender"
   ClientHeight    =   1185
   ClientLeft      =   2850
   ClientTop       =   1695
   ClientWidth     =   2040
   Height          =   1650
   Left            =   2790
   LinkTopic       =   "Form27"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1185
   ScaleWidth      =   2040
   ShowInTaskbar   =   0   'False
   Top             =   1290
   Width           =   2160
   Begin VB.CommandButton Command1 
      Caption         =   "Send"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   840
      Width           =   1815
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Text            =   "What To Say"
      Top             =   480
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "URL"
      Top             =   120
      Width           =   1815
   End
   Begin VB.Label Label2 
      Caption         =   """>"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   1680
      Width           =   1575
   End
   Begin VB.Label Label1 
      Caption         =   "< a href="""
      Height          =   375
      Left            =   120
      TabIndex        =   3
      Top             =   1200
      Width           =   1575
   End
End
Attribute VB_Name = "Form27"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
ChatSend Label1.Caption & Text1.Text & Label2.Caption & text2.Text & "</a>"

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


