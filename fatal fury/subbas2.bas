Attribute VB_Name = "subbas2"

Public i As Integer
Declare Function SendMessageByNum& Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByVal lParam As Long)
Declare Function EnableWindow Lib "user32" (ByVal hwnd As Long, ByVal fEnable As Long) As Long
Declare Function GetClassName& Lib "user32" Alias "GetClassNameA" (ByVal hwnd As Long, ByVal lpClassName As String, ByVal nMaxCount As Long)
Declare Function GetWindow Lib "user32" (ByVal hwnd As Long, ByVal wCmd As Long) As Long
Private Declare Function CloseHandle Lib "kernel32" (ByVal hObject As Long) As Long
Public Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (destination As Any, Source As Any, ByVal length As Long)
Public Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long
Public Declare Function FindWindowEx Lib "user32" Alias "FindWindowExA" (ByVal hWnd1 As Long, ByVal hWnd2 As Long, ByVal lpsz1 As String, ByVal lpsz2 As String) As Long
Public Declare Function GetCursorPos Lib "user32" (lpPoint As POINTAPI) As Long
Public Declare Function GetMenu Lib "user32" (ByVal hwnd As Long) As Long
Public Declare Function GetMenuItemCount Lib "user32" (ByVal hMenu As Long) As Long
Public Declare Function GetMenuItemID Lib "user32" (ByVal hMenu As Long, ByVal nPos As Long) As Long
Public Declare Function GetMenuString Lib "user32" Alias "GetMenuStringA" (ByVal hMenu As Long, ByVal wIDItem As Long, ByVal lpString As String, ByVal nMaxCount As Long, ByVal wFlag As Long) As Long
Public Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
Public Declare Function GetSubMenu Lib "user32" (ByVal hMenu As Long, ByVal nPos As Long) As Long
Public Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hwnd As Long, ByVal lpString As String, ByVal cch As Long) As Long
Public Declare Function GetWindowTextLength Lib "user32" Alias "GetWindowTextLengthA" (ByVal hwnd As Long) As Long
Public Declare Function GetWindowThreadProcessId Lib "user32" (ByVal hwnd As Long, lpdwProcessId As Long) As Long
Public Declare Function IsWindowVisible Lib "user32" (ByVal hwnd As Long) As Long
Public Declare Function OpenProcess Lib "kernel32" (ByVal dwDesiredAccess As Long, ByVal bInheritHandle As Long, ByVal dwProcessId As Long) As Long
Public Declare Function mciSendString Lib "winmm.dll" Alias "mciSendStringA" (ByVal lpstrCommand As String, ByVal lpstrReturnString As String, ByVal uReturnLength As Long, ByVal hwndCallback As Long) As Long
Public Declare Function PostMessage Lib "user32" Alias "PostMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
Public Declare Function ReadProcessMemory Lib "kernel32" (ByVal hProcess As Long, ByVal lpBaseAddress As Long, ByVal lpBuffer As String, ByVal nSize As Long, ByRef lpNumberOfBytesWritten As Long) As Long
Public Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Public Declare Function SendMessageLong& Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByVal lParam As Long)
Public Declare Function SendMessageByString Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByVal lParam As String) As Long
Public Declare Function SetCursorPos Lib "user32" (ByVal X As Long, ByVal Y As Long) As Long
Public Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Public Declare Function ShowCursor Lib "user32" (ByVal bShow As Long) As Long
Public Declare Function ShowWindow Lib "user32" (ByVal hwnd As Long, ByVal nCmdShow As Long) As Long
Public Declare Function sndPlaySound Lib "winmm.dll" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long
Public Declare Function ReleaseCapture Lib "user32" () As Long
Public Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long

Public Const BM_GETCHECK = &HF0
Public Const BM_SETCHECK = &HF1

Public Const HWND_NOTOPMOST = -2
Public Const HWND_TOPMOST = -1

Public Const LB_GETCOUNT = &H18B
Public Const LB_GETITEMDATA = &H199
Public Const LB_GETTEXT = &H189
Public Const LB_GETTEXTLEN = &H18A
Public Const LB_SETCURSEL = &H186
Public Const LB_SETSEL = &H185

Public Const SND_ASYNC = &H1
Public Const SND_NODEFAULT = &H2
Public Const SND_FLAG = SND_ASYNC Or SND_NODEFAULT

Public Const SW_HIDE = 0
Public Const SW_SHOW = 5

