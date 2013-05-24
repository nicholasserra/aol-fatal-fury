VERSION 4.00
Begin VB.Form Form23 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "10-color Fader"
   ClientHeight    =   2700
   ClientLeft      =   4725
   ClientTop       =   2265
   ClientWidth     =   4380
   BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
      Name            =   "MS Sans Serif"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Height          =   3165
   Left            =   4665
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2700
   ScaleWidth      =   4380
   ShowInTaskbar   =   0   'False
   Top             =   1860
   Width           =   4500
   Begin VB.CheckBox Check2 
      BackColor       =   &H00FF0000&
      Caption         =   "Bold"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3360
      TabIndex        =   22
      Top             =   2400
      Value           =   1  'Checked
      Width           =   975
   End
   Begin VB.CheckBox Check4 
      BackColor       =   &H00FF0000&
      Caption         =   "Instant Message Fade"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   2040
      TabIndex        =   21
      Top             =   960
      Width           =   255
   End
   Begin VB.CheckBox Check3 
      BackColor       =   &H00FF0000&
      Caption         =   "Chat Room Fade"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   20
      Top             =   960
      Value           =   1  'Checked
      Width           =   255
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   2280
      TabIndex        =   19
      Text            =   "Screen Name"
      Top             =   1320
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Send"
      Height          =   255
      Left            =   3720
      TabIndex        =   18
      Top             =   1320
      Width           =   615
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   17
      Text            =   "Message"
      Top             =   1320
      Width           =   3525
   End
   Begin VB.CheckBox Check1 
      BackColor       =   &H00FF0000&
      Caption         =   "WavY"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3360
      TabIndex        =   16
      Top             =   2040
      Value           =   1  'Checked
      Width           =   975
   End
   Begin VB.OptionButton Option10 
      BackColor       =   &H00FF0000&
      Caption         =   "Color10"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3360
      TabIndex        =   15
      Top             =   1680
      Width           =   975
   End
   Begin VB.OptionButton Option9 
      BackColor       =   &H00FF0000&
      Caption         =   "Color9"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   2280
      TabIndex        =   14
      Top             =   2400
      Width           =   975
   End
   Begin VB.OptionButton Option8 
      BackColor       =   &H00FF0000&
      Caption         =   "Color8"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   2280
      TabIndex        =   13
      Top             =   2040
      Width           =   975
   End
   Begin VB.OptionButton Option7 
      BackColor       =   &H00FF0000&
      Caption         =   "Color7"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   2280
      TabIndex        =   12
      Top             =   1680
      Width           =   975
   End
   Begin VB.OptionButton Option6 
      BackColor       =   &H00FF0000&
      Caption         =   "Color6"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   1200
      TabIndex        =   11
      Top             =   2400
      Width           =   975
   End
   Begin VB.OptionButton Option5 
      BackColor       =   &H00FF0000&
      Caption         =   "Color5"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   1200
      TabIndex        =   10
      Top             =   2040
      Width           =   975
   End
   Begin VB.OptionButton Option4 
      BackColor       =   &H00FF0000&
      Caption         =   "Color4"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   1200
      TabIndex        =   6
      Top             =   1680
      Width           =   975
   End
   Begin VB.OptionButton Option3 
      BackColor       =   &H00FF0000&
      Caption         =   "Color3"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   2400
      Width           =   975
   End
   Begin VB.OptionButton Option2 
      BackColor       =   &H00FF0000&
      Caption         =   "Color2"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   2040
      Width           =   975
   End
   Begin VB.OptionButton Option1 
      BackColor       =   &H00FF0000&
      Caption         =   "Color1"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   1680
      Value           =   -1  'True
      Width           =   975
   End
   Begin VB.HScrollBar hsbBlue 
      Height          =   255
      LargeChange     =   35
      Left            =   720
      Max             =   255
      SmallChange     =   5
      TabIndex        =   2
      Top             =   600
      Width           =   1935
   End
   Begin VB.HScrollBar hsbGreen 
      Height          =   255
      LargeChange     =   35
      Left            =   720
      Max             =   255
      SmallChange     =   5
      TabIndex        =   1
      Top             =   360
      Width           =   1935
   End
   Begin VB.HScrollBar hsbRed 
      Height          =   255
      LargeChange     =   35
      Left            =   720
      Max             =   255
      SmallChange     =   5
      TabIndex        =   0
      Top             =   120
      Width           =   1935
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Instant Message Fade"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Index           =   12
      Left            =   2280
      TabIndex        =   36
      Top             =   960
      Width           =   1890
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackColor       =   &H00404040&
      BackStyle       =   0  'Transparent
      Caption         =   "Chat Room Fade"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Index           =   11
      Left            =   360
      TabIndex        =   35
      Top             =   960
      Width           =   1425
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   " Bold"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   10
      Left            =   3600
      TabIndex        =   34
      Top             =   2400
      Width           =   615
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   " WavY"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   9
      Left            =   3600
      TabIndex        =   33
      Top             =   2040
      Width           =   615
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Color10"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   8
      Left            =   3600
      TabIndex        =   32
      Top             =   1680
      Width           =   735
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Color9"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   7
      Left            =   2520
      TabIndex        =   31
      Top             =   2400
      Width           =   615
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Color8"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   6
      Left            =   2520
      TabIndex        =   30
      Top             =   2040
      Width           =   615
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Color7"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   5
      Left            =   2520
      TabIndex        =   29
      Top             =   1680
      Width           =   615
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Color6"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   4
      Left            =   1440
      TabIndex        =   28
      Top             =   2400
      Width           =   615
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Color5"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   3
      Left            =   1440
      TabIndex        =   27
      Top             =   2040
      Width           =   615
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Color3"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   2
      Left            =   360
      TabIndex        =   26
      Top             =   2400
      Width           =   615
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Color2"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   1
      Left            =   360
      TabIndex        =   25
      Top             =   2040
      Width           =   615
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Color4"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   1440
      TabIndex        =   24
      Top             =   1680
      Width           =   735
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Color1"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   0
      Left            =   360
      TabIndex        =   23
      Top             =   1680
      Width           =   615
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00000000&
      BorderWidth     =   3
      Height          =   735
      Left            =   2760
      Shape           =   2  'Oval
      Top             =   120
      Width           =   1575
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Green"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   360
      Width           =   525
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Blue"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   600
      Width           =   390
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Red"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   120
      Width           =   360
   End
   Begin VB.Menu Menu 
      Caption         =   "Menu"
      Visible         =   0   'False
      Begin VB.Menu Chat 
         Caption         =   "Chat"
      End
      Begin VB.Menu IM 
         Caption         =   "IM"
      End
   End
