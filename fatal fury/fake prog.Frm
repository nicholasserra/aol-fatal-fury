VERSION 4.00
Begin VB.Form Form26 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Fake Prog"
   ClientHeight    =   1575
   ClientLeft      =   1140
   ClientTop       =   1650
   ClientWidth     =   3750
   Height          =   2040
   Left            =   1080
   LinkTopic       =   "Form26"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1575
   ScaleWidth      =   3750
   ShowInTaskbar   =   0   'False
   Top             =   1245
   Width           =   3870
   Begin VB.CommandButton Command1 
      Caption         =   "send"
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   1200
      Width           =   3495
   End
   Begin VB.TextBox Text6 
      Height          =   285
      Left            =   120
      TabIndex        =   5
      Text            =   "<~("
      Top             =   840
      Width           =   375
   End
   Begin VB.TextBox Text5 
      Height          =   285
      Left            =   120
      TabIndex        =   4
      Text            =   "<~("
      Top             =   480
      Width           =   375
   End
   Begin VB.TextBox Text4 
      Height          =   285
      Left            =   120
      TabIndex        =   3
      Text            =   "<~("
      Top             =   120
      Width           =   375
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   600
      TabIndex        =   2
      Text            =   "Loaded"
      Top             =   840
      Width           =   3015
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   600
      TabIndex        =   1
      Text            =   "By Who"
      Top             =   480
      Width           =   3015
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   600
      TabIndex        =   0
      Text            =   "Prog Name"
      Top             =   120
      Width           =   3015
   End
End
Attribute VB_Name = "Form26"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
ChatSend Text4.Text & " " & Text1.Text
subbas.timeout 0.5
ChatSend Text5.Text & " " & text2.Text
subbas.timeout 0.5
ChatSend Text6.Text & " " & Text3.Text
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


