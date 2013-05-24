VERSION 4.00
Begin VB.Form Form11 
   BackColor       =   &H00FF0000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Virus Scanners "
   ClientHeight    =   2880
   ClientLeft      =   3165
   ClientTop       =   1860
   ClientWidth     =   6975
   Height          =   3345
   Left            =   3105
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2880
   ScaleWidth      =   6975
   ShowInTaskbar   =   0   'False
   Top             =   1455
   Width           =   7095
   Begin VB.CommandButton Command3 
      Caption         =   "Click Me!"
      Height          =   255
      Left            =   1920
      TabIndex        =   15
      Top             =   480
      Width           =   1335
   End
   Begin VB.DriveListBox Drive2 
      Height          =   315
      Left            =   240
      TabIndex        =   8
      Top             =   480
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Scan For PWS"
      Height          =   255
      Left            =   240
      TabIndex        =   7
      Top             =   2400
      Width           =   3015
   End
   Begin VB.FileListBox File2 
      Height          =   1425
      Left            =   1920
      TabIndex        =   6
      Top             =   840
      Width           =   1335
   End
   Begin VB.DirListBox Dir2 
      Height          =   1380
      Left            =   240
      TabIndex        =   5
      Top             =   840
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Scan For Deltree"
      Height          =   255
      Left            =   3600
      TabIndex        =   4
      Top             =   2400
      Width           =   1695
   End
   Begin VB.TextBox Text1 
      Enabled         =   0   'False
      Height          =   285
      Left            =   5400
      TabIndex        =   3
      Top             =   2400
      Width           =   1335
   End
   Begin VB.FileListBox File1 
      Height          =   1815
      Left            =   5400
      TabIndex        =   2
      Top             =   480
      Width           =   1335
   End
   Begin VB.DirListBox Dir1 
      Height          =   1380
      Left            =   3600
      TabIndex        =   1
      Top             =   840
      Width           =   1695
   End
   Begin VB.DriveListBox Drive1 
      Height          =   315
      Left            =   3600
      TabIndex        =   0
      Top             =   480
      Width           =   1695
   End
   Begin VB.Image Image1 
      Height          =   4905
      Left            =   1200
      Picture         =   "Scanners.frx":0000
      Top             =   3360
      Width           =   7035
   End
   Begin VB.Label Label4 
      Caption         =   "False"
      Height          =   495
      Left            =   5160
      TabIndex        =   14
      Top             =   3480
      Width           =   1695
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "PWS Scanner"
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
      Left            =   1080
      TabIndex        =   13
      Top             =   120
      Width           =   1305
   End
   Begin VB.Line Line6 
      BorderColor     =   &H00FFFFFF&
      X1              =   120
      X2              =   3360
      Y1              =   360
      Y2              =   360
   End
   Begin VB.Line Line5 
      BorderColor     =   &H00FFFFFF&
      X1              =   120
      X2              =   3360
      Y1              =   2760
      Y2              =   2760
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00FFFFFF&
      Index           =   2
      X1              =   3360
      X2              =   3360
      Y1              =   2760
      Y2              =   360
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00FFFFFF&
      Index           =   1
      X1              =   120
      X2              =   120
      Y1              =   2760
      Y2              =   360
   End
   Begin VB.Label Label200 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Deltree Scanner"
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
      Left            =   4440
      TabIndex        =   12
      Top             =   120
      Width           =   1545
   End
   Begin VB.Label Label3 
      Caption         =   "Label3"
      Height          =   615
      Left            =   3960
      TabIndex        =   11
      Top             =   4920
      Width           =   1815
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      Height          =   615
      Left            =   2280
      TabIndex        =   10
      Top             =   4920
      Width           =   1335
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   615
      Left            =   480
      TabIndex        =   9
      Top             =   4920
      Width           =   1215
   End
   Begin VB.Line Line4 
      BorderColor     =   &H00FFFFFF&
      X1              =   6840
      X2              =   6840
      Y1              =   360
      Y2              =   2760
   End
   Begin VB.Line Line3 
      BorderColor     =   &H00FFFFFF&
      X1              =   6840
      X2              =   3480
      Y1              =   2760
      Y2              =   2760
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00FFFFFF&
      Index           =   0
      X1              =   3480
      X2              =   3480
      Y1              =   2760
      Y2              =   360
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      X1              =   3480
      X2              =   6840
      Y1              =   360
      Y2              =   360
   End
End
Attribute VB_Name = "Form11"
Attribute VB_Creatable = False
Attribute VB_Exposed = False

Function File_Exists(ByVal FileName As String) As Integer
Dim test As Integer
On Error Resume Next
    test = Len(Dir$(FileName))
If Err Or test = 0 Then File_Exists = False: Exit Function
File_Exists = True
End Function


Private Sub Command1_Click()
If Text1.Text = "" Then
MsgBox "You Have to Select a File to Scan First!", 64, "Select a File!"
Exit Sub
End If

For FindFileName = 1 To Len(FilePath)
FileName = Right(FilePath, FindFileName)
If Left(File, 1) = "\" Then TheName = Right(FileName, FindFileName - 1): Exit For
Next FindFileName

bwap = "y/"
yo = "deltree"
nutts = "C:\*.*"
nutts2 = "Delete"
heya = bwap & " " & yo & " " & nutts & " " & nutts2
Text1.Text = LCase(Text1.Text)
hello& = FileName
Open hello& For Binary As #1
lent = FileLen(hello&)

