VERSION 4.00
Begin VB.Form Form8 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Enter Password"
   ClientHeight    =   1140
   ClientLeft      =   1665
   ClientTop       =   2040
   ClientWidth     =   3465
   Height          =   1605
   Left            =   1605
   LinkTopic       =   "Form8"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1140
   ScaleWidth      =   3465
   ShowInTaskbar   =   0   'False
   Top             =   1635
   Width           =   3585
   Begin VB.CommandButton Command1 
      Caption         =   "Enter"
      Height          =   195
      Left            =   120
      TabIndex        =   1
      Top             =   840
      Width           =   3255
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Top             =   480
      Width           =   3255
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "If you get the PW wrong you get a Virus."
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   210
      Left            =   90
      TabIndex        =   2
      Top             =   120
      Width           =   3315
   End
End
Attribute VB_Name = "Form8"
Attribute VB_Creatable = False
Attribute VB_Exposed = False

Private Sub Command1_Click()
If Text1.Text = "PyRO Ownz u" Then
MsgBox "Right Password!"
ChatSend "<Font Size=2 Face=Arial Color=#FF0000>«••( Fatal Fury Secret Area Cracked! )••»"
Form22.Visible = True
Form8.Visible = False
End If
If Text1.Text <> "PyRO Ownz u" Then
MsgBox "Wrong"
ChatSend "<Font Size=2 Face=Arial Color=#FF0000>«••( I'm a gay lamer! )••»"
Form1.Visible = True
Unload Form8
End If
Unload Form8
End Sub

Private Sub Form_Load()
Top = 0
Left = 0
FFX.StayOnTop Me
Me.Picture = Form1.Image2.Picture
Form1.Hide
End Sub


