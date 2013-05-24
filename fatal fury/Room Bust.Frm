VERSION 4.00
Begin VB.Form Form29 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Room Buster"
   ClientHeight    =   1305
   ClientLeft      =   1980
   ClientTop       =   2670
   ClientWidth     =   3405
   Height          =   1770
   Left            =   1920
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1305
   ScaleWidth      =   3405
   ShowInTaskbar   =   0   'False
   Top             =   2265
   Width           =   3525
   Begin VB.TextBox Text3 
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
      Height          =   330
      Left            =   1320
      TabIndex        =   8
      Text            =   "1500"
      Top             =   840
      Width           =   690
   End
   Begin VB.TextBox Text2 
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
      Height          =   330
      Left            =   90
      TabIndex        =   4
      Text            =   "50"
      Top             =   810
      Width           =   690
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00FF8080&
      Caption         =   "Stop"
      Enabled         =   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   2205
      TabIndex        =   3
      Top             =   480
      Width           =   1050
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00FF8080&
      Caption         =   "Bust"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   2205
      TabIndex        =   2
      Top             =   90
      Width           =   1050
   End
   Begin VB.ComboBox Combo1 
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
      Height          =   330
      ItemData        =   "Room Bust.frx":0000
      Left            =   90
      List            =   "Room Bust.frx":000D
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   90
      Width           =   2040
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
      Left            =   90
      TabIndex        =   0
      Text            =   "Fatal Fury"
      Top             =   450
      Width           =   1245
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Timeout "
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   210
      Left            =   2160
      TabIndex        =   9
      Top             =   840
      Width           =   600
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Tries"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   210
      Left            =   1800
      TabIndex        =   7
      Top             =   480
      Width           =   360
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   210
      Left            =   1680
      TabIndex        =   6
      Top             =   480
      Width           =   90
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Max "
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   210
      Left            =   855
      TabIndex        =   5
      Top             =   855
      Width           =   345
   End
End
Attribute VB_Name = "Form29"
Attribute VB_Creatable = False
Attribute VB_Exposed = False


Private dStop As Boolean

Private Sub Command1_Click()
If Text1.Text = "" Then Exit Sub
If Combo1.Text = "" Then Exit Sub
Dim bCount As Integer
bCount = 0
If FindRoom <> 0 Then CloseWindow (FindRoom)
dStop = False
Command2.Enabled = True
Command1.Enabled = False
text2.Enabled = False
Text1.Enabled = False
Text3.Enabled = False
Combo1.Enabled = False
If Combo1.Text = "Private Room" Then
    Do
        PrivateRoom Text1.Text
        If dStop = True Then Exit Do
        bCount = bCount + 1
        Label2.Caption = bCount
        If bCount >= text2.Text Then Exit Do
        For B = 1 To Text3.Text
            DoEvents
        Next B
        WaitForOKOrRoom Text1.Text
    Loop Until FindRoom <> 0
ElseIf Combo1.Text = "Public Room" Then
    Do
        PublicRoom Text1.Text
        If dStop = True Then Exit Do
        bCount = bCount + 1
        Label2.Caption = bCount
        If bCount >= text2.Text Then Exit Do
        For B = 1 To Text3.Text
            DoEvents
        Next B
        WaitForOKOrRoom Text1.Text
    Loop Until FindRoom <> 0
Else
    Do
        MemberRoom Text1.Text
        If dStop = True Then Exit Do
        bCount = bCount + 1
        Label2.Caption = bCount
        If bCount >= text2.Text Then Exit Do
        For B = 1 To Text3.Text
            DoEvents
        Next B
        WaitForOKOrRoom Text1.Text
    Loop Until FindRoom <> 0
End If
If FindRoom <> 0 Then
    ChatSend "Room Busted in " & bCount & " tries"
End If
Command2.Enabled = False
Command1.Enabled = True
text2.Enabled = True
Text1.Enabled = True
Text3.Enabled = True
Combo1.Enabled = True
End Sub

Private Sub Command2_Click()
dStop = True
End Sub

Private Sub Form_Load()
Top = 0
Left = 0
FFX.StayOnTop Me
Me.Picture = Form1.Image2.Picture
Form1.Hide
Combo1.Text = "Private Room"
End Sub

Private Sub Form_Unload(Cancel As Integer)
Command2_Click
Form1.Visible = True
Unload Me
End Sub

