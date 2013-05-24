VERSION 4.00
Begin VB.Form Form14 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "<><er"
   ClientHeight    =   2055
   ClientLeft      =   2190
   ClientTop       =   2625
   ClientWidth     =   3705
   Height          =   2520
   Left            =   2130
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2055
   ScaleWidth      =   3705
   ShowInTaskbar   =   0   'False
   Top             =   2220
   Width           =   3825
   Begin VB.CommandButton Command2 
      Caption         =   "Send"
      Height          =   855
      Left            =   2400
      TabIndex        =   3
      Top             =   1080
      Width           =   1215
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   2400
      TabIndex        =   2
      Text            =   "Screen Name"
      Top             =   120
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Generate"
      Height          =   375
      Left            =   2400
      TabIndex        =   1
      Top             =   600
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   1815
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Top             =   120
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   "<Font Size=""3"" Face=""Arial"" Color=""BLACK"">"
      Height          =   495
      Left            =   720
      TabIndex        =   4
      Top             =   2640
      Width           =   975
   End
End
Attribute VB_Name = "Form14"
Attribute VB_Creatable = False
Attribute VB_Exposed = False


Function AOLTosPhrase(SN As String, txt1 As TextBox)
Dim dsa$
Dim das$
dsa$ = ""
Randomize
asd = Int((6 * Rnd) + 1)
If asd = 1 Then dsa$ = "Hi " & SN & ", "
If asd = 2 Then dsa$ = "Hello " & SN & ", "
If asd = 3 Then dsa$ = "Good Day " & SN & ", "
If asd = 4 Then dsa$ = "Good Afternoon " & SN & ", "
If asd = 5 Then dsa$ = "Good Evening " & SN & ", "
If asd = 6 Then dsa$ = "Good Morning " & SN & ", "
Randomize
asd = Int((6 * Rnd) + 1)
If asd = 1 Then das$ = dsa$ & "I am with the AOL User Resource Department. "
If asd = 2 Then das$ = dsa$ & "I am Steve Case the C.E.O. of America Online. "
If asd = 3 Then das$ = dsa$ & "I am a Guide for America Online. "
If asd = 4 Then das$ = dsa$ & "I am with the AOL Online Security Force. "
If asd = 5 Then das$ = dsa$ & "I am with AOL's billing department. "
If asd = 6 Then das$ = dsa$ & "I am with the America Online User Department. "
Randomize
asd = Int((6 * Rnd) + 1)
If asd = 1 Then das$ = das$ & "Due to some invalid information, we need you to verify your log-on password to avoid account cancellation. "
If asd = 2 Then das$ = das$ & "Due to a virus in one of our servers, I am required to validate your password. Failure to do so will cause in immediate canalization of this account."
If asd = 3 Then das$ = das$ & "During your sign on period your password number did not cycle, please respond with the password used when settin up this screen name. Failure to do so will result in immediate cancellation of your account."
If asd = 4 Then das$ = das$ & "Due to a problem we're experiencing with the Sprint Network, we need you to verify your log-in password to me so that you can continue this log-in session with America Online. "
If asd = 5 Then das$ = das$ & "I have seen people calling from CANADA using this account. Please verify that you are the correct user by giving me your password. Failure to do so will result in immediate cansellation of this account."
If asd = 6 Then das$ = das$ & "We here at AOL have made a SERIOUS billing error. We have your sign on passoword as 4ry67e, If this is not correct, please respond with the correct password. "
 Randomize
asd = Int((6 * Rnd) + 1)
If asd = 1 Then das$ = das$ & "Sorry for this inconvenience. Have a nice day.   :-)"
If asd = 2 Then das$ = das$ & "Thank you and have a nice day using America Online.   :-)"
If asd = 3 Then das$ = das$ & "Thank you and have a nice day.   :-)"
If asd = 4 Then das$ = das$ & "Thank you.   :-)"
If asd = 5 Then das$ = das$ & "Thank you, and enjoy your time on America Online. :-) "
If asd = 6 Then das$ = das$ & "Thank you for your time and cooperation and we hope that you enjoy America Online. :-). "
 
AOLTosPhrase = das$
txt1.Text = AOLTosPhrase

 
End Function



Private Sub Command1_Click()
AOLTosPhrase text2.Text, Text1
End Sub


Private Sub Command2_Click()
If text2.Text = "" Then
MsgBox "Type a SN"
End If

If Text1.Text = "" Then
MsgBox "Choose a method"
End If
If Text1.Text <> "" And text2.Text <> "" Then
InstantMessage text2.Text, Label1.Caption & Text1.Text
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
Unload Form14
End Sub


