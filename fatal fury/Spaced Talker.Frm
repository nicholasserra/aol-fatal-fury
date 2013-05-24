VERSION 4.00
Begin VB.Form Form30 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Spaced Talker"
   ClientHeight    =   855
   ClientLeft      =   2595
   ClientTop       =   2850
   ClientWidth     =   2370
   Height          =   1320
   Left            =   2535
   LinkTopic       =   "Form30"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   855
   ScaleWidth      =   2370
   ShowInTaskbar   =   0   'False
   Top             =   2445
   Width           =   2490
   Begin VB.CommandButton Command2 
      Caption         =   "Test"
      Height          =   255
      Left            =   1320
      TabIndex        =   2
      Top             =   480
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Send"
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
      Text            =   "Message"
      Top             =   120
      Width           =   2175
   End
End
Attribute VB_Name = "Form30"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()

ChatSend Text_Spaced(Text1.Text)

End Sub

Private Sub Command2_Click()
MsgBox Text_Spaced(Text1.Text)
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


Function Text_Spaced(strin$)
'spaces out text
Let inptxt$ = strin$
Let lenth% = Len(inptxt$)
Do While NumSpc% <= lenth%
Let NumSpc% = NumSpc% + 1
Let NextChr$ = Mid$(inptxt$, NumSpc%, 1)
Let NextChr$ = NextChr$ + " "
Let newsent$ = newsent$ + NextChr$
Loop
Text_Spaced = newsent$
End Function

