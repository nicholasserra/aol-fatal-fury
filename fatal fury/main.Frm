VERSION 4.00
Begin VB.Form Form1 
   BackColor       =   &H00FF0000&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Fatal Fury"
   ClientHeight    =   1020
   ClientLeft      =   3420
   ClientTop       =   3255
   ClientWidth     =   2970
   Height          =   1485
   Icon            =   "main.frx":0000
   Left            =   3360
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1020
   ScaleWidth      =   2970
   ShowInTaskbar   =   0   'False
   Top             =   2850
   Width           =   3090
   Begin VB.CommandButton Command1 
      Caption         =   "Send"
      Default         =   -1  'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      HelpContextID   =   2
      Left            =   2160
      MouseIcon       =   "main.frx":0442
      TabIndex        =   6
      TabStop         =   0   'False
      Top             =   600
      WhatsThisHelpID =   2
      Width           =   780
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   75
      MousePointer    =   99  'Custom
      TabIndex        =   5
      TabStop         =   0   'False
      Top             =   615
      Width           =   1980
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      X1              =   3045
      X2              =   -105
      Y1              =   540
      Y2              =   525
   End
   Begin VB.Image Image2 
      Height          =   4905
      Left            =   2160
      Picture         =   "main.frx":0884
      Top             =   3120
      Width           =   7035
   End
   Begin VB.Label Label10 
      Caption         =   $"main.frx":6FED
      Height          =   495
      Left            =   360
      TabIndex        =   12
      Top             =   2760
      Width           =   1575
   End
   Begin VB.Label Label5 
      Caption         =   "<b><Font Size=2>"
      Height          =   255
      Left            =   600
      TabIndex        =   11
      Top             =   1200
      Width           =   1335
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "–"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   2520
      TabIndex        =   10
      Top             =   -30
      Width           =   135
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "X"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   2760
      TabIndex        =   9
      Top             =   -30
      Width           =   135
   End
   Begin VB.Image Image1 
      Height          =   255
      Left            =   0
      Picture         =   "main.frx":7132
      Top             =   0
      Width           =   3060
   End
   Begin VB.Label Label11 
      Caption         =   "<Font Size=""9"" Face=""Arial""Color=""RED"">"
      Height          =   615
      Left            =   480
      TabIndex        =   8
      Top             =   1800
      Width           =   1695
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Height          =   135
      Left            =   -30
      TabIndex        =   7
      Top             =   -15
      Width           =   3375
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Other"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   270
      Left            =   2280
      TabIndex        =   4
      Top             =   270
      Width           =   615
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Mail"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   270
      Left            =   1680
      TabIndex        =   3
      Top             =   270
      Width           =   435
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "IM"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   270
      Left            =   1320
      TabIndex        =   2
      Top             =   270
      Width           =   255
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Chat"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   270
      Left            =   675
      TabIndex        =   1
      Top             =   270
      Width           =   495
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Main"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   270
      Left            =   60
      TabIndex        =   0
      Top             =   270
      Width           =   510
   End
   Begin VB.Menu Main 
      Caption         =   "Main"
      Visible         =   0   'False
      Begin VB.Menu Disclaimer 
         Caption         =   "Disclaimer"
      End
      Begin VB.Menu Words 
         Caption         =   "Words From CyniKaL"
      End
      Begin VB.Menu About 
         Caption         =   "About"
      End
      Begin VB.Menu Greetz 
         Caption         =   "Greetz"
      End
      Begin VB.Menu HomePosition 
         Caption         =   "Home Pos."
      End
      Begin VB.Menu sep 
         Caption         =   "-"
      End
      Begin VB.Menu cancel1 
         Caption         =   "Cancel"
      End
   End
   Begin VB.Menu Chat 
      Caption         =   "Chat"
      Visible         =   0   'False
      Begin VB.Menu MacroBrowse 
         Caption         =   "Macro Browser"
      End
      Begin VB.Menu RoomBust 
         Caption         =   "Room Bust"
      End
      Begin VB.Menu LinkSender 
         Caption         =   "Link Sender"
      End
      Begin VB.Menu FakeProg 
         Caption         =   "Fake Prog"
      End
      Begin VB.Menu sep688778 
         Caption         =   "-"
      End
      Begin VB.Menu EliteTalker 
         Caption         =   "Elite Talker"
      End
      Begin VB.Menu BackTalker 
         Caption         =   "BackTalker"
      End
      Begin VB.Menu HackerTalk 
         Caption         =   "Spaced Talker"
      End
      Begin VB.Menu sep778787 
         Caption         =   "-"
      End
      Begin VB.Menu ChatLag 
         Caption         =   "Chat Lagger"
      End
      Begin VB.Menu Scrambler 
         Caption         =   "Scrambler"
      End
      Begin VB.Menu LamerScanner 
         Caption         =   "Lamer Scanner"
      End
      Begin VB.Menu sep5655655 
         Caption         =   "-"
      End
      Begin VB.Menu MiddleFinger 
         Caption         =   "Middle Finger"
      End
      Begin VB.Menu Attention 
         Caption         =   "Attention"
      End
      Begin VB.Menu ClearChat 
         Caption         =   "Clear Chat"
      End
      Begin VB.Menu Advertise 
         Caption         =   "Advertise"
      End
      Begin VB.Menu sep11111 
         Caption         =   "-"
      End
      Begin VB.Menu ChatScroller 
         Caption         =   "Scroller"
      End
      Begin VB.Menu SpiralScroll 
         Caption         =   "Spiral Scroller"
      End
      Begin VB.Menu FatalScroller 
         Caption         =   "Fatal Scroller"
      End
      Begin VB.Menu DiceScroller 
         Caption         =   "Dice Scrolller"
      End
      Begin VB.Menu sep668668 
         Caption         =   "-"
      End
      Begin VB.Menu Tricks 
         Caption         =   "Tricks"
         Begin VB.Menu FakeVirus 
            Caption         =   "Fake Virus"
         End
         Begin VB.Menu HackAttack 
            Caption         =   "Fake Hack Attack"
         End
      End
      Begin VB.Menu Sounds 
         Caption         =   "Sounds"
         Begin VB.Menu SoundHell 
            Caption         =   "Sound Hell"
         End
         Begin VB.Menu sep44534345 
            Caption         =   "-"
         End
         Begin VB.Menu SGoodby 
            Caption         =   "Goodby"
         End
         Begin VB.Menu SWelcome 
            Caption         =   "Welcome"
         End
         Begin VB.Menu SBuddyin 
            Caption         =   "Buddyin"
         End
         Begin VB.Menu SBuddyout 
            Caption         =   "Buddyout"
         End
      End
      Begin VB.Menu sep8899 
         Caption         =   "-"
      End
      Begin VB.Menu cancel2 
         Caption         =   "Cancel"
      End
   End
   Begin VB.Menu Mail 
      Caption         =   "Mail"
      Visible         =   0   'False
      Begin VB.Menu MassMailer 
         Caption         =   "MassMailer"
      End
      Begin VB.Menu MailBomber 
         Caption         =   "Mail Bomber"
      End
      Begin VB.Menu WarnLamerMail 
         Caption         =   "Warn Lamer"
      End
      Begin VB.Menu MailFade 
         Caption         =   "Mail Fader"
      End
      Begin VB.Menu MailPyRO 
         Caption         =   "Mail CyniKaL"
      End
      Begin VB.Menu sep3 
         Caption         =   "-"
      End
      Begin VB.Menu cancel3 
         Caption         =   "Cancel"
      End
   End
   Begin VB.Menu IM 
      Caption         =   "IM"
      Visible         =   0   'False
      Begin VB.Menu IMAdvertise 
         Caption         =   "Advertise"
      End
      Begin VB.Menu IMs 
         Caption         =   "IMs"
         Begin VB.Menu IMON 
            Caption         =   "IMs On"
         End
         Begin VB.Menu IMOFF 
            Caption         =   "IMs Off"
         End
      End
      Begin VB.Menu Trick2 
         Caption         =   "Tricks"
         Begin VB.Menu FakeNuke 
            Caption         =   "Fake Nuke "
         End
         Begin VB.Menu FakeIMVirus 
            Caption         =   "Fake Virus"
         End
      End
      Begin VB.Menu IMMANIP 
         Caption         =   "IM Manipulator"
      End
      Begin VB.Menu IMLinker 
         Caption         =   "IM Linker"
      End
      Begin VB.Menu EliteIMer 
         Caption         =   "Elite Imer"
      End
      Begin VB.Menu IMIgnorer 
         Caption         =   "IM Ignorer"
      End
      Begin VB.Menu IManswer 
         Caption         =   "IM Answerer"
      End
      Begin VB.Menu IMBomb 
         Caption         =   "IM Bomber"
      End
      Begin VB.Menu WarnLamer 
         Caption         =   "Warn Lamer"
      End
      Begin VB.Menu Phisher 
         Caption         =   "<><er"
      End
      Begin VB.Menu sep4 
         Caption         =   "-"
      End
      Begin VB.Menu cancel4 
         Caption         =   "Cancel"
      End
   End
   Begin VB.Menu Other 
      Caption         =   "Other"
      Visible         =   0   'False
      Begin VB.Menu sites 
         Caption         =   "Sites"
         Begin VB.Menu turtlesonly 
            Caption         =   "TurtlesOnly"
         End
         Begin VB.Menu Ooglenet 
            Caption         =   "Oogle.net"
         End
         Begin VB.Menu twentysixhundred 
            Caption         =   "2600.com"
         End
         Begin VB.Menu Madjester 
            Caption         =   "Madjester.net"
         End
         Begin VB.Menu LiquidRelm 
            Caption         =   "Liquid's Realm"
         End
      End
      Begin VB.Menu MacroShop 
         Caption         =   "MacroShop"
      End
      Begin VB.Menu Fader 
         Caption         =   "10-Color Fader"
      End
      Begin VB.Menu SNDecoder 
         Caption         =   "SN Decoder"
      End
      Begin VB.Menu sep46566656565 
         Caption         =   "-"
      End
      Begin VB.Menu upchat 
         Caption         =   "UpChat — (off)"
      End
      Begin VB.Menu CHANGEAOLCAP 
         Caption         =   "Change AOL Cap."
      End
      Begin VB.Menu sep65 
         Caption         =   "-"
      End
      Begin VB.Menu PingFlood 
         Caption         =   "Ping Flooder"
      End
      Begin VB.Menu Ping 
         Caption         =   "IP Pinger"
      End
      Begin VB.Menu Raw 
         Caption         =   "Telenet"
      End
      Begin VB.Menu sep6575 
         Caption         =   "-"
      End
      Begin VB.Menu Encrypt 
         Caption         =   "Encrypt \ Decrypt"
      End
      Begin VB.Menu VirusProtect 
         Caption         =   "Virus Protection"
      End
      Begin VB.Menu sep5 
         Caption         =   "-"
      End
      Begin VB.Menu RollUp 
         Caption         =   "Roll Up"
      End
      Begin VB.Menu RollDown 
         Caption         =   "Roll Down"
         Enabled         =   0   'False
      End
      Begin VB.Menu sep87998 
         Caption         =   "-"
      End
      Begin VB.Menu cancel6 
         Caption         =   "Cancel"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Function Lag(thetext As String)