End
Attribute VB_Name = "Form23"
Attribute VB_Creatable = False
Attribute VB_Exposed = False


Private Sub DoColor()
    Shape1.BackColor = RGB(hsbRed.Value, hsbGreen.Value, hsbBlue.Value)
End Sub

Function FadeTenColor(R1%, G1%, B1%, R2%, G2%, B2%, R3%, G3%, B3%, R4%, G4%, B4%, R5%, G5%, B5%, R6%, G6%, B6%, R7%, G7%, B7%, R8%, G8%, B8%, R9%, G9%, B9%, R10%, G10%, B10%, thetext$, WavY As Boolean)
'Monke-God
    Dim WaveState%
    Dim WaveHTML$
    WaveState = 0
    
    TextLen% = Len(thetext)
    
    Do: DoEvents
    fstlen% = fstlen% + 1: TextLen% = TextLen% - 1
    If TextLen% < 1 Then Exit Do
    seclen% = seclen% + 1: TextLen% = TextLen% - 1
    If TextLen% < 1 Then Exit Do
    thrdlen% = thrdlen% + 1: TextLen% = TextLen% - 1
    If TextLen% < 1 Then Exit Do
    frthlen% = frthlen% + 1: TextLen% = TextLen% - 1
    If TextLen% < 1 Then Exit Do
    fithlen% = fithlen% + 1: TextLen% = TextLen% - 1
    If TextLen% < 1 Then Exit Do
    sixlen% = sixlen% + 1: TextLen% = TextLen% - 1
    If TextLen% < 1 Then Exit Do
    seclen% = seclen% + 1: TextLen% = TextLen% - 1
    If TextLen% < 1 Then Exit Do
    eightlen% = eightlen% + 1: TextLen% = TextLen% - 1
    If TextLen% < 1 Then Exit Do
    ninelen% = ninelen% + 1: TextLen% = TextLen% - 1
    If TextLen% < 1 Then Exit Do
    Loop Until TextLen% < 1
    
    part1$ = Left(thetext, fstlen%)
    part2$ = Mid(thetext, fstlen% + 1, seclen%)
    part3$ = Mid(thetext, fstlen% + seclen% + 1, thrdlen%)
    part4$ = Mid(thetext, fstlen% + seclen% + thrdlen% + 1, frthlen%)
    part5$ = Mid(thetext, fstlen% + seclen% + thrdlen% + frthlen% + 1, fithlen%)
    part6$ = Mid(thetext, fstlen% + seclen% + thrdlen% + frthlen% + fithlen% + 1, sixlen%)
    part7$ = Mid(thetext, fstlen% + seclen% + thrdlen% + frthlen% + fithlen% + sixlen% + 1, sevlen%)
    part8$ = Mid(thetext, fstlen% + seclen% + thrdlen% + frthlen% + fithlen% + sixlen% + sevlen% + 1, eightlen%)
    part9$ = Right(thetext, ninelen%)
    
    'part1
    TextLen% = Len(part1$)
    For B = 1 To TextLen%
        TextDone$ = Left(part1$, B)
        LastChr$ = Right(TextDone$, 1)
        colorx = RGB(((B2 - B1) / TextLen% * B) + B1, ((G2 - G1) / TextLen% * B) + G1, ((R2 - R1) / TextLen% * B) + R1)
        colorx2 = RGBtoHEX(colorx)
        
        If WavY = True Then
        WaveState = WaveState + 1
        If WaveState > 4 Then WaveState = 1
        If WaveState = 1 Then WaveHTML = "<sup>"
        If WaveState = 2 Then WaveHTML = "</sup>"
        If WaveState = 3 Then WaveHTML = "<sub>"
        If WaveState = 4 Then WaveHTML = "</sub>"
        Else
        WaveHTML = ""
        End If
        
        Faded1$ = Faded1$ + "<Font Color=#" & colorx2 & ">" + WaveHTML + LastChr$
    Next B
    'part2
    TextLen% = Len(part2$)
    For B = 1 To TextLen%
        TextDone$ = Left(part2$, B)
        LastChr$ = Right(TextDone$, 1)
        colorx = RGB(((B3 - B2) / TextLen% * B) + B2, ((G3 - G2) / TextLen% * B) + G2, ((R3 - R2) / TextLen% * B) + R2)
        colorx2 = RGBtoHEX(colorx)
        
        If WavY = True Then
        WaveState = WaveState + 1
        If WaveState > 4 Then WaveState = 1
        If WaveState = 1 Then WaveHTML = "<sup>"
        If WaveState = 2 Then WaveHTML = "</sup>"
        If WaveState = 3 Then WaveHTML = "<sub>"
        If WaveState = 4 Then WaveHTML = "</sub>"
        Else
        WaveHTML = ""
        End If
        
        Faded2$ = Faded2$ + "<Font Color=#" & colorx2 & ">" + WaveHTML + LastChr$
    Next B
    
    'part3
    TextLen% = Len(part3$)
    For B = 1 To TextLen%
        TextDone$ = Left(part3$, B)
        LastChr$ = Right(TextDone$, 1)
        colorx = RGB(((B4 - B3) / TextLen% * B) + B3, ((G4 - G3) / TextLen% * B) + G3, ((R4 - R3) / TextLen% * B) + R3)
        colorx2 = RGBtoHEX(colorx)
        
        If WavY = True Then
        WaveState = WaveState + 1
        If WaveState > 4 Then WaveState = 1
        If WaveState = 1 Then WaveHTML = "<sup>"
        If WaveState = 2 Then WaveHTML = "</sup>"
        If WaveState = 3 Then WaveHTML = "<sub>"
        If WaveState = 4 Then WaveHTML = "</sub>"
        Else
        WaveHTML = ""
        End If
        
        Faded3$ = Faded3$ + "<Font Color=#" & colorx2 & ">" + WaveHTML + LastChr$
    Next B
    
    'part4
    TextLen% = Len(part4$)
    For B = 1 To TextLen%
        TextDone$ = Left(part4$, B)
        LastChr$ = Right(TextDone$, 1)
        colorx = RGB(((B5 - B4) / TextLen% * B) + B4, ((G5 - G4) / TextLen% * B) + G4, ((R5 - R4) / TextLen% * B) + R4)
        colorx2 = RGBtoHEX(colorx)
        
        If WavY = True Then
        WaveState = WaveState + 1
        If WaveState > 4 Then WaveState = 1
        If WaveState = 1 Then WaveHTML = "<sup>"
        If WaveState = 2 Then WaveHTML = "</sup>"
        If WaveState = 3 Then WaveHTML = "<sub>"
        If WaveState = 4 Then WaveHTML = "</sub>"
        Else
        WaveHTML = ""
        End If
        
        Faded4$ = Faded4$ + "<Font Color=#" & colorx2 & ">" + WaveHTML + LastChr$
    Next B
    
    'part5
    TextLen% = Len(part5$)
    For B = 1 To TextLen%
        TextDone$ = Left(part5$, B)
        LastChr$ = Right(TextDone$, 1)
        colorx = RGB(((B6 - B5) / TextLen% * B) + B5, ((G6 - G5) / TextLen% * B) + G5, ((R6 - R5) / TextLen% * B) + R5)
        colorx2 = RGBtoHEX(colorx)
        
        If WavY = True Then
        WaveState = WaveState + 1
        If WaveState > 4 Then WaveState = 1
        If WaveState = 1 Then WaveHTML = "<sup>"
        If WaveState = 2 Then WaveHTML = "</sup>"
        If WaveState = 3 Then WaveHTML = "<sub>"
        If WaveState = 4 Then WaveHTML = "</sub>"
        Else
        WaveHTML = ""
        End If
        
        Faded5$ = Faded5$ + "<Font Color=#" & colorx2 & ">" + WaveHTML + LastChr$
    Next B
    
    'part6
    TextLen% = Len(part6$)
    For B = 1 To TextLen%
        TextDone$ = Left(part6$, B)
        LastChr$ = Right(TextDone$, 1)
        colorx = RGB(((B7 - B6) / TextLen% * B) + B6, ((G7 - G6) / TextLen% * B) + G6, ((R7 - R6) / TextLen% * B) + R6)
        colorx2 = RGBtoHEX(colorx)
        
        If WavY = True Then
        WaveState = WaveState + 1
        If WaveState > 4 Then WaveState = 1
        If WaveState = 1 Then WaveHTML = "<sup>"
        If WaveState = 2 Then WaveHTML = "</sup>"
        If WaveState = 3 Then WaveHTML = "<sub>"
        If WaveState = 4 Then WaveHTML = "</sub>"
        Else
        WaveHTML = ""
        End If
        
        Faded6$ = Faded6$ + "<Font Color=#" & colorx2 & ">" + WaveHTML + LastChr$
    Next B
    
    'part7
    TextLen% = Len(part7$)
    For B = 1 To TextLen%
        TextDone$ = Left(part7$, B)
        LastChr$ = Right(TextDone$, 1)
        colorx = RGB(((B8 - B7) / TextLen% * B) + B7, ((G8 - G7) / TextLen% * B) + G7, ((R8 - R7) / TextLen% * B) + R7)
        colorx2 = RGBtoHEX(colorx)
        
        If WavY = True Then
        WaveState = WaveState + 1
        If WaveState > 4 Then WaveState = 1
        If WaveState = 1 Then WaveHTML = "<sup>"
        If WaveState = 2 Then WaveHTML = "</sup>"
        If WaveState = 3 Then WaveHTML = "<sub>"
        If WaveState = 4 Then WaveHTML = "</sub>"
        Else
        WaveHTML = ""
        End If
        
        Faded7$ = Faded7$ + "<Font Color=#" & colorx2 & ">" + WaveHTML + LastChr$
    Next B
    
    'part8
    TextLen% = Len(part8$)
    For B = 1 To TextLen%
        TextDone$ = Left(part8$, B)
        LastChr$ = Right(TextDone$, 1)
        colorx = RGB(((B9 - B8) / TextLen% * B) + B8, ((G9 - G8) / TextLen% * B) + G8, ((R9 - R8) / TextLen% * B) + R8)
        colorx2 = RGBtoHEX(colorx)
        
        If WavY = True Then
        WaveState = WaveState + 1
        If WaveState > 4 Then WaveState = 1
        If WaveState = 1 Then WaveHTML = "<sup>"
        If WaveState = 2 Then WaveHTML = "</sup>"
        If WaveState = 3 Then WaveHTML = "<sub>"
        If WaveState = 4 Then WaveHTML = "</sub>"
        Else
        WaveHTML = ""
        End If
        
        Faded8$ = Faded8$ + "<Font Color=#" & colorx2 & ">" + WaveHTML + LastChr$
    Next B
    
    'part9
    TextLen% = Len(part9$)
    For B = 1 To TextLen%
        TextDone$ = Left(part9$, B)
        LastChr$ = Right(TextDone$, 1)
        colorx = RGB(((B10 - B9) / TextLen% * B) + B9, ((G10 - G9) / TextLen% * B) + G9, ((R10 - R9) / TextLen% * B) + R9)
        colorx2 = RGBtoHEX(colorx)
        
        If WavY = True Then
        WaveState = WaveState + 1
        If WaveState > 4 Then WaveState = 1
        If WaveState = 1 Then WaveHTML = "<sup>"
        If WaveState = 2 Then WaveHTML = "</sup>"
        If WaveState = 3 Then WaveHTML = "<sub>"
        If WaveState = 4 Then WaveHTML = "</sub>"
        Else
        WaveHTML = ""
        End If
        
        Faded9$ = Faded9$ + "<Font Color=#" & colorx2 & ">" + WaveHTML + LastChr$
    Next B
    
    FadeTenColor = Faded1$ + Faded2$ + Faded3$ + Faded4$ + Faded5$ + Faded6$ + Faded7$ + Faded8$ + Faded9$