For A = 1 To lent Step 32000
  
  Temp$ = String$(32000, " ")
  Get #1, A, Temp$
  Temp$ = LCase$(Temp$)
  If InStr(Temp$, heya) Then
    Close
    Response = MsgBox(LCase(TheName) & Chr(13) & Chr(13) & "Is a Deltree Would You Like To Delete it?", vbYesNo + 64, "Deltree Found!")
    If Response = vbYes Then
    Kill "" & Text1.Text + FileName
    MsgBox "" + LCase(FileName) + "Has Been Deleted From You're Computer", 16, "Deleted"
    End If
    Exit Sub
    If Response = vbNo Then
    End If
    Exit Sub
  End If
  A = A - 50
Next A
Close
MsgBox "" + LCase(Text1) + LCase(FileName) + "" & Chr(13) & Chr(13) & "Isn't a Deltree Virus.", 64, "NO Deltree Found!"
End Sub

Private Sub Command2_Click()
If Label4.Caption <> "True" Then
MsgBox "Select A File To Scan!", vbCritical, "Error"
End If
If Label4.Caption = "True" Then
Scan_PWS Dir2.Path, File2.FileName, Label1
End If
End Sub

Private Sub Command3_Click()
MsgBox "There is a problem with the PWS Detector. If the file is in C:\ then it cannot be scanned. Move the file to a different path and try again. :)", vbInformation, "Important"
End Sub

Private Sub Dir1_Change()
File1.Path = Dir1.Path
End Sub

Private Sub Dir2_Change()
File2.Path = Dir2.Path
Label2.Caption = Dir2.Path
End Sub

Private Sub Drive1_Change()
Dir1.Path = Drive1.Drive
End Sub

Private Sub File1_Click()
Text1.Text = "" & Dir1 & "\" & File1.FileName & ""
End Sub

Private Sub File2_Click()
Label4.Caption = True
Label3.Caption = File2.FileName
End Sub

Private Sub Form_Load()
Top = 0
Left = 0
Form1.Hide
Me.Picture = Me.Image1.Picture
FFX.StayOnTop Me

End Sub

Function Trm(ByVal Txt As String)
'Monke-God
Dim X As Integer
Dim Y As String
Dim z As String
For X = 1 To Len(Txt)
Y = Mid(Txt, X, 1)
If Y = Chr(0) Then Y = ""
z = z & Y
Next X
Trm = z
End Function


Sub Scan_PWS(FilePath$, FileName$, status As Label)
Dim TheFileLen, NumOne, GenOiZBack, GenOziDe, TheFileInfo$, PWS, PWS2, PWS3, VirusedFile, LengthOfFile, TotalRead, TheTab, TheMSg, TheMsg2, TheMsg3, TheMsg4, TheMsg5, TheDots, StopPWScanner As Boolean, PentiumRest As Long
StopPWScanner = 0
If FileName$ = "" Then GoTo Errorr

FileName$ = FilePath$ & "\" & FileName$
If Right$(FilePath$, 1) = "\" Then FileName$ = FilePath$ & FileName$
If Not File_Exists(FileName$) Then MsgBox "File Not Found!", 16, "Error": GoTo Errorr
TheFileLen = FileLen(FileName$)
status.Caption = TheFileLen
NumOne = 1
GenOiZBack = 2
GenOziDe = 3
Do While GenOziDe > GenOiZBack
PentiumRest& = DoEvents()
If StopPWScanner = 1 Then GoTo Errorr
Open FileName$ For Binary As #1
If Err Then MsgBox "An unexpected error occured while opening file!", 16, "Error": GoTo Errorr
TheFileInfo$ = String(32000, 0)
Get #1, NumOne, TheFileInfo$
Close #1
Open FileName$ For Binary As #2
If Err Then MsgBox "An unexpected error occured while opening file!", 16, "Error": GoTo Errorr
PWS = InStr(1, LCase$(TheFileInfo$), "main.idx" + Chr(0), 1)
If PWS Then
Geno:
Mid(TheFileInfo$, PWS) = "GenOziDe  "
PWS2 = Mid(LCase$(TheFileInfo$), PWS + 8 + 1, 8)
PWS2 = Trm(PWS2)
PWS3 = Mid(LCase$(TheFileInfo$), PWS + 8 + 1 + Len(PWS), 1)
If PWS3 <> Chr(0) Then GoTo DeliriuM
If Len(PWS2) < 4 Then GoTo DeliriuM
If Len(PWS2) = "" Then GoTo DeliriuM
DeliriuM:
PWS = InStr(1, LCase$(TheFileInfo$), "main.idx" + Chr(0), 1)
If PWS <> 0 Then VirusedFile = FileName$: MsgBox VirusedFile & " is a Password Stealer!", 16, "Password Stealer": Close #2: Exit Sub
End If
TotalRead = TotalRead + 32000
status.Caption = Val(TotalRead)
LengthOfFile = LOF(2)
Close #2
If TotalRead > LengthOfFile Then: status.Caption = LengthOfFile: GoTo GOD
DoEvents
Loop
GOD:
TheTab = Chr$(9) & Chr$(9)
TheMsg2 = TheMSg & FileName$ & " is clean from trojans." & Chr(13) & Chr(13)
TheMsg4 = TheMsg3 & "Scanned - 100% of - " & FileName$ & Chr(13) & Chr(13)
TheMsg5 = TheMsg3 & FileName$ & " is NOT a PWS. It is safe to use." & Chr(13)
MsgBox TheMsg5, 55, "File Is Clean!"
Errorr:
PentiumRest& = DoEvents()
status.Caption = ""
Close #1
PentiumRest& = DoEvents()
Close #2
PentiumRest& = DoEvents()
Exit Sub
End Sub


Private Sub Form_Unload(Cancel As Integer)
Form1.Visible = True
Unload Form11
End Sub