G$ = thetext$
a = Len(G$)
 Dim s$
For w = 1 To a Step 3
    r$ = Mid$(G$, w, 1)
    u$ = Mid$(G$, w + 1, 1)
    s$ = Mid$(G$, w + 2, 1)
    p$ = p$ & "<pre><html><pre><html><pre><html><pre><html><pre><html><pre><html><pre><html><pre><html>" & r$ & "</html></pre></html></pre></html></pre></html></pre></html></pre></html></pre></html></pre></html></pre>" & u$ & "<pre><html><pre><html><pre><html><pre><html><pre><html><pre><html>" & s$ & "</html></pre></html></pre></html></pre></html></pre></html></pre></html></pre>"
Next w
Lag = p$
End Function

Private Sub About_Click()
Form24.Visible = True
End Sub


Private Sub Advertise_Click()

ChatSend "<Font Size=2 Face=Arial Color=#00AF00>·÷±¦[ Fatal Fury ¹·º"
subbas.timeout 0.5
ChatSend "<Font Size=2 Face=Arial Color=#00AF00>·÷±¦[ By : Nex"

End Sub



Private Sub Attention_Click()
Dim a
a = InputBox("What Do You Want To Say?", "", "")
If a = "" Then
Exit Sub
End If
If a <> "" Then
ChatSend "<Font Size=2 Face=Arial Color=#FF0000>~~~~~~~( Attention! )~~~~~~~"
subbas.timeout 0.5
ChatSend "" & a
subbas.timeout 0.5
ChatSend "<Font Size=2 Face=Arial Color=#FF0000>~~~~~~~( Attention! )~~~~~~~"
End If
End Sub