End Function

Function FadeByColor10(Colr1, Colr2, Colr3, Colr4, Colr5, Colr6, Colr7, Colr8, Colr9, Colr10, thetext$, WavY As Boolean)
'Monke-God
dacolor1$ = RGBtoHEX(Colr1)
dacolor2$ = RGBtoHEX(Colr2)
dacolor3$ = RGBtoHEX(Colr3)
dacolor4$ = RGBtoHEX(Colr4)
dacolor5$ = RGBtoHEX(Colr5)
dacolor6$ = RGBtoHEX(Colr6)
dacolor7$ = RGBtoHEX(Colr7)
dacolor8$ = RGBtoHEX(Colr8)
dacolor9$ = RGBtoHEX(Colr9)
dacolor10$ = RGBtoHEX(Colr10)

rednum1% = Val("&H" + Right(dacolor1$, 2))
greennum1% = Val("&H" + Mid(dacolor1$, 3, 2))
bluenum1% = Val("&H" + Left(dacolor1$, 2))
rednum2% = Val("&H" + Right(dacolor2$, 2))
greennum2% = Val("&H" + Mid(dacolor2$, 3, 2))
bluenum2% = Val("&H" + Left(dacolor2$, 2))
rednum3% = Val("&H" + Right(dacolor3$, 2))
greennum3% = Val("&H" + Mid(dacolor3$, 3, 2))
bluenum3% = Val("&H" + Left(dacolor3$, 2))
rednum4% = Val("&H" + Right(dacolor4$, 2))
greennum4% = Val("&H" + Mid(dacolor4$, 3, 2))
bluenum4% = Val("&H" + Left(dacolor4$, 2))
rednum5% = Val("&H" + Right(dacolor5$, 2))
greennum5% = Val("&H" + Mid(dacolor5$, 3, 2))
bluenum5% = Val("&H" + Left(dacolor5$, 2))
rednum6% = Val("&H" + Right(dacolor6$, 2))
greennum6% = Val("&H" + Mid(dacolor6$, 3, 2))
bluenum6% = Val("&H" + Left(dacolor6$, 2))
rednum7% = Val("&H" + Right(dacolor7$, 2))
greennum7% = Val("&H" + Mid(dacolor7$, 3, 2))
bluenum7% = Val("&H" + Left(dacolor7$, 2))
rednum8% = Val("&H" + Right(dacolor8$, 2))
greennum8% = Val("&H" + Mid(dacolor8$, 3, 2))
bluenum8% = Val("&H" + Left(dacolor8$, 2))
rednum9% = Val("&H" + Right(dacolor9$, 2))
greennum9% = Val("&H" + Mid(dacolor9$, 3, 2))
bluenum9% = Val("&H" + Left(dacolor9$, 2))
rednum10% = Val("&H" + Right(dacolor10$, 2))
greennum10% = Val("&H" + Mid(dacolor10$, 3, 2))
bluenum10% = Val("&H" + Left(dacolor10$, 2))


