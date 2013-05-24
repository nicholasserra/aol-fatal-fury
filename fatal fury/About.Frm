VERSION 4.00
Begin VB.Form Form24 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "About Fatal Fury 1.0"
   ClientHeight    =   3330
   ClientLeft      =   2880
   ClientTop       =   2250
   ClientWidth     =   5580
   Height          =   3795
   Left            =   2820
   LinkTopic       =   "Form24"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3330
   ScaleWidth      =   5580
   ShowInTaskbar   =   0   'False
   Top             =   1845
   Width           =   5700
   Begin VB.PictureBox Picture1 
      BorderStyle     =   0  'None
      Height          =   4455
      Left            =   -600
      Picture         =   "About.frx":0000
      ScaleHeight     =   4455
      ScaleWidth      =   6615
      TabIndex        =   0
      Top             =   -720
      Width           =   6615
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   " Made In Visual Basic 4.0"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   225
         Left            =   2280
         TabIndex        =   3
         Top             =   3600
         Width           =   2115
      End
      Begin VB.Line Line1 
         BorderColor     =   &H00FFFFFF&
         X1              =   1800
         X2              =   4800
         Y1              =   3000
         Y2              =   3000
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "A production of X.W.H."
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   240
         Left            =   2280
         TabIndex        =   2
         Top             =   2040
         Width           =   2175
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Fatal Fury 1.0  By: CyniKaL"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   435
         Left            =   1080
         TabIndex        =   1
         Top             =   1080
         Width           =   4665
      End
   End
End
Attribute VB_Name = "Form24"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Form_Load()
Form1.Hide
Top = 0
Left = 0
FFX.StayOnTop Me

Form1.Visible = False
End Sub


Private Sub Form_Unload(Cancel As Integer)
Form1.Visible = True
Unload Form24
End Sub


Private Sub Label4_Click()
subbas.Keyword "Http://www.angelfire.com/ab3/Nex"
End Sub


Private Sub Label5_Click()
subbas.Keyword "http://www.mynetcentral.com/fatalfury"
End Sub