Private Sub BackTalker_Click()
Form31.Visible = True
End Sub

Private Sub CHANGEAOLCAP_Click()
Dim a
a = InputBox("Enter New Caption", "", "")
subbas.AOLChangeCaption a
End Sub



Private Sub ChatLag_Click()
Form35.Visible = True
End Sub

Private Sub ChatScroller_Click()
Form2.Visible = True
End Sub


Private Sub ClearChat_Click()
 Dim X%
View% = subbas.FindChildByClass(FindChatRoom(), "RICHCNTL")
Buffy$ = Chr$(13) & Chr$(10) & "" & (who$) & ":" & Chr$(9) & "" & (what$) & ""
X% = subbas.SendMessageByString(View%, subbas.WM_SETTEXT, 0, "")
End Sub

Private Sub Command1_Click()
Attribute Command1_Click.VB_HelpID = 2
Attribute Command1_Click.VB_Description = "hello"

ChatSend Text1.Text
Text1.Text = ""

End Sub




Private Sub Command1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label4.ForeColor = vbWhite
Label6.ForeColor = vbWhite
Label7.ForeColor = vbWhite
Label8.ForeColor = vbWhite
Label9.ForeColor = vbWhite
End Sub



Private Sub DiceScroller_Click()
Form6.Visible = True
End Sub

