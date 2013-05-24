VERSION 4.00
Begin VB.Form Form18 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Macro Shop"
   ClientHeight    =   4005
   ClientLeft      =   2610
   ClientTop       =   1965
   ClientWidth     =   6510
   Height          =   4770
   Left            =   2550
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4005
   ScaleWidth      =   6510
   ShowInTaskbar   =   0   'False
   Top             =   1260
   Width           =   6630
   Begin VB.ListBox List4 
      BackColor       =   &H00FFFFFF&
      Columns         =   10
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   270
      ItemData        =   "MacroShop.frx":0000
      Left            =   120
      List            =   "MacroShop.frx":0022
      TabIndex        =   7
      Top             =   840
      Width           =   2655
   End
   Begin VB.ListBox List3 
      BackColor       =   &H00FFFFFF&
      Columns         =   10
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   690
      ItemData        =   "MacroShop.frx":0044
      Left            =   120
      List            =   "MacroShop.frx":00E4
      TabIndex        =   6
      Top             =   120
      Width           =   2655
   End
   Begin VB.ListBox List2 
      BackColor       =   &H00FFFFFF&
      Columns         =   3
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   270
      ItemData        =   "MacroShop.frx":0184
      Left            =   120
      List            =   "MacroShop.frx":0191
      TabIndex        =   4
      Top             =   1200
      Width           =   6255
   End
   Begin VB.PictureBox Picture1 
      Height          =   615
      Left            =   3360
      ScaleHeight     =   555
      ScaleWidth      =   795
      TabIndex        =   3
      Top             =   4200
      Width           =   855
   End
   Begin VB.TextBox Text2 
      Enabled         =   0   'False
      Height          =   975
      Left            =   2400
      TabIndex        =   2
      Text            =   "Text2"
      Top             =   4680
      Width           =   855
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   2295
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Top             =   1560
      Width           =   6255
   End
   Begin VB.ListBox List1 
      BackColor       =   &H00FFFFFF&
      Columns         =   10
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   1020
      ItemData        =   "MacroShop.frx":01BC
      Left            =   2880
      List            =   "MacroShop.frx":0322
      Sorted          =   -1  'True
      TabIndex        =   0
      Top             =   120
      Width           =   3495
   End
   Begin VB.PictureBox CommonDialog1 
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   480
      Left            =   1080
      ScaleHeight     =   420
      ScaleWidth      =   1140
      TabIndex        =   8
      Top             =   4200
      Width           =   1200
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   375
      Left            =   6960
      TabIndex        =   5
      Top             =   720
      Width           =   495
   End
   Begin VB.Menu file 
      Caption         =   "File"
      Begin VB.Menu SAVE 
         Caption         =   "Save As"
      End
      Begin VB.Menu open 
         Caption         =   "Open"
      End
      Begin VB.Menu sep 
         Caption         =   "-"
      End
      Begin VB.Menu send 
         Caption         =   "Send"
      End
      Begin VB.Menu sep1 
         Caption         =   "-"
      End
      Begin VB.Menu Clear 
         Caption         =   "Clear"
      End
   End
End
Attribute VB_Name = "Form18"
Attribute VB_Creatable = False
Attribute VB_Exposed = False

Private Sub ListBox1_BeforeDragOver()

End Sub


Private Sub Bcurve_Click()
MacroFilter_BCurve Text1.Text
End Sub

Private Sub BubbleTop_Click()
MacroFilter_BubbleTop Text1.Text
End Sub

Private Sub ClawTop_Click()
MacroFilter_ClawTop Text1.Text

End Sub

Private Sub clear_Click()
Dim A
A = MsgBox(" Are you sure you want to clear this?", 4, "Clear?")
If A = 7 Then
End If
If A = 6 Then
Text1.Text = ""
End If
End Sub


Private Sub Command1_Click()

End Sub

Private Sub Label3_Click()
Text1.Text = "" + Text1.Text + "" + Label3.Caption + ""
End Sub

Private Sub Label4_Click()
Text1.Text = "" + Text1.Text + "" + Label4.Caption + ""
End Sub


Private Sub Label5_Click()
Text1.Text = Text1.Text + Label5.Caption
End Sub

Private Sub Curve_Click()
MacroFilter_Curve Text1.Text
End Sub

Private Sub CurveBottom_Click()
MacroFilter_CurveBottom Text1.Text
End Sub


Private Sub Darken_Click()
MacroFilter_Darken Text1.Text
End Sub


Private Sub Destroy_Click()
MacroFilter_Destroy Text1.Text
End Sub


Private Sub DripTop_Click()
MacroFilter_DrippingTop Text1.Text

End Sub

Private Sub Electric_Click()
MacroFilter_Electric Text1.Text
End Sub


Private Sub FireyBottom_Click()
MacroFilter_FireyBottom Text1.Text
End Sub


Private Sub Form_Load()

Top = 0
Left = 0
FFX.StayOnTop Me
Me.Picture = Form11.Image1.Picture
Form1.Hide
End Sub

Private Sub Form_Unload(Cancel As Integer)
Form1.Visible = True
Unload Me
End Sub


Private Sub Ghost_Click()
MacroFilter_Ghost Text1.Text
End Sub

Private Sub Indent_Click()
MacroFilter_Indent Text1.Text
End Sub


Private Sub JaG_Click()
MacroFilter_JaG Text1.Text
End Sub


Private Sub Lighten_Click()
MacroFilter_Lighten Text1.Text
End Sub


