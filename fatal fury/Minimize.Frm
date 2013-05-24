VERSION 4.00
Begin VB.Form Form10 
   BorderStyle     =   0  'None
   Caption         =   "Minimize"
   ClientHeight    =   240
   ClientLeft      =   4410
   ClientTop       =   2595
   ClientWidth     =   2475
   ControlBox      =   0   'False
   Height          =   705
   Left            =   4350
   LinkTopic       =   "Form9"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   240
   ScaleWidth      =   2475
   ShowInTaskbar   =   0   'False
   Top             =   2190
   Width           =   2595
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "X"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   2190
      TabIndex        =   0
      Top             =   -45
      Width           =   195
   End
   Begin VB.Image Image1 
      Height          =   255
      Left            =   0
      Picture         =   "Minimize.frx":0000
      Top             =   0
      Width           =   3060
   End
End
Attribute VB_Name = "Form10"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Text1.Text = "Nex Ownz u" Then
MsgBox "Right Password", vbExclamation, "Right Password"
ChatSend Label1.Caption & "!¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤!ATTENTION!¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤!"
subbas.timeout 0.5
ChatSend Label1.Caption & "¤ Fatal Fury Secret Area Has Been Accessed! ¤"
subbas.timeout 0.5
ChatSend Label1.Caption & "!¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤!ATTENTION!¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤!"
End If
If Text1.Text <> "Nex Ownz u" Then
MsgBox "Wrong Password", vbCritical, "Wrong Password"
Text1.Text = ""
End If
End Sub

Private Sub Form_Load()
Form10.Visible = True
Form10.Top = -1

Form10.Left = 4000
Form1.Hide
FFX.StayOnTop Me

End Sub

Private Sub IMOFF_Click()
subbas.IMsOff
End Sub

Private Sub IMON_Click()
subbas.IMsOn
End Sub


Private Sub Label1_Click()
Form1.Visible = True
Unload Form10
End Sub


Private Sub Massmail_Click()

End Sub