Public Const SWP_NOMOVE = &H2
Public Const SWP_NOSIZE = &H1

Public Const VK_DOWN = &H28
Public Const VK_LEFT = &H25
Public Const VK_MENU = &H12
Public Const VK_RETURN = &HD
Public Const VK_RIGHT = &H27
Public Const VK_SHIFT = &H10
Public Const VK_SPACE = &H20
Public Const VK_UP = &H26

Public Const WM_CHAR = &H102
Public Const WM_CLOSE = &H10
Public Const WM_COMMAND = &H111
Public Const WM_GETTEXT = &HD
Public Const WM_GETTEXTLENGTH = &HE
Public Const WM_KEYDOWN = &H100
Public Const WM_KEYUP = &H101
Public Const WM_LBUTTONDBLCLK = &H203
Public Const WM_LBUTTONDOWN = &H201
Public Const WM_LBUTTONUP = &H202
Public Const WM_MOVE = &HF012
Public Const WM_SETTEXT = &HC
Public Const WM_SYSCOMMAND = &H112

Public Const PROCESS_READ = &H10
Public Const RIGHTS_REQUIRED = &HF0000

Public Const ENTER_KEY = 13
Public Const FLAGS = SWP_NOMOVE Or SWP_NOSIZE

Public Type POINTAPI
        X As Long
        Y As Long
End Type

Public Function GetListIndex(LB As ListBox, txt As String) As Integer
Dim Index As Integer
With LB
For Index = 0 To .ListCount - 1
If .List(iIndex) = txt Then
GetListIndex = Index
Exit Function
End If
Next Index
End With
GetListIndex = -2
End Function
Function GetWinText(hwnd As Integer) As String

Dim LengthOfText, Buffer$, GetTheText
LengthOfText = subbas.SendMessage(hwnd, subbas.WM_GETTEXTLENGTH, 0&, 0&)
Buffer$ = Space$(LengthOfText)
GetTheText = SendMessageByString(hwnd, subbas.WM_GETTEXT, LengthOfText + 1, Buffer$)
GetWinText = Buffer$
End Function
Sub Form_Move(FRM As Form)

DoEvents
ReleaseCapture
ReturnVal% = subbas.SendMessage(FRM.hwnd, &HA1, 2, 0)
End Sub

'Sub AOL40_ReadMail()
'tool% = FindChildByClass(AOLWindow(), "AOL Toolbar")
'Toolbar% = FindChildByClass(tool%, "_AOL_Toolbar")
'icon% = FindChildByClass(Toolbar%, "_AOL_Icon")
'Call AOLClickIcon(icon%)
'End Sub

Sub AOLClose()

Call Window_Close(AOLWindow())
End Sub
Sub AOLChangeCaption(newcaption)

Call AOLSetText(AOLWindow(), newcaption)
End Sub
Sub AOLSetText(win, txt)

TheText% = SendMessageByString(win, WM_SETTEXT, 0, txt)
End Sub

'Sub AOL40_AntiIdle()
'Modal% = FindWindow("_AOL_Modal", vbNullString)
'icon% = FindChildByClass(Modal%, "_AOL_Icon")
'AOLClickIcon (AOIcon%)
'End Sub

'Sub AOL40_KillGlyph()
'tool% = FindChildByClass(AOLWindow(), "AOL Toolbar")
'Toolbar% = FindChildByClass(tool%, "_AOL_Toolbar")
'Glyph% = FindChildByClass(Toolbar%, "_AOL_Glyph")
'Call SendMessage(Glyph%, WM_CLOSE, 0, 0)
'End Sub

Sub SendCharNum(win, chars)

E = SendMessageByNum(win, WM_CHAR, chars, 0)
End Sub



Sub Enter(win)

Call SendCharNum(win, 13)
End Sub

'Sub sendim(sn, message)

'Call AOL40_Keyword("aol://9293:" & sn)
'Do: DoEvents
'iMWin% = FindChildByTitle(AOLMDI(), "Send Instant Message")
'Rich% = FindChildByClass(IMWin%, "RICHCNTL")
'icon% = FindChildByClass(IMWin%, "_AOL_Icon")
'Loop Until Rich% <> 0 And icon% <> 0
'Call SendMessageByString(Rich%, WM_SETTEXT, 0, message)
'For X = 1 To 9
'icon% = GetWindow(icon%, GW_HWNDNEXT)
'Next X
'Call Pause(0.01)
'AOLClickIcon (icon%)
'Do: DoEvents
'IMWin% = FindChildByTitle(AOLMDI(), "Send Instant Message")
'OK% = FindWindow("#32770", "America Online")
'If OK% <> 0 Then Call SendMessage(OK%, WM_CLOSE, 0, 0): closer2 = SendMessage(IMWin%, WM_CLOSE, 0, 0): Exit Do
'If IMWin% = 0 Then Exit Do
'Loop
'End Sub