FadeByColor10 = FadeTenColor(rednum1%, greennum1%, bluenum1%, rednum2%, greennum2%, bluenum2%, rednum3%, greennum3%, bluenum3%, rednum4%, greennum4%, bluenum4%, rednum5%, greennum5%, bluenum5%, rednum6%, greennum6%, bluenum6%, rednum7%, greennum7%, bluenum7%, rednum8%, greennum8%, bluenum8%, rednum9%, greennum9%, bluenum9%, rednum10%, greennum10%, bluenum10%, thetext, WavY)

End Function



Function RGBtoHEX(RGB)
'Monke-God
    A$ = Hex(RGB)
    B% = Len(A$)
    If B% = 5 Then A$ = "0" & A$
    If B% = 4 Then A$ = "00" & A$
    If B% = 3 Then A$ = "000" & A$
    If B% = 2 Then A$ = "0000" & A$
    If B% = 1 Then A$ = "00000" & A$
    RGBtoHEX = A$
End Function

Private Sub Chat_Click()
If Check1.Value = 0 And Check2.Value = 1 Then
ChatSend "<b>" & FadeByColor10(Option1.ForeColor, Option2.ForeColor, Option3.ForeColor, Option4.ForeColor, Option5.ForeColor, Option6.ForeColor, Option7.ForeColor, Option8.ForeColor, Option9.ForeColor, Option10.ForeColor, Text1.Text, False)
End If
If Check1.Value = 1 And Check2.Value = 1 Then
ChatSend "<b>" & FadeByColor10(Option1.ForeColor, Option2.ForeColor, Option3.ForeColor, Option4.ForeColor, Option5.ForeColor, Option6.ForeColor, Option7.ForeColor, Option8.ForeColor, Option9.ForeColor, Option10.ForeColor, Text1.Text, True)
End If
If Check1.Value = 1 And Check2.Value = 0 Then
ChatSend "<b></b>" & FadeByColor10(Option1.ForeColor, Option2.ForeColor, Option3.ForeColor, Option4.ForeColor, Option5.ForeColor, Option6.ForeColor, Option7.ForeColor, Option8.ForeColor, Option9.ForeColor, Option10.ForeColor, Text1.Text, True)
End If
If Check1.Value = 0 And Check2.Value = 0 Then
ChatSend "<b></b>" & FadeByColor10(Option1.ForeColor, Option2.ForeColor, Option3.ForeColor, Option4.ForeColor, Option5.ForeColor, Option6.ForeColor, Option7.ForeColor, Option8.ForeColor, Option9.ForeColor, Option10.ForeColor, Text1.Text, False)
End If
End Sub