Private Sub Disclaimer_Click()
MsgBox "I take no responsibility for what you do with this prog. This should not be decompiled in any way without my concent. This should not be sold for a profit. You can freely distribute this program to anyone. If you do not agree to these terms then you should immediately remove this from your computor and keep being the lamer you are.  - Nex", vbInformation, "DisclaimeR"
End Sub


Private Sub EliteIMer_Click()
Form15.Visible = True
End Sub

Private Sub EliteTalker_Click()
Form13.Visible = True
End Sub

Private Sub Encrypt_Click()
Form12.Visible = True
End Sub

Private Sub Fader_Click()
Form23.Visible = True
End Sub

Private Sub FakeIMVirus_Click()
Dim a
a = InputBox("Enter Screen Name", "", "")
If a = "" Then
Exit Sub
End If
If a <> "" Then
InstantMessage "" & a, Label5.Caption & "-==Fatal Fury Virus Generator==-"
subbas.timeout 0.7
InstantMessage "" & a, Label5.Caption & "-==Target is " & a & "==-"
subbas.timeout 0.7
InstantMessage "" & a, Label5.Caption & "-==Uploading Virus==-"
subbas.timeout 0.7
InstantMessage "" & a, Label5.Caption & "-==Virus Uploaded==-"
subbas.timeout 0.7
InstantMessage "" & a, Label5.Caption & "-==Have A Nice Day==-"
End If
End Sub