Function GetClass(child)
Buffer$ = String$(250, 0)
getclas% = GetClassName(child, Buffer$, 250)
GetClass = Buffer$
End Function
Sub AOL40_Load()

X% = Shell("C:\aol40\waol.exe", 1): NoFreeze% = DoEvents(): Exit Sub
X% = Shell("C:\aol40a\waol.exe", 1): NoFreeze% = DoEvents(): Exit Sub
X% = Shell("C:\aol40b\waol.exe", 1): NoFreeze% = DoEvents(): Exit Sub
End Sub

Function AOLMDI()

AOL% = FindWindow("AOL Frame25", vbNullString)
AOLMDI = subbas.FindChildByClass(AOL%, "MDIClient")
End Function

Function FreeProcess()
Do: DoEvents
Process = Process + 1
If Process = 50 Then Exit Do
Loop
End Function
Function AOL40_findroom()
Room% = subbas.FindChildByClass(AOLMDI(), "AOL Child")
roomlst% = subbas.FindChildByClass(Room%, "_AOL_Listbox")
roomtxt% = subbas.FindChildByClass(Room%, "RICHCNTL")
If roomlst% <> 0 And roomtxt% <> 0 Then
AOL40_findroom = Room%
Else
AOL40_findroom = 0
End If
End Function
'Function FindChildByTitle(parentw, childhand)
'firs1% = GetWindow(parentw, 5)
'If UCase(GetCaption(firs1%)) Like UCase(childhand) Then GoTo bone
'firs1% = GetWindow(parentw, GW_CHILD)

'While firs1%
'firss% = GetWindow(parentw, 5)
'If UCase(GetCaption(firss%)) Like UCase(childhand) & "*" Then GoTo bone
'firs1% = GetWindow(firs1%, 2)
'If UCase(GetCaption(firs1%)) Like UCase(childhand) & "*" Then GoTo bone
'Wend
'FindChildByTitle = 0

'bone:
'room% = firs1%
'FindChildByTitle = room%
'End Function



Function AOLClickList(List)
Click% = SendMessage(List, WM_LBUTTONDBLCLK, 0, 0)
End Function
Sub AOLClickIcon(iconz%)
Click% = SendMessage(iconz%, WM_LBUTTONDOWN, 0, 0&)
Click% = SendMessage(iconz%, WM_LBUTTONUP, 0, 0&)
End Sub
Sub Window_Close(win)
' This is like killwin
Dim X%
X% = SendMessage(win, WM_CLOSE, 0, 0)
End Sub
Sub StayOnTop(FRM As Form)

Dim ontop%
ontop% = SetWindowPos(FRM.hwnd, HWND_TOPMOST, 0, 0, 0, 0, FLAGS)
End Sub

Sub Window_Minimize(win)

X = ShowWindow(win, SW_MINIMIZE)
End Sub

Sub Window_Maximize(win)

X = ShowWindow(win, SW_MAXIMIZE)
End Sub

'Sub waitforok()
'Do
'DoEvents
'okw = FindWindow("#32770", "America Online")
'If proG_STAT$ = "OFF" Then
'Exit Sub
'Exit Do
'End If
'DoEvents
'Loop Until okw <> 0
'   okb = FindChildByTitle(okw, "OK")
'   okd = SendMessageByNum(okb, WM_LBUTTONDOWN, 0, 0&)
'   oku = SendMessageByNum(okb, WM_LBUTTONUP, 0, 0&)
'End Sub

