Attribute VB_Name = "TelnetStuff"
' These are pointer to sockets
'
Global Socket_Number As Long
Global Read_Sock As Long


' This is the local buffer for our
' TCP/IP header info. Used with sock()
'
Public Socket_Buffer As sockaddr


' This is where the remote address is
' stored. It is used on the Accept()
'
Public Remote_Sock_Buffer As sockaddr


' This is the buffer used by the sock to
' store incomming data.
'
Public Read_Buffer As String * 1024


' This is the buffer we use for command
' handleing after Enter is pressed from the
' remote console
'
Public Data_buffer As String

Public Function SendIt(s As Long, ByVal messg)

    Dim TheMsg() As Byte, sTemp$

    TheMsg = ""
    
    sTemp = StrConv(messg, vbFromUnicode)

    TheMsg = sTemp

    SendIt = send(s, TheMsg(0), UBound(TheMsg) + 1, 0)

End Function

Public Sub sendHeaderz()

    Dim messg As String

    messg = vbCrLf
    messg = messg & "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" & vbCrLf
    messg = messg & "=-=       Welcome to the Basic API Telnet Server        =-=" & vbCrLf
    messg = messg & "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" & vbCrLf
    messg = messg & vbCrLf


    X = SendIt(Read_Sock, messg)

End Sub

Public Sub SendPrompt()

    Dim messg As String
    
    'Have to have a Prompt :)
    '
    messg = vbCrLf
    messg = messg & "C:>"

    X = SendIt(Read_Sock, messg)

End Sub
