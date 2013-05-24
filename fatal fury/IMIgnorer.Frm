VERSION 4.00
Begin VB.Form Form17 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "IM Ignorer"
   ClientHeight    =   855
   ClientLeft      =   1140
   ClientTop       =   1650
   ClientWidth     =   2520
   Height          =   1320
   Left            =   1080
   LinkTopic       =   "Form17"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   855
   ScaleWidth      =   2520
   ShowInTaskbar   =   0   'False
   Top             =   1245
   Width           =   2640
   Begin VB.CommandButton Command2 
      Caption         =   "UnIgnore"
      Height          =   255
      Left            =   1320
      TabIndex        =   2
      Top             =   480
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Ignore"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   1095
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "Screen Name"
      Top             =   120
      Width           =   2295
   End
End
Attribute VB_Name = "Form17"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
subbas.IMIgnore Text1.Text
MsgBox "Now Ignoring " & Text1.Text, vbInformation, "IM Ignorer"
End Sub


Private Sub Command2_Click()
subbas.IMUnIgnore Text1.Text
MsgBox "You Are Currently Accepting IMs From " & Text1.Text, vbInformation, "IM Ignorer"
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
Unload Form17
End Sub


