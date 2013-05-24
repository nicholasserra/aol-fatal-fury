Attribute VB_Name = "rawhaq"
Public DaIP
Public DaPort As Integer
Public dConnected As Boolean
Public CmdPre As String

'rgb(SrvMsgColr, SrvMsgColg, ProgMsgColb)
'rgb(srvMsgColr, srvMsgColg, srvMsgColb)
'rgb(usrMsgColr, usrMsgColg, usrMsgColb)

Public SrvMsgColr As String
Public SrvMsgColg As String
Public SrvMsgColb As String

Public ProgMsgColr As String
Public ProgMsgColg As String
Public ProgMsgColb As String

Public UsrMsgColr As String
Public UsrMsgColg As String
Public UsrMsgColb As String

Public ShwUsrMsg As Boolean

Function RGBtoHEX(RGB)
    a = Hex(RGB)
    B = Len(a)
    If B = 5 Then a = "0" & a
    If B = 4 Then a = "00" & a
    If B = 3 Then a = "000" & a
    If B = 2 Then a = "0000" & a
    If B = 1 Then a = "00000" & a
    RGBtoHEX = a
End Function