Sub AOLRunMenuByString(Application, StringSearch)
ToSearch% = GetMenu(Application)
MenuCount% = GetMenuItemCount(ToSearch%)
For FindString = 0 To MenuCount% - 1
ToSearchSub% = GetSubMenu(ToSearch%, FindString)
MenuItemCount% = GetMenuItemCount(ToSearchSub%)
For getstring = 0 To MenuItemCount% - 1
SubCount% = GetMenuItemID(ToSearchSub%, getstring)
MenuString$ = String$(100, " ")
GetStringMenu% = GetMenuString(ToSearchSub%, SubCount%, MenuString$, 100, 1)
If InStr(UCase(MenuString$), UCase(StringSearch)) Then
MenuItem% = SubCount%
GoTo MatchString
End If
Next getstring
Next FindString
MatchString:
RunTheMenu% = SendMessage(Application, WM_COMMAND, MenuItem%, 0)
End Sub
'Sub AOLRunMenu(menu1 As Integer, menu2 As Integer)
'Dim AOLWorks As Long
'Static Working As Integer
'AOLMenus% = GetMenu(FindWindow("AOL Frame25", vbNullString))
'AOLSubMenu% = GetSubMenu(AOLMenus%, menu1)
'AOLItemID = GetMenuItemID(AOLSubMenu%, menu2)
'AOLWorks = CLng(0) * &H10000 Or Working
'ClickAOLMenu = SendMessageByNum(FindWindow("AOL Frame25", vbNullString), 273, AOLItemID, 0&)
'End Sub

Function AOLWindow()
AOLWindow = FindWindow("AOL Frame25", vbNullString)
End Function

'Sub killwait()
'AOL% = FindWindow("AOL Frame25", vbNullString)
'AOTooL% = FindChildByClass(AOL%, "AOL Toolbar")
'AOTool2% = FindChildByClass(AOTooL%, "_AOL_Toolbar")
'AOIcon% = FindChildByClass(AOTool2%, "_AOL_Icon")
'For GetIcon = 1 To 19
'    AOIcon% = GetWindow(AOIcon%, 2)
'Next GetIcon
'Call timeout(0.05)
'ClickIcon (AOIcon%)
'Do: DoEvents
'MDI% = FindChildByClass(AOL%, "MDIClient")
'KeyWordWin% = FindChildByTitle(MDI%, "Keyword")
'AOEdit% = FindChildByClass(KeyWordWin%, "_AOL_Edit")
'AOIcon2% = FindChildByClass(KeyWordWin%, "_AOL_Icon")
'Loop Until KeyWordWin% <> 0 And AOEdit% <> 0 And AOIcon2% <> 0
'Call SendMessage(KeyWordWin%, WM_CLOSE, 0, 0)
'End Sub
'Function IsUserOnline()
'AOL% = FindWindow("AOL Frame25", vbNullString)
'MDI% = FindChildByClass(AOL%, "MDIClient")
'welcome% = FindChildByTitle(MDI%, "Welcome,")
'If welcome% <> 0 Then
'   IsUserOnline = 1
'Else:
'   IsUserOnline = 0
'End If
'End Function

Sub Anti45MinTimer()
AOTimer% = FindWindow("_AOL_Palette", vbNullString)
AOIcon% = subbas.FindChildByClass(AOTimer%, "_AOL_Icon")
ClickIcon (AOIcon%)
End Sub
Sub AntiIdle()
AOModal% = FindWindow("_AOL_Modal", vbNullString)
AOIcon% = subbas.FindChildByClass(AOModal%, "_AOL_Icon")
ClickIcon (AOIcon%)
End Sub
Sub ClickIcon(iconz%)
Click% = SendMessage(iconz%, WM_LBUTTONDOWN, 0, 0&)
Click% = SendMessage(iconz%, WM_LBUTTONUP, 0, 0&)
End Sub


Function WinCaption(win)
WinTextLength% = GetWindowTextLength(win)
WinTitle$ = String$(hwndLength%, 0)
GetWinText1% = GetWindowText(win, WinTitle$, (WinTextLength% + 1))
WinCaption = WinTitle$
End Function




Function GetText(child)
GetTrim = SendMessageByNum(child, 14, 0&, 0&)
TrimSpace$ = Space$(GetTrim)
getstring = SendMessageByString(child, 13, GetTrim + 1, TrimSpace$)
GetText = TrimSpace$
End Function

Function GetchatText()
Room% = FindRoom
AORich% = subbas.FindChildByClass(Room%, "RICHCNTL")
chattext = GetText(AORich%)
GetchatText = chattext
End Function

Function LastChatLineWithSN()
chattext$ = GetchatText

For FindChar = 1 To Len(chattext$)

thechar$ = Mid(chattext$, FindChar, 1)
thechars$ = thechars$ & thechar$