Private Sub List1_Click()
Index = List1.ListIndex
Text1.Text = Text1.Text + List1.List(Index)
End Sub

Private Sub List2_Click()
Index = List2.ListIndex
Text1.Text = Text1.Text + List2.List(Index)
End Sub

Private Sub List3_Click()
Index = List3.ListIndex
Text1.Text = Text1.Text + List3.List(Index)
End Sub

Private Sub List4_Click()
Index = List4.ListIndex
Text1.Text = Text1.Text + List4.List(Index)
End Sub

Private Sub open_Click()
Dim A
On Error GoTo errorhandler
A = InputBox("Enter Filename", "", "")
If A = "" Then
Exit Sub
End If
If A <> "" Then
Open App.Path & "/macro/" & A For Input As #1
Text1.Text = Input$(LOF(1), 1)
Close #1
End If
errorhandler:
 If Err = 76 Then
 MsgBox "File Not Found"
 End If
 Resume Next
End Sub


Private Sub PCurve_Click()
MacroFilter_PCurve Text1.Text
End Sub

Private Sub Psytop_Click()
MacroFilter_PsYTop Text1.Text
End Sub


Private Sub RandomBottom_Click()
MacroFilter_RandomBottom Text1.Text
End Sub

Private Sub Rapid_Click()
MacroFilter_Rapid Text1.Text
End Sub


Private Sub ReplaceLines_Click()
MacroFilter_ReplaceLines Text1.Text
End Sub


Private Sub ReplaceSlants_Click()
MacroFilter_ReplaceSlants Text1.Text
End Sub

Private Sub Reverse_Click()
MacroFilter_Reverse Text1.Text
End Sub


Private Sub RoundedTop_Click()
MacroFilter_RoundedTop Text1.Text
End Sub


Private Sub SAVE_Click()
Dim A
On Error GoTo errorhandler
A = InputBox("Enter Name For File", "", "")
If A = "" Then
Exit Sub
End If
Open App.Path & "/macro/" & A For Output As #1
Print #1, Text1.Text
Close #1
errorhandler:
 If Err = 76 Then
 MsgBox "File Not Found"
 End If
 Resume Next
End Sub


Private Sub Send_Click()
Jolt.IsUserOnline
If Jolt.IsUserOnline = 0 Then
MsgBox "Not Online", 16, "Not Online"
End If
If Jolt.IsUserOnline = 1 Then
Jolt.timeout 0.4
                           ChatSend "<Font Size=2 Face=Arial Color=#00FF00>·÷±¦[ Fatal Fury Macro Shop"
                           subbas.timeout 0.4
                           
                           
Let text2.Text = Text1.Text
If Mid(Text1, Len(Text1), 1) <> Chr$(10) Then
    Text1 = Text1 + Chr$(13) + Chr$(10)
End If
Do While (InStr(Text1, Chr$(13)) <> 0)
    Counter = Counter + 1
    ChatSend Mid(Text1, 1, InStr(Text1, Chr(13)) - 1)
    subbas.timeout 0.4
    If Counter = 4 Then
        subbas.timeout (1.1)
        Counter = 0
    End If
    Text1 = Mid(Text1, InStr(Text1, Chr(13) + Chr(10)) + 2)
Loop
Let Text1.Text = text2.Text
End If
End Sub




Private Sub timer1_Timer()
Text1.Text = Text1.Text + " __________   ____       ßý:                                                 _________"
Text1.Text = Text1.Text = "||                || ||       ||                     _____                            ||               ||"
End Sub


Private Sub WAVES_Click()
Text1.Text = "¯`·.,¸¸¸,.·´¯¯`·.,¸¸¸,.·´¯¯`·.,¸¸¸,.·´¯¯`·.,¸¸¸,.·´¯¯`·.,¸¸¸,.·´¯¯`·.,¸¸¸,.·´¯¯`·.,¸¸¸,.·´¯¯`·.,¸¸¸,.·´¯¯`·.,¸¸¸,.·´¯¯`·.,¸¸¸,.·´¯¯`·.,¸¸¸,.·´¯¯`·.,¸¸¸,.·´¯¯`·.,¸¸¸,.·´¯¯`·.,¸¸¸,.·´¯¯`·.,¸¸¸,.·´¯¯`·.,¸¸¸,.·´¯¯`·.,¸¸¸,.·´¯¯`·.,¸¸¸,.·´¯¯`·.,¸¸¸,.·´¯"
End Sub


Private Sub Shadow_Click()
MacroFilter_Shadow Text1.Text
End Sub


Private Sub Smear_Click()
MacroFilter_Smear Text1.Text
End Sub


Private Sub SpikeBottom_Click()
MacroFilter_SpikeBottom Text1.Text
End Sub


Private Sub StarTop_Click()
MacroFilter_StarTop Text1.Text
End Sub


Private Sub Straighten_Click()
MacroFilter_Straighten Text1.Text
End Sub



Private Sub Stretch_Click()
MacroFilter_Stretch Text1.Text
End Sub


Private Sub ThickenBottom_Click()
MacroFilter_ThickenBottom Text1.Text
End Sub


Private Sub ThickenTop_Click()
MacroFilter_ThickenTop Text1.Text
End Sub


Private Sub TreadTop_Click()
MacroFilter_TreadTop Text1.Text
End Sub


Private Sub UnIndent_Click()
MacroFilter_UnIndent Text1.Text
End Sub


Private Sub UpsideDown_Click()
MacroFilter_UpsideDown Text1.Text
End Sub