Private Sub Check3_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Check4.Value = 0
text2.Visible = False
Text1.Width = 3525
End Sub


Private Sub Check4_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)


Check3.Value = 0
text2.Visible = True
Text1.Width = 2085
End Sub



Private Sub Command1_Click()
If Check3.Value = 0 And Check4.Value = 0 Then
MsgBox "Select Instant Message Or Chat Room Fade!"
End If
If Check3.Value = 1 Then
Chat_Click
End If
If Check4.Value = 1 Then
IM_Click
End If
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
Unload Form23
End Sub


Private Sub hsbBlue_Change()
    hsbBlue_Scroll      ' Call the event procedure directly.
End Sub

Private Sub hsbBlue_Scroll()
If Option1.Value = True Then
DoColor
Option1.ForeColor = Shape1.BackColor
End If
If Option2.Value = True Then
DoColor
Option2.ForeColor = Shape1.BackColor
End If
If Option3.Value = True Then
DoColor
Option3.ForeColor = Shape1.BackColor
End If
If Option4.Value = True Then
DoColor
Option4.ForeColor = Shape1.BackColor
End If
If Option5.Value = True Then
DoColor
Option5.ForeColor = Shape1.BackColor
End If
If Option6.Value = True Then
DoColor
Option6.ForeColor = Shape1.BackColor
End If
If Option7.Value = True Then
DoColor
Option7.ForeColor = Shape1.BackColor
End If
If Option8.Value = True Then
DoColor
Option8.ForeColor = Shape1.BackColor
End If
If Option9.Value = True Then
DoColor
Option9.ForeColor = Shape1.BackColor
End If
If Option10.Value = True Then
DoColor
Option10.ForeColor = Shape1.BackColor
End If
End Sub

