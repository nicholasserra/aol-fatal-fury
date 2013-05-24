VERSION 4.00
Begin VB.Form Form5 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "MassMailer"
   ClientHeight    =   3150
   ClientLeft      =   2865
   ClientTop       =   2145
   ClientWidth     =   4065
   Height          =   3615
   Left            =   2805
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3150
   ScaleWidth      =   4065
   ShowInTaskbar   =   0   'False
   Top             =   1740
   Width           =   4185
   Begin VB.CommandButton Command3 
      Caption         =   "Add Screen Name"
      Height          =   255
      Left            =   2280
      TabIndex        =   7
      Top             =   600
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Send Mail"
      Height          =   255
      Left            =   2280
      TabIndex        =   6
      Top             =   360
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Add Room"
      Height          =   255
      Left            =   2280
      TabIndex        =   5
      Top             =   120
      Width           =   1695
   End
   Begin VB.TextBox Text4 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   1335
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   3
      Text            =   "MassMail.frx":0000
      Top             =   1680
      Width           =   3855
   End
   Begin VB.TextBox Text3 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Text            =   "Subject"
      Top             =   1200
      Width           =   3855
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   975
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Top             =   120
      Width           =   2055
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   285
      Left            =   2280
      TabIndex        =   0
      Text            =   "Screen Name"
      Top             =   840
      Width           =   1695
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Send "
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Comic Sans MS"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   1935
      TabIndex        =   4
      Top             =   2280
      Width           =   1710
   End
End
Attribute VB_Name = "Form5"
Attribute VB_Creatable = False
Attribute VB_Exposed = False

Private Sub Command1_Click()
subbas.IsUserOnline
If subbas.IsUserOnline = 0 Then
MsgBox "Not Online", vbCritical, "Sign On"
End If
If subbas.IsUserOnline = 1 Then
AddRoomToTextbox text2, False
End If
End Sub

Private Sub Command2_Click()
subbas.IsUserOnline
If subbas.IsUserOnline = 0 Then
MsgBox "Not Online", vbCritical, "Sign On"
End If
If subbas.IsUserOnline = 1 Then
Dim A
A = "-Fatal Fury MaSSMaiLeR By: Nex"
Jolt.SendMail text2.Text, Text3.Text, Text4.Text & A
End If
End Sub


Private Sub Command3_Click()
text2.Text = text2.Text + Text1.Text + ","

End Sub








Private Sub Form_Load()
Form1.Hide
FFX.StayOnTop Me
Me.Picture = Form1.image2.Picture
Top = 0
Left = 0

End Sub

Private Sub Form_Unload(Cancel As Integer)
Form1.Visible = True
Unload Form5
End Sub


Private Sub Label3_Click()
subbas.SendMail text2.Text, Text3.Text, Text4.Text
End Sub


