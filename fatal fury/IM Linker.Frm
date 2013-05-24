VERSION 4.00
Begin VB.Form Form33 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "IM Linker"
   ClientHeight    =   1590
   ClientLeft      =   3375
   ClientTop       =   1920
   ClientWidth     =   2145
   Height          =   2055
   Left            =   3315
   LinkTopic       =   "Form33"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1590
   ScaleWidth      =   2145
   ShowInTaskbar   =   0   'False
   Top             =   1515
   Width           =   2265
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   120
      TabIndex        =   5
      Text            =   "Screen Name"
      Top             =   840
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Send"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   1200
      Width           =   1815
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Text            =   "What to Say"
      Top             =   480
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "URL"
      Top             =   120
      Width           =   1815
   End
   Begin VB.Label Label2 
      Caption         =   "<a href="""
      Height          =   615
      Left            =   120
      TabIndex        =   4
      Top             =   1800
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   """>"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   2640
      Width           =   1695
   End
End
Attribute VB_Name = "Form33"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
InstantMessage Text3.Text, Label2.Caption & Text1.Text & Label1.Caption & text2.Text & "</a>"
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
Unload Me
End Sub