If thechar$ = Chr(13) Then
TheChatText$ = Mid(thechars$, 1, Len(thechars$) - 1)
thechars$ = ""
End If

Next FindChar

lastlen = Val(FindChar) - Len(thechars$)
LastLine = Mid(chattext$, lastlen, Len(thechars$))

LastChatLineWithSN = LastLine
End Function

Function SNFromLastChatLine()
chattext$ = LastChatLineWithSN
ChatTrim$ = Left$(chattext$, 11)
For z = 1 To 11
    If Mid$(ChatTrim$, z, 1) = ":" Then
        SN = Left$(ChatTrim$, z - 1)
    End If
Next z
SNFromLastChatLine = SN
End Function

Function LastChatLine()
chattext = LastChatLineWithSN
ChatTrimNum = Len(SNFromLastChatLine)
ChatTrim$ = Mid$(chattext, ChatTrimNum + 4, Len(chattext) - Len(SNFromLastChatLine))
LastChatLine = ChatTrim$
End Function

Sub KillGlyph()

AOL% = FindWindow("AOL Frame25", vbNullString)
AOTooL% = subbas.FindChildByClass(AOL%, "AOL Toolbar")
AOTool2% = subbas.FindChildByClass(AOTooL%, "_AOL_Toolbar")
Glyph% = subbas.FindChildByClass(AOTool2%, "_AOL_Glyph")
Call SendMessage(Glyph%, WM_CLOSE, 0, 0)
End Sub

Function TrimTime()
b$ = Left$(Time$, 5)
HourH$ = Left$(b$, 2)
HourA = Val(HourH$)
If HourA >= 12 Then Ap$ = "PM"
If HourA = 24 Or HourA < 12 Then Ap$ = "AM"
If HourA > 12 Then
    HourA = HourA - 12
End If
If HourA = 0 Then HourA = 12
HourH$ = Str$(HourA)
TrimTime = HourH$ & Right$(b$, 3) & " " & Ap$
End Function



Function SNfromIM()
IMCap$ = subbas.GetCaption(FindIM)
TheSN$ = Mid(IMCap$, InStr(IMCap$, ":") + 2)
SNfromIM = TheSN$

End Function

Sub killmodal()
Modal% = FindWindow("_AOL_Modal", vbNullString)
Call SendMessage(Modal%, WM_CLOSE, 0, 0)
End Sub



Function MessageFromIM()
IM = FindIM
Greed:
IMTextz% = subbas.FindChildByClass(IM, "RICHCNTL")
IMmessage = GetText(IMTextz%)
SN = SNfromIM()
snlen = Len(SNfromIM()) + 3
blah = Mid(IMmessage, InStr(IMmessagge, SN) + snlen)
MessageFromIM = Left(blah, Len(blah) - 1)
End Function

'Sub RunMenu(menu1 As Integer, menu2 As Integer)
'Dim AOLWorks As Long
'Static Working As Integer

'AOLMenus% = GetMenu(FindWindow("AOL Frame25", vbNullString))
'AOLSubMenu% = GetSubMenu(AOLMenus%, menu1)
'AOLItemID = GetMenuItemID(AOLSubMenu%, menu2)
'AOLWorks = CLng(0) * &H10000 Or Working
'ClickAOLMenu = SendMessageByNum(FindWindow("AOL Frame25", vbNullString), 273, AOLItemID, 0&)

'End Sub

'Sub RunMenuByString(Application, StringSearch)
'ToSearch% = GetMenu(Application)
'MenuCount% = GetMenuItemCount(ToSearch%)

'For FindString = 0 To MenuCount% - 1
'ToSearchSub% = GetSubMenu(ToSearch%, FindString)
'MenuItemCount% = GetMenuItemCount(ToSearchSub%)

'For getstring = 0 To MenuItemCount% - 1
'SubCount% = GetMenuItemID(ToSearchSub%, getstring)
'MenuString$ = String$(100, " ")
'GetStringMenu% = GetMenuString(ToSearchSub%, SubCount%, MenuString$, 100, 1)

'If InStr(UCase(MenuString$), UCase(StringSearch)) Then
'MenuItem% = SubCount%
'GoTo MatchString
'End If

'Next getstring

'Next FindString
'MatchString:
'RunTheMenu% = SendMessage(Application, WM_COMMAND, MenuItem%, 0)
'End Sub
