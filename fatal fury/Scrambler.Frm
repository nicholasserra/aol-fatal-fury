VERSION 4.00
Begin VB.Form Form32 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Scrambler"
   ClientHeight    =   840
   ClientLeft      =   1140
   ClientTop       =   1650
   ClientWidth     =   4425
   Height          =   1305
   Left            =   1080
   LinkTopic       =   "Form32"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   840
   ScaleWidth      =   4425
   ShowInTaskbar   =   0   'False
   Top             =   1245
   Width           =   4545
   Begin VB.CommandButton Command3 
      Caption         =   "Clear"
      Height          =   255
      Left            =   3000
      TabIndex        =   3
      Top             =   480
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Send"
      Height          =   255
      Left            =   1560
      TabIndex        =   2
      Top             =   480
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Scramble"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "Message To Scramble"
      Top             =   120
      Width           =   4215
   End
End
Attribute VB_Name = "Form32"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
Text1.Text = ScrambleIt(Text1.Text)
End Sub

Private Sub Command2_Click()
ChatSend Text1.Text
End Sub


Private Sub Command3_Click()
Text1.Text = ""
End Sub

Private Sub Form_Load()
Top = 0
Left = 0
FFX.StayOnTop Me
Me.Picture = Form1.Image2.Picture
Form1.Hide
End Sub


Function ScrambleIt(Txt As String) As String
Dim word$, Buff$
Dim Random%, i%, a%
Separate:
Do: DoEvents
    a% = InStr(Txt$, " ")
    If a% = 0 Then
        Buff$ = Txt$
        Txt$ = ""
        Exit Do
    End If
    If a% = 1 Then
        ScrambleIt$ = ScrambleIt$ & " "
        Txt$ = Right$(Txt$, Len(Txt$) - 1)
    End If
    If a% > 1 Then
        Buff$ = Left$(Txt$, a% - 1)
        Txt$ = Right$(Txt$, Len(Txt$) - a% + 1)
        Exit Do
    End If
Loop Until a% = 0
word$ = ""
For i% = 1 To Len(Buff$) - 1
    Random% = Int(Len(Buff$) * Rnd + 1)
    word$ = word$ & Mid$(Buff$, Random%, 1)
    Buff$ = Left$(Buff$, Random% - 1) & Right$(Buff$, Len(Buff$) - Random%)
Next i%
word$ = word$ & Buff$
ScrambleIt$ = ScrambleIt$ & word$
If Txt$ <> "" Then GoTo Separate
End Function

Private Sub Form_Unload(Cancel As Integer)
Form1.Visible = True
Unload Me
End Sub


