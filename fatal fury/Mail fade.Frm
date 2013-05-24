VERSION 4.00
Begin VB.Form Form9 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Mail Fader"
   ClientHeight    =   1800
   ClientLeft      =   3390
   ClientTop       =   1770
   ClientWidth     =   3015
   Height          =   2265
   Left            =   3330
   LinkTopic       =   "Form9"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1800
   ScaleWidth      =   3015
   ShowInTaskbar   =   0   'False
   Top             =   1365
   Width           =   3135
   Begin VB.CheckBox Check1 
      BackColor       =   &H00FF0000&
      Caption         =   "WavY"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   2040
      TabIndex        =   4
      Top             =   480
      Width           =   855
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   120
      TabIndex        =   3
      Text            =   "Subject"
      Top             =   480
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Send"
      Height          =   255
      Left            =   2040
      TabIndex        =   2
      Top             =   120
      Width           =   855
   End
   Begin VB.TextBox Text2 
      Height          =   855
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Text            =   "Mail fade.frx":0000
      Top             =   840
      Width           =   2775
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "Screen Name"
      Top             =   120
      Width           =   1815
   End
End
Attribute VB_Name = "Form9"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Check1.Value = True Then
Jolt.SendMail Text1.Text, Text3.Text, FadeByColor3(vbRed, vbGreen, vbBlue, text2.Text, True)
 Else
Jolt.SendMail Text1.Text, Text3.Text, FadeByColor3(vbRed, vbGreen, vbBlue, text2.Text, False)
End If
End Sub

Private Sub Form_Load()
Top = 0
Left = 0
FFX.StayOnTop Me
Me.Picture = Form1.image2.Picture
Form1.Hide
End Sub

Function FadeThreeColor(R1%, G1%, B1%, R2%, G2%, B2%, R3%, G3%, B3%, thetext$, WavY As Boolean)
'by monk-e-god
    TextLen% = Len(thetext)
    fstlen% = (Int(TextLen%) / 2)
    part1$ = Left(thetext, fstlen%)
    part2$ = Right(thetext, TextLen% - fstlen%)
    'part1
    TextLen% = Len(part1$)
    For B = 1 To TextLen%
        TextDone$ = Left(part1$, B)
        LastChr$ = Right(TextDone$, 1)
        colorx = RGB(((B2 - B1) / TextLen% * B) + B1, ((G2 - G1) / TextLen% * B) + G1, ((R2 - R1) / TextLen% * B) + R1)
        colorx2 = subbas.RGBtoHEX(colorx)
        
        wave1$ = ""
        wave2$ = ""
        If WavY = True Then
        If dawave = 1 Then wave1$ = "</SUB>"
        If dawave = 2 Then wave1$ = "</SUP>"
        Randomize
        dawave = Int((3 * Rnd) + 1)
        If dawave = 1 Then wave2$ = "<SUB>"
        If dawave = 2 Then wave2$ = "<SUP>"
        If dawave = 3 Then wave2$ = ""
        End If
        Faded1$ = Faded1$ + "<Font Color=#" & colorx2 & ">" + wave1$ + wave2$ + LastChr$
    Next B
    'part2
    TextLen% = Len(part2$)
    For B = 1 To TextLen%
        TextDone$ = Left(part2$, B)
        LastChr$ = Right(TextDone$, 1)
        colorx = RGB(((B3 - B2) / TextLen% * B) + B2, ((G3 - G2) / TextLen% * B) + G2, ((R3 - R2) / TextLen% * B) + R2)
        colorx2 = subbas.RGBtoHEX(colorx)
        wave1$ = ""
        wave2$ = ""
        If WavY = True Then
        If dawave = 1 Then wave1$ = "</SUB>"
        If dawave = 2 Then wave1$ = "</SUP>"
        Randomize
        dawave = Int((3 * Rnd) + 1)
        If dawave = 1 Then wave2$ = "<SUB>"
        If dawave = 2 Then wave2$ = "<SUP>"
        If dawave = 3 Then wave2$ = ""
        End If
        Faded2$ = Faded2$ + "<Font Color=#" & colorx2 & ">" + wave1$ + wave2$ + LastChr$
    Next B
    FadeThreeColor = Faded1$ + Faded2$
End Function

Function FadeByColor3(Colr1, Colr2, Colr3, thetext$, WavY As Boolean)
'by monk-e-god
dacolor1$ = subbas.RGBtoHEX(Colr1)
dacolor2$ = subbas.RGBtoHEX(Colr2)
dacolor3$ = subbas.RGBtoHEX(Colr3)
rednum1% = Val("&H" + Right(dacolor1$, 2))
greennum1% = Val("&H" + Mid(dacolor1$, 3, 2))
bluenum1% = Val("&H" + Left(dacolor1$, 2))
rednum2% = Val("&H" + Right(dacolor2$, 2))
greennum2% = Val("&H" + Mid(dacolor2$, 3, 2))
bluenum2% = Val("&H" + Left(dacolor2$, 2))
rednum3% = Val("&H" + Right(dacolor3$, 2))
greennum3% = Val("&H" + Mid(dacolor3$, 3, 2))
bluenum3% = Val("&H" + Left(dacolor3$, 2))
FadeByColor3 = FadeThreeColor(rednum1%, greennum1%, bluenum1%, rednum2%, greennum2%, bluenum2%, rednum3%, greennum3%, bluenum3%, thetext, WavY)
End Function

Private Sub Form_Unload(Cancel As Integer)
Form1.Visible = True
Unload Me
End Sub