Private Sub FakeNuke_Click()
Dim a
a = InputBox("Who to scare", "", "")
If a = "" Then
Exit Sub
End If
If a <> "" Then
InstantMessage "" & a, Label5.Caption & "-==Fatal Fury Raw Hacker Loaded==-"
subbas.timeout 0.7
InstantMessage "" & a, Label5.Caption & "-==Target IP is " & a & "==-"
subbas.timeout 0.7
InstantMessage "" & a, Label5.Caption & "-==Connecting...==-"
subbas.timeout 0.7
InstantMessage "" & a, Label5.Caption & "-==Nuking " & a & "==-"
subbas.timeout 0.7
InstantMessage "" & a, Label5.Caption & "-==" & a & " Has Been Nuked==-"
End If
End Sub


Private Sub FakeProg_Click()
Form26.Visible = True
End Sub

Private Sub FakeVirus_Click()
ChatSend "<Font Size=2 Face=Arial Color=#FF0000>«••( Fatal Fury Virus Lab )••»"""
subbas.timeout 0.5
ChatSend "<Font Size=2 Face=Arial Color=#FF0000>«••( Chat Virus #1 Loaded )••»"""
subbas.timeout 0.9
ChatSend "<Font Size=2 Face=Arial Color=#FF0000>«••( Virus Affects Room In: )••»"""
subbas.timeout 0.5
ChatSend "5"
subbas.timeout 0.9
ChatSend "4"
subbas.timeout 0.9
ChatSend "3"
subbas.timeout 0.9
ChatSend "2"
subbas.timeout 0.9
ChatSend "1"
subbas.timeout 0.9
ChatSend "<Font Size=2 Face=Arial Color=#FF0000>«••( Virus Has Now Taken Effect )••»"""
subbas.timeout 0.9
ChatSend "<Font Size=2 Face=Arial Color=#FF0000>«••( Fatal Fury Virus Lab )••»"""
subbas.timeout 0.5
ChatSend "<Font Size=2 Face=Arial Color=#FF0000>«••(       Unloaded       )••»"""



End Sub

Private Sub FatalScroller_Click()
Form34.Visible = True
End Sub

Private Sub Form_Load()
Dim NewWin&
Dim FormSize&
Dim TheArea0&, ThePoints0(5) As Module1.POINTAPI
Dim TheArea1&, ThePoints1(4) As Module1.POINTAPI
ThePoints0(0).X = 225
ThePoints0(0).Y = 27
ThePoints0(1).X = 0
ThePoints0(1).Y = 27
ThePoints0(2).X = 0
ThePoints0(2).Y = 0
ThePoints0(3).X = 207
ThePoints0(3).Y = 1
ThePoints0(4).X = 207
ThePoints0(4).Y = 26
ThePoints0(5).X = 225
ThePoints0(5).Y = 27
TheArea0& = CreatePolygonRgn(ThePoints0(0), 6, ALTERNATE)
ThePoints1(0).X = 214
ThePoints1(0).Y = 8
ThePoints1(1).X = 0
ThePoints1(1).Y = 5
ThePoints1(2).X = 0
ThePoints1(2).Y = 0
ThePoints1(3).X = 225
ThePoints1(3).Y = 0
ThePoints1(4).X = 214
ThePoints1(4).Y = 8
TheArea1& = CreatePolygonRgn(ThePoints1(0), 5, ALTERNATE)
Call CombineRgn(TheArea0&, TheArea0&, TheArea1&, RGN_OR)
NewWin& = CreateRectRgn(0, 0, 0, 0)
FormSize& = CreateRectRgn(0, 0, 207, 101)
Call CombineRgn(NewWin&, FormSize&, TheArea0&, RGN_DIFF)
Call SetWindowRgn(Me.hWnd, NewWin&, True)

Form1.Visible = True
Top = -400
Left = 0
FFX.StayOnTop Me
Form1.Height = 1470
Me.Picture = Form1.image2.Picture
subbas.AOLChangeCaption "FátáL FúRý ¹·º ßý : Nex"

