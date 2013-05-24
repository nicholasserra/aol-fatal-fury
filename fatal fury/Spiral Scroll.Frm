VERSION 4.00
Begin VB.Form Form28 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Spiral Scroller"
   ClientHeight    =   870
   ClientLeft      =   1140
   ClientTop       =   1650
   ClientWidth     =   2055
   Height          =   1335
   Left            =   1080
   LinkTopic       =   "Form28"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   870
   ScaleWidth      =   2055
   ShowInTaskbar   =   0   'False
   Top             =   1245
   Width           =   2175
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   960
      Top             =   120
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00000000&
      Caption         =   "Scroll"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "Message"
      Top             =   120
      Width           =   1815
   End
End
Attribute VB_Name = "Form28"
Attribute VB_Creatable = False
Attribute VB_Exposed = False

Private Sub Command1_Click()
timer1.Enabled = True
Command1.Enabled = False
End Sub

Private Sub Command2_Click()
timer1.Enabled = False
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

what$ = Text1.Text
wowlen = Len(what$)
wowsend$ = what$ + ""
ChatSend (wowsend$)
subbas.pause 1
For X = 1 To wowlen
    wowbck$ = Mid(wowsend$, 1, 1)
    wownew$ = Mid(wowsend$, 2, wowlen)
    wowsend$ = wownew$ + wowbck$
    ChatSend (wowsend$)
   subbas.pause 0.7
Next X
ChatSend (what$)
Command1.Enabled = True
timer1.Enabled = False

End Sub


