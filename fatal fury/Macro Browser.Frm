VERSION 4.00
Begin VB.Form Form22 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Macro Browser"
   ClientHeight    =   4380
   ClientLeft      =   2235
   ClientTop       =   2295
   ClientWidth     =   6870
   Height          =   4845
   Left            =   2175
   LinkTopic       =   "Form22"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4380
   ScaleWidth      =   6870
   ShowInTaskbar   =   0   'False
   Top             =   1890
   Width           =   6990
   Begin VB.TextBox Text2 
      Height          =   615
      Left            =   1680
      TabIndex        =   3
      Text            =   "Text2"
      Top             =   4800
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Scroll"
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4125
      Left            =   1440
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   1
      Top             =   120
      Width           =   5295
   End
   Begin VB.ListBox List1 
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3630
      ItemData        =   "Macro Browser.frx":0000
      Left            =   120
      List            =   "Macro Browser.frx":0002
      Sorted          =   -1  'True
      TabIndex        =   0
      Top             =   600
      Width           =   1215
   End
End
Attribute VB_Name = "Form22"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
Jolt.IsUserOnline
If Jolt.IsUserOnline = 0 Then
MsgBox "Not Online", 16, "Not Online"
End If
If Jolt.IsUserOnline = 1 Then
Jolt.timeout 0.4
                           ChatSend "<Font Size=2 Face=Arial Color=#00FF00>·÷±¦[ Fatal Fury Macro Collection"
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
ChatSend "<Font Size=2 Face=Arial Color=#00FF00>·÷±¦[ Fatal Fury Macro Collection"
End Sub

Private Sub Command2_Click()
InstantMessage "ne0678", "<font Size=3>" & Text1.Text
End Sub


Private Sub Form_Load()
Top = 0
Left = 0
FFX.StayOnTop Me
Me.Picture = Form1.image2.Picture
Form1.Hide

Dim sNextFile As String
sNextFile = Dir$(App.Path & "\macro\*.mcr")
While sNextFile <> ""
    List1.AddItem sNextFile
    sNextFile = Dir$
Wend

End Sub


Private Sub Form_Unload(Cancel As Integer)
Form1.Visible = True
Unload Me
End Sub


Private Sub List1_Click()
On Error Resume Next
LoadText Text1, App.Path & "\macro\" & List1.Text
End Sub