End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label4.ForeColor = vbWhite
Label6.ForeColor = vbWhite
Label7.ForeColor = vbWhite
Label8.ForeColor = vbWhite
Label9.ForeColor = vbWhite
End Sub


Private Sub Form_Unload(Cancel As Integer)
ChatSend "<Font Size=2 Face=Arial Color=#00AF00>·÷±¦[ Fatal Fury ¹·º"
subbas.timeout 0.5
ChatSend "<Font Size=2 Face=Arial Color=#00AF00>·÷±¦[ By : Nex"
subbas.timeout 0.5
ChatSend "<Font Size=2 Face=Arial Color=#00AF00>·÷±¦[ Unloaded at " & Time
subbas.AOLChangeCaption "America  Online"
Unload Form1

End Sub


Private Sub Greetz_Click()
MsgBox "Greetz"
MsgBox "PimPDaDDy"
MsgBox "JoLt"
MsgBox "BL00DyX"
MsgBox "Slice"
MsgBox "And Of Course Turtle for the Sweet Inro Art!"
End Sub



Private Sub HackAttack_Click()
Dim a
a = InputBox("Who Do You Want To Scare?", "", "")
If a = "" Then
Exit Sub
End If
If a <> "" Then
ChatSend "<Font Size=2 Face=Arial Color=#FF0000>«••( Fatal Fury Raw Hacker Loaded )••»"
subbas.timeout 0.9
ChatSend "<Font Size=2 Face=Arial Color=#FF0000>«••( Target is " & a & " )••»"
subbas.timeout 0.9
ChatSend "<Font Size=2 Face=Arial Color=#FF0000>«••( Scanning " & a & " For IP )••»"
subbas.timeout 0.9
ChatSend "<Font Size=2 Face=Arial Color=#FF0000>«••( IP Found - 127.334.193.64 )••»"
subbas.timeout 0.9
ChatSend "<Font Size=2 Face=Arial Color=#FF0000>«••( Scanning For Port )••»"
subbas.timeout 0.9
ChatSend "<Font Size=2 Face=Arial Color=#FF0000>«••( Port Found - 23 )••»"
subbas.timeout 0.9
ChatSend "<Font Size=2 Face=Arial Color=#FF0000>«••( Connecting... )••»"
subbas.timeout 0.9
ChatSend "<Font Size=2 Face=Arial Color=#FF0000>«••( Connected to " & a & " )••»"
subbas.timeout 0.9
ChatSend "<Font Size=2 Face=Arial Color=#FF0000>«••( Unloading Virus... )••»"
subbas.timeout 0.9
ChatSend "<Font Size=2 Face=Arial Color=#FF0000>«••( Virus Uploaded )••»"
subbas.timeout 0.9
ChatSend "<Font Size=2 Face=Arial Color=#FF0000>«••( Have A Nice Day )••»"
subbas.timeout 0.9
ChatSend "<Font Size=2 Face=Arial Color=#FF0000>«••( Fatal Fury Raw Hacker Unloaded )••»"
End If
End Sub


Private Sub HackerTalk_Click()
Form30.Visible = True
End Sub


Private Sub HomePosition_Click()
Form1.Top = -400
Form1.Left = 0
End Sub


Private Sub IMAdvertise_Click()
Dim a, b, c
c = InputBox("Enter The Screen Name Of The Person", "", "")
If c = "" Then
Exit Sub
End If
If c <> "" Then
a = "<Font Size=2 Face=Arial Color=#FF0000>«••( Fatal Fury )••»"
b = "<Font Size=2 Face=Arial Color=#FF0000>«••(  By: Nex  )••»"
InstantMessage "" & c, "" & a
InstantMessage "" & c, "" & b
End If
End Sub

Private Sub Image1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
FFX.FormDrag Me
End Sub

Private Sub Image1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label4.ForeColor = vbWhite
Label6.ForeColor = vbWhite
Label7.ForeColor = vbWhite
Label8.ForeColor = vbWhite
Label9.ForeColor = vbWhite
End Sub