Private Sub hsbGreen_Change()
    hsbGreen_Scroll     ' Call the event procedure directly.
End Sub

Private Sub hsbGreen_Scroll()
If Option1.Value = True Then
DoColor
Option1.ForeColor = Shape1.BackColor
End If         '
If Option2.Value = True Then
DoColor
Option2.ForeColor = Shape1.BackColor
End If
If Option3.Value = True Then
DoColor
Option3.ForeColor = Shape1.BackColor
End If
If Option4.Value = True Then
DoColor
Option4.ForeColor = Shape1.BackColor
End If
If Option5.Value = True Then
DoColor
Option5.ForeColor = Shape1.BackColor
End If
If Option6.Value = True Then
DoColor
Option6.ForeColor = Shape1.BackColor
End If
If Option7.Value = True Then
DoColor
Option7.ForeColor = Shape1.BackColor
End If
If Option8.Value = True Then
DoColor
Option8.ForeColor = Shape1.BackColor
End If
If Option9.Value = True Then
DoColor
Option9.ForeColor = Shape1.BackColor
End If
If Option10.Value = True Then
DoColor
Option10.ForeColor = Shape1.BackColor
End If
End Sub



Private Sub hsbRed_Change()
    hsbRed_Scroll       ' Call the event procedure directly.
