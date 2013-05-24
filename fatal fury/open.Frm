VERSION 4.00
Begin VB.Form Form0 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   4500
   ClientLeft      =   2610
   ClientTop       =   2370
   ClientWidth     =   4515
   Height          =   4965
   Left            =   2550
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4500
   ScaleWidth      =   4515
   ShowInTaskbar   =   0   'False
   Top             =   1965
   Width           =   4635
   Begin VB.PictureBox Picture1 
      BorderStyle     =   0  'None
      Height          =   4500
      Left            =   0
      Picture         =   "open.frx":0000
      ScaleHeight     =   4500
      ScaleWidth      =   4500
      TabIndex        =   1
      Top             =   0
      Width           =   4500
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   3960
      TabIndex        =   0
      Top             =   1560
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   4500
      Left            =   0
      Top             =   0
      Width           =   4500
   End
End
Attribute VB_Name = "Form0"
Attribute VB_Creatable = False
Attribute VB_Exposed = False

Private Sub Form_Load()

CenterForm Form0
FFX.StayOnTop Me
Form0.Visible = True
Jolt.Playwav "startup.wav"

ChatSend "<Font Size=2 Face=Arial Color=#00FF00>·÷±¦[ Fatal Fury ¹·º"
subbas.timeout 0.5
ChatSend "<Font Size=2 Face=Arial Color=#00FF00>·÷±¦[ By : Nex"
subbas.timeout 0.5
ChatSend "<Font Size=2 Face=Arial Color=#00FF00>·÷±¦[ Loaded at " & Time

Form0.Visible = False
Form1.Visible = True
Unload Form0

 



 

End Sub