Private Sub IManswer_Click()
Form16.Visible = True
End Sub

Private Sub IMBomb_Click()
Form4.Visible = True
End Sub


Private Sub IMIgnorer_Click()
Form17.Visible = True
End Sub

Private Sub IMLinker_Click()
Form33.Visible = True
End Sub

Private Sub IMMANIP_Click()
Form7.Visible = True
End Sub

Private Sub IMOFF_Click()
subbas.IsUserOnline
If subbas.IsUserOnline = 0 Then
MsgBox "Not Online", vbCritical, "Sign On"
End If
If subbas.IsUserOnline = 1 Then
subbas.IMsOff
End If
End Sub

Private Sub IMON_Click()
subbas.IsUserOnline
If subbas.IsUserOnline = 0 Then
MsgBox "Not Online", vbCritical, "Sign On"
End If
If subbas.IsUserOnline = 1 Then
subbas.IMsOn
End If
End Sub



Private Sub Label1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
FFX.FormDrag Me
End Sub



Private Sub Label2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label4.ForeColor = vbWhite
Label6.ForeColor = vbWhite
Label7.ForeColor = vbWhite
Label8.ForeColor = vbWhite
Label9.ForeColor = vbWhite
End Sub


Private Sub Label3_Click()
subbas.Playwav "min.wav"
Form10.Visible = True
End Sub


Private Sub Label2_Click()
Dim a
a = MsgBox("Sure You Want To Leave?", 4, "FátáL FúRý ¹·º ßý : Nex")
If a = 7 Then
End If
If a = 6 Then

Unload Form1
End
End If
End Sub


Private Sub Label3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label4.ForeColor = vbWhite
Label6.ForeColor = vbWhite
Label7.ForeColor = vbWhite
Label8.ForeColor = vbWhite
Label9.ForeColor = vbWhite
End Sub

Private Sub Label4_Click()

PopupMenu Main, 4
End Sub



Private Sub Label6_Click()

PopupMenu Chat, 4
End Sub


Private Sub Label7_Click()

PopupMenu IM, 4
End Sub

Private Sub Label8_Click()

PopupMenu mail, 4
End Sub


Private Sub Label9_Click()

PopupMenu Other, 4
End Sub


Private Sub Lag1_Click()
ChatSend Lag("Fatal Fury")
End Sub

Private Sub Lag2_Click()
ChatSend Lag("Lagging...")
End Sub


Private Sub Lag3_Click()
ChatSend Lag("Fatal Fury By Nex")
End Sub

Private Sub LamerScanner_Click()
Dim a
a = InputBox("Enter The Screen Name Of The Lamer.", "", "")
If a = "" Then
Exit Sub
End If
If a <> "" Then
ChatSend "<Font Size=2 Face=Arial Color=#00AF00>·÷±¦[ Fatal Fury Lamer Scanner"
subbas.timeout 1.5
ChatSend "<Font Size=2 Face=Arial Color=#00AF00>·÷±¦[ Scanning " & a & " For Lamers "
subbas.timeout 3
ChatSend "<Font Size=2 Face=Arial Color=#00AF00>·÷±¦[ A Lamer Has Been Found Under The SN " & a & " !"
subbas.timeout 2
ChatSend "<Font Size=2 Face=Arial Color=#00AF00>·÷±¦[ Fatal Fury Lamer Scanner"
subbas.timeout 1
ChatSend "<Font Size=2 Face=Arial Color=#00AF00>·÷±¦[ UnLoaded"
End If
End Sub

Private Sub LinkSender_Click()
Form27.Visible = True
End Sub

Private Sub LiquidRelm_Click()
subbas.Keyword "www.skywalkersrelm.com"
End Sub

Private Sub MacroBrowse_Click()
Form22.Visible = True
End Sub

Private Sub MacroShop_Click()
Form18.Visible = True
End Sub

Private Sub Madjester_Click()
subbas.Keyword "http://www.madjester.net"
End Sub

Private Sub MailBomber_Click()
Form3.Visible = True
End Sub


