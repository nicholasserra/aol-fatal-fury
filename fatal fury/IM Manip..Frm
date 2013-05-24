VERSION 4.00
Begin VB.Form Form7 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "IM Manipulator"
   ClientHeight    =   1710
   ClientLeft      =   1140
   ClientTop       =   1650
   ClientWidth     =   2895
   Height          =   2175
   Left            =   1080
   LinkTopic       =   "Form7"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1710
   ScaleWidth      =   2895
   ShowInTaskbar   =   0   'False
   Top             =   1245
   Width           =   3015
   Begin VB.CommandButton Command1 
      Caption         =   "Send"
      Height          =   615
      Left            =   1800
      TabIndex        =   3
      Top             =   120
      Width           =   975
   End
   Begin VB.TextBox Text3 
      Height          =   735
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   2
      Text            =   "IM Manip..frx":0000
      Top             =   840
      Width           =   2655
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Text            =   "From"
      Top             =   480
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "To"
      Top             =   120
      Width           =   1575
   End
End
Attribute VB_Name = "Form7"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()


If Text1.Text = "" Then Exit Sub
    If text2.Text = "" Then Exit Sub
    If Text3.Text = "" Then Exit Sub
    InstantMessage Text1.Text, Chr(13) & Chr(10) & Chr(13) & Chr(10) & Chr(13) & Chr(10) & Chr(13) & Chr(10) & Chr(13) & Chr(10) & Chr(13) & Chr(10) & Chr(13) & Chr(10) & "<FONT  COLOR=#0000ff BACK=#fefefe SIZE=2 PTSIZE=8><B> " & text2.Text & ":  </FONT><FONT  COLOR=#000000 SIZE=3 PTSIZE=10></B> </FONT>" & Text3.Text



End Sub


Private Sub Command2_Click()

Index = List1.ListIndex
Label1.Caption = List1.ListCount
If Label1.Caption = 0 Then
End If
If Label1.Caption = 2 Then
MsgBox "" & List1.List(Index) & Text1.Text
End If

End Sub


Private Sub Command3_Click()
List1.AddItem text2.Text
text2.Text = ""
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
Unload Form7
End Sub


