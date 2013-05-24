VERSION 4.00
Begin VB.Form Form16 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "IM Answerer"
   ClientHeight    =   2070
   ClientLeft      =   1140
   ClientTop       =   1650
   ClientWidth     =   3960
   Height          =   2535
   Left            =   1080
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2070
   ScaleWidth      =   3960
   ShowInTaskbar   =   0   'False
   Top             =   1245
   Width           =   4080
   Begin VB.ListBox List1 
      Height          =   1035
      Left            =   2040
      TabIndex        =   4
      Top             =   240
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      Height          =   375
      Left            =   1080
      TabIndex        =   3
      Top             =   1560
      Width           =   1455
   End
   Begin VB.TextBox Text2 
      Height          =   1095
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Text            =   "IM Answerer.frx":0000
      Top             =   240
      Width           =   1815
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   2000
      Left            =   2760
      Top             =   1560
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Respond Message"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Comic Sans MS"
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
      TabIndex        =   2
      Top             =   0
      Width           =   1815
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "People Who IMed You"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   2040
      TabIndex        =   0
      Top             =   0
      Width           =   1935
   End
End
Attribute VB_Name = "Form16"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
If text2.Text = "" Then Exit Sub
    If Command1.Caption = "Start" Then
        timer1.Enabled = True
       
        Command1.Caption = "Stop"
        List1.Clear
    Else
        timer1.Enabled = False
        
        Command1.Caption = "Start"
    End If
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
Unload Form16
End Sub


Private Sub timer1_Timer()
If FindIM <> 0 Then
       List1.AddItem IMSender
        InstantMessage IMSender, text2.Text
        subbas.pause 1
        CloseWindow FindIM
    End If
End Sub