Private Sub MailFade_Click()
Form9.Visible = True
End Sub


Private Sub MailPyRO_Click()
Form25.Visible = True
End Sub

Private Sub MassMailer_Click()
Form5.Visible = True
End Sub


Private Sub MiddleFinger_Click()

ChatSend "<Font Size=2 Face=Arial Color=#00AF00>·÷±¦[ Fatal Fury Middle Finger"
subbas.timeout 0.5
ChatSend "<b></b><Font Size=2 Face=Arial Color=#00AF00>‹^› ‹^› ‹^› ‹^› ‹^› ‹^› ‹^› ‹^› ‹^› ‹^› ‹^› ‹^› ‹^› "

End Sub

Private Sub Ooglenet_Click()
subbas.Keyword "www.oogle.net"
End Sub


Private Sub Phisher_Click()
Form14.Visible = True
End Sub





Private Sub Ping_Click()
Form19.Visible = True
End Sub


Private Sub PyROsite_Click()
subbas.Keyword "www.angelfire.com/ab3/PyRO"
End Sub

Private Sub PingFlood_Click()
Form36.Visible = True
End Sub

Private Sub Raw_Click()
Form21.Visible = True
End Sub



Private Sub RollDown_Click()
Do
Form1.Height = Form1.Height + 11
Loop Until Form1.Height = 1470
RollUp.Enabled = True
RollDown.Enabled = False
End Sub

Private Sub RollUp_Click()
Do
Form1.Height = Form1.Height - 11
Loop Until Form1.Height = 975
RollDown.Enabled = True
RollUp.Enabled = False
End Sub


Private Sub RoomBust_Click()
Form29.Visible = True
End Sub

Private Sub SBuddyin_Click()
ChatSend "{S buddyin"
End Sub

Private Sub SBuddyout_Click()
ChatSend "{S buddyout"
End Sub

Private Sub Scrambler_Click()
Form32.Visible = True
End Sub




Private Sub SGoodby_Click()
ChatSend "{S goodby"
End Sub


Private Sub SNDecoder_Click()
Form20.Visible = True
End Sub

Private Sub SoundHell_Click()
ChatSend "{S Goodby"
subbas.timeout 0.5
ChatSend "{S Buddyin"
subbas.timeout 0.5
ChatSend "{S Welcome"
subbas.timeout 0.5
ChatSend "{S buddyout"
subbas.timeout 0.5
ChatSend "{S drop"

End Sub

Private Sub SpiralScroll_Click()
Form28.Visible = True
End Sub

Private Sub SWelcome_Click()
ChatSend "{S welcome"
End Sub

Private Sub turtlesonly_Click()
subbas.Keyword "www.turtlesonly.com"
End Sub

Private Sub twentysixhundred_Click()
subbas.Keyword "www.2600.com"
End Sub


Private Sub Upchat_Click()
If Upchat.Caption = "UpChat — (off)" Then
 subbas.Upchat
 Upchat.Caption = "UpChat — (on)"
Else
 subbas.UnUpchat
 Upchat.Caption = "UpChat — (off)"
End If
End Sub


Private Sub VirusProtect_Click()
Form11.Visible = True
End Sub



Private Sub WarnLamer_Click()
a = InputBox("Enter SN To Warn", "", "")
If a = "" Then
Exit Sub
End If
If a <> "" Then
InstantMessage "" & a, "Wàtçh Øút Làmèr Ì'm Ûšïñg FâtàL FµRý ¹·º ßÿ Ñèx"
End If
End Sub

Private Sub WarnLamerMail_Click()
a = InputBox("Enter SN To Warn", "", "")
If a = "" Then
Exit Sub
End If
If a <> "" Then
Jolt.SendMail "" & a, "Read This Lamer", "Wàtçh Øút Làmèr Ì'm Ûšïñg FâtàL FµRý ¹·º ßÿ Ñèx"
End If
End Sub

Private Sub Words_Click()
Form8.Visible = True
End Sub