End Sub

Private Sub hsbRed_Scroll()
If Option1.Value = True Then
DoColor
Option1.ForeColor = Shape1.BackColor
End If
If Option2.Value = True Then
DoColor
Option2.ForeColor = Shape1.BackColor
End If
If Option3.Value = True Then
DoColor
Option3.ForeColor = Shape1.BackColor
End If
If Option4.Value = True Then
DoColor
Option4.ForeColor = Shape1.BackColor
End If
If Option5.Value = True Then
DoColor
Option5.ForeColor = Shape1.BackColor
End If
If Option6.Value = True Then
DoColor
Option6.ForeColor = Shape1.BackColor
End If
If Option7.Value = True Then
DoColor
Option7.ForeColor = Shape1.BackColor
End If
If Option8.Value = True Then
DoColor
Option8.ForeColor = Shape1.BackColor
End If
If Option9.Value = True Then
DoColor
Option9.ForeColor = Shape1.BackColor
End If
If Option10.Value = True Then
DoColor
Option10.ForeColor = Shape1.BackColor
End If
End Sub


Private Sub IM_Click()

If Check1.Value = 0 And Check2.Value = 1 Then
InstantMessage text2.Text, "<b>" & FadeByColor10(Option1.ForeColor, Option2.ForeColor, Option3.ForeColor, Option4.ForeColor, Option5.ForeColor, Option6.ForeColor, Option7.ForeColor, Option8.ForeColor, Option9.ForeColor, Option10.ForeColor, Text1.Text, False)
End If
If Check1.Value = 1 And Check2.Value = 1 Then
InstantMessage text2.Text, "<b>" & FadeByColor10(Option1.ForeColor, Option2.ForeColor, Option3.ForeColor, Option4.ForeColor, Option5.ForeColor, Option6.ForeColor, Option7.ForeColor, Option8.ForeColor, Option9.ForeColor, Option10.ForeColor, Text1.Text, True)
End If
If Check1.Value = 1 And Check2.Value = 0 Then
InstantMessage text2.Text, "<b></b>" & FadeByColor10(Option1.ForeColor, Option2.ForeColor, Option3.ForeColor, Option4.ForeColor, Option5.ForeColor, Option6.ForeColor, Option7.ForeColor, Option8.ForeColor, Option9.ForeColor, Option10.ForeColor, Text1.Text, True)
End If
If Check1.Value = 0 And Check2.Value = 0 Then
InstantMessage text2.Text, "<b></b>" & FadeByColor10(Option1.ForeColor, Option2.ForeColor, Option3.ForeColor, Option4.ForeColor, Option5.ForeColor, Option6.ForeColor, Option7.ForeColor, Option8.ForeColor, Option9.ForeColor, Option10.ForeColor, Text1.Text, False)
End If
End Sub


