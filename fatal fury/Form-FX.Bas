Attribute VB_Name = "FFX"
Public Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Public Declare Function ReleaseCapture Lib "user32" () As Long
Public Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Long) As Long

'Window Messages:
Public Const WM_SYSCOMMAND = &H112
Public Const WM_MOVE = &HF012

'hWnd Functions:
Public Const SWP_NOMOVE = 2
Public Const SWP_NOSIZE = 1
Public Const HWND_TOPMOST = -1
Public Const FLAGS = SWP_NOMOVE Or SWP_NOSIZE

'Phader Color Presets
Public Const COLOR_RED = &HFF&
Public Const COLOR_GREEN = &HFF00&
Public Const COLOR_BLUE = &HFF0000
Public Const COLOR_YELLOW = &HFFFF&
Public Const COLOR_WHITE = &HFFFFFE
Public Const COLOR_BLACK = &H0&
Public Const COLOR_PEACH = &HC0C0FF
Public Const COLOR_PURPLE = &HFF00FF
Public Const COLOR_GREY = &HC0C0C0
Public Const COLOR_PINK = &HFF80FF
Public Const COLOR_TURQUOISE = &HC0C000
Public Const COLOR_LIGHTBLUE = &HFF8080
Public Const COLOR_ORANGE = &H80FF&
Public Sub pause(length As Long)
    Dim current As Long
    Let current& = Timer
    Do Until (Timer - current&) >= length&
        DoEvents
    Loop
End Sub
Public Sub FadeFormDiagonallyFast(frmname As Form, color1 As Long, color2 As Long)
'call this in the form_paint of your form
'this will fade it from top to bottom
'preset colors are in the dec's of this bas
'works with most size forms
'Use this Sub like this:
'Call FadeFormDiagonallyFast(frmname, COLOR_BLUE, COLOR_ORANGE)
'Replace "frmname" with the name of the form,
'and replace COLOR_BLUE and COLOR_ORANGE with the
'color of your choice. BUT ONLY REPLACE THE COLOR
'NAME! Don't delete the "COLOR_" thing.
    Dim Index As Long, lngblue1 As Long, lnggreen1 As Long, lngred1 As Long
    Dim lngblue2 As Long, lnggreen2 As Long, lngred2 As Long
    Let lngblue1& = Int(color1& / 65536)
    Let lnggreen1& = Int((color1& - (65536 * lngblue1&)) / 256)
    Let lngred1& = color1& - (65536 * lngblue1& + 256& * lnggreen1&)
    Let lngblue2& = Int(color2& / 65536)
    Let lnggreen2& = Int((color2& - (65536 * lngblue2&)) / 256)
    Let lngred2& = color2& - (65536 * lngblue2& + 256& * lnggreen2)
    Let frmname.ScaleMode = vbPixels
    Let frmname.ScaleWidth = 256&
    Let frmname.DrawWidth = 2&
    Let frmname.DrawMode = vbCopyPen
    Let frmname.DrawStyle = vbInsideSolid
    For Index& = 0& To 255&
        frmname.Line (Index&, 0&)-(Screen.Height, Index& + 1&), RGB(((lngred2& - lngred1&) / 255& * Index&) + lngred1&, ((lnggreen2& - lnggreen2&) / 255& * Index&) + lnggreen1&, ((lngblue2& - lngblue1&) / 255& * Index&) + lngblue1&), B
        frmname.Line (0&, Index&)-(Screen.Width, Index& + 1&), RGB(((lngred2& - lngred1&) / 255& * Index&) + lngred1&, ((lnggreen2& - lnggreen2&) / 255& * Index&) + lnggreen1&, ((lngblue2& - lngblue1&) / 255& * Index&) + lngblue1&), B
    Next Index&
End Sub
Public Function GetHexFromRGB(rgbvalue As Long) As String
    Dim hexstate As String, hexlen As Long
    Let hexstate$ = Hex(rgbvalue&)
    Let hexlen& = Len(hexstate$)
    Select Case hexlen&
        Case 1&
            Let GetHexFromRGB$ = "00000" & hexstate$
            Exit Function
        Case 2&
            Let GetHexFromRGB$ = "0000" & hexstate$
            Exit Function
        Case 3&
            Let GetHexFromRGB$ = "000" & hexstate$
            Exit Function
        Case 4&
            Let GetHexFromRGB$ = "00" & hexstate$
            Exit Function
        Case 5&
            Let GetHexFromRGB$ = "0" & hexstate$
            Exit Function
        Case 6&
            Let GetHexFromRGB$ = "" & hexstate$
            Exit Function
        Case Else
            Exit Function
    End Select
End Function

Public Sub FadePicBox(picbox As Object, color1 As Long, color2 As Long)
'this goes in the _paint event of
'the picture box
'By putting this in the _pain event, you get
'an even COOLER effect! Use this Sub like this:
'Call FadePicBox(picbox, COLOR_GREEN, COLOR_RED)
'Replace "picbox" with the name of the picture box,
'and replace COLOR_GREEN and COLOR_RED with the color
'of your choice. BUT ONLY REPLACE THE COLOR NAME!
'Don't delete the "COLOR_" thing.
    Dim lngcon As Long, longcon As Long, lnghlfwidth As Long, lngcolorval1 As Long
    Dim lngcolorval2 As Long, lngcolorval3 As Long, lngrgb1 As Long, lngrgb2 As Long
    Dim lngrgb3 As Long, lngyval As Long, strcolor1 As String, strcolor2 As String
    Dim strred1 As String, strgreen1 As String, strblue1 As String, strred2 As String
    Dim strgreen2 As String, strblue2 As String, lngred1 As Long, lnggreen1 As Long
    Dim lngblue1 As Long, lngred2 As Long, lnggreen2 As Long, lngblue2 As Long
    Let picbox.AutoRedraw = True
    Let picbox.DrawStyle = 6&
    Let picbox.DrawMode = 13&
    Let picbox.DrawWidth = 2&
    Let lngcon& = 0&
    Let lnghlfwidth& = picbox.Width / 2&
    Let strcolor1$ = GetHexFromRGB(color1&)
    Let strcolor2$ = GetHexFromRGB(color2&)
    Let strred1$ = "&h" & Right$(strcolor1$, 2&)
    Let strgreen1$ = "&h" & Mid$(strcolor1$, 3&, 2&)
    Let strblue1$ = "&h" & Left$(strcolor1$, 2&)
    Let strred2$ = "&h" & Right$(strcolor2$, 2&)
    Let strgreen2$ = "&h" & Mid$(strcolor2$, 3&, 2&)
    Let strblue2$ = "&h" & Left$(strcolor2$, 2&)
    Let lngred1& = Val(strred1$)
    Let lnggreen1& = Val(strgreen1$)
    Let lngblue1& = Val(strblue1$)
    Let lngred2& = Val(strred2$)
    Let lnggreen2& = Val(strgreen2$)
    Let lngblue2& = Val(strblue2$)
    Do: DoEvents
        On Error Resume Next
        Let lngcolorval1& = lngred2& - lngred1&
        Let lngcolorval2& = lnggreen2& - lnggreen1&
        Let lngcolorval3& = lngblue2& - lngblue1&
        Let lngrgb1& = (lngcolorval1& / lnghlfwidth& * lngcon&) + lngred1&
        Let lngrgb2& = (lngcolorval2& / lnghlfwidth& * lngcon&) + lnggreen1&
        Let lngrgb3& = (lngcolorval3& / lnghlfwidth& * lngcon&) + lngblue1&
        picbox.Line (lngyval&, 0&)-(lngyval& + 2&, picbox.Height), RGB(lngrgb1&, lngrgb2&, lngrgb3&), BF
        Let lngyval& = lngyval& + 10&
        Let lngcon& = lngcon& + 5&
    Loop Until lngcon& > lnghlfwidth&
End Sub
Public Sub fadeformdiagonallywithborder(frmname As Form, color1 As Long, color2 As Long)
    'call this in the form_paint of your form
    'this will fade it from top to bottom
    'preset colors are in the dec's of this bas
    Dim Index As Long, lngblue1 As Long, lnggreen1 As Long, lngred1 As Long
    Dim lngblue2 As Long, lnggreen2 As Long, lngred2 As Long
    Let lngblue1& = Int(color1& / 65536)
    Let lnggreen1& = Int((color1& - (65536 * lngblue1&)) / 256)
    Let lngred1& = color1& - (65536 * lngblue1& + 256& * lnggreen1&)
    Let lngblue2& = Int(color2& / 65536)
    Let lnggreen2& = Int((color2& - (65536 * lngblue2&)) / 256)
    Let lngred2& = color2& - (65536 * lngblue2& + 256& * lnggreen2)
    Let frmname.ScaleMode = vbPixels
    Let frmname.ScaleWidth = 256&
    Let frmname.DrawWidth = 2&
    Let frmname.DrawMode = vbCopyPen
    Let frmname.DrawStyle = vbInsideSolid
    For Index& = 0& To 255&
        frmname.Line (Index&, 0&)-(5, Index& + 1&), RGB(((lngred2& - lngred1&) / 255& * Index&) + lngred1&, ((lnggreen2& - lnggreen2&) / 255& * Index&) + lnggreen1&, ((lngblue2& - lngblue1&) / 255& * Index&) + lngblue1&), B
        frmname.Line (0&, Index&)-(Screen.Width, 5), RGB(((lngred2& - lngred1&) / 255& * Index&) + lngred1&, ((lnggreen2& - lnggreen2&) / 255& * Index&) + lnggreen1&, ((lngblue2& - lngblue1&) / 255& * Index&) + lngblue1&), B
    Next Index&
End Sub

Sub StayOnTop(TheForm As Form)
'This Sub will keep your form(s) on top of everything
'else. Use this Sub like this:
'"StayOnTop Me"
'Put the code above in the Form_Load Sub.
SetWinOnTop = SetWindowPos(TheForm.hwnd, HWND_TOPMOST, 0, 0, 0, 0, FLAGS)
End Sub

Public Sub FormLeaveRight(frmform As Form)
'This is cool. Use this Sub like this:
'FormLeaveRight Me
'Use this as a cool exit thing.
    Do: DoEvents
        frmform.Left = frmform.Left + 250&
    Loop Until frmform.Left > Screen.Width
End Sub
Public Sub fadeobjectcircle(theobject As Object, Blue As Boolean, Red As Boolean, Green As Boolean)
    'Use the same way as all the other examples.
    Dim lngWidth As Long, lngHeight As Long, lngblueval As Long, lngobjwidth As Long, lngredval As Long, lnggreenval As Long
    Let theobject.FillStyle = 0&
    Let lngWidth& = theobject.Width
    Let lngHeight& = theobject.Height
    If Blue = True Then
        Do Until lngblueval& = 255&: DoEvents
            Let lngblueval& = lngblueval& + 1&
            Let lngWidth& = lngWidth& - theobject.Width / 255&
            Let theobject.FillColor = RGB(0&, 0&, lngblueval&)
            If lngWidth& < 0& Then
                Exit Sub
            Else
                theobject.Circle (theobject.Width / 2&, theobject.Height / 2&), lngWidth&, RGB(0&, 0&, lngblueval&)
            End If
        Loop
    ElseIf Red = True Then
        Do Until lngredval& = 255&: DoEvents
            Let lngredval& = lngredval& + 1&
            Let lngWidth& = lngWidth& - theobject.Width / 255&
            Let theobject.FillColor = RGB(lngredval&, 0&, 0&)
            If lngWidth& < 0& Then
                Exit Sub
            Else
                theobject.Circle (theobject.Width / 2&, theobject.Height / 2&), lngWidth&, RGB(lngredval&, 0&, 0&)
            End If
        Loop
    ElseIf Green = True Then
        Do Until lnggreenval& = 255&: DoEvents
            Let lnggreenval& = lnggreenval& + 1&
            Let lngWidth& = lngWidth& - theobject.Width / 255&
            Let theobject.FillColor = RGB(0&, lnggreenval&, 0&)
            If lngWidth& < 0& Then
                Exit Sub
            Else
                theobject.Circle (theobject.Width / 2&, theobject.Height / 2&), lngWidth&, RGB(0&, lnggreenval&, 0&)
            End If
        Loop
    End If
End Sub

Public Sub FormRattle(frmform As Form)
'This is cool. Does just what the sub says.
'Use this Sub like this:
'FormRattle Me
    Dim Index As Long, firstleft As Long
    Let firstleft& = frmform.Left
    frmform.Show
    Let frmform.DrawMode = 2&
    For Index& = 0& To 15&
        Let frmform.Left = firstleft& + 25&
        Let frmform.Left = frmform.Left - 50&
    Next Index&
End Sub

Public Sub FormStepDown(TheForm As Form, lngsteps As Long)
'This Sub is a GREAT effect! Use this Sub like this:
'"Call FormStepDown(TheForm, 12)"
'Replace "TheForm" with the name of the form.
'Replace "12" with the number you want. The number
'indicates how far down the form falls.
    Dim lngbackcolor As Long, lngindex As Long, lngx As Long, lngy As Long
    On Error Resume Next
    Let lngbackcolor& = TheForm.BackColor
    Let TheForm.BackColor = RGB(0&, 0&, 0&)
    For lngindex& = 0& To TheForm.Count - 1&
        Let TheForm.Controls(lngindex&).Visible = False
    Next lngindex&
    TheForm.Show
    Let lngx& = ((Screen.Width - TheForm.Width) - TheForm.Left) / lngsteps&
    Let lngy& = ((Screen.Height - TheForm.Height) - TheForm.Top) / lngsteps&
    Do: DoEvents
        TheForm.Move TheForm.Left + lngx&, TheForm.Top + lngy&
    Loop Until (TheForm.Left >= (Screen.Width - TheForm.Width)) Or (TheForm.Top >= (Screen.Height - TheForm.Height))
    Let TheForm.Left = Screen.Width - TheForm.Width
    Let TheForm.Top = Screen.Height - TheForm.Height
    Let TheForm.BackColor = lngbackcolor&
    For lngindex& = 0& To TheForm.Count - 1&
        Let TheForm.Controls(lngindex&).Visible = True
    Next lngindex&
End Sub

Public Sub FormCenter(frmform As Form)
'This will center the form on the screen.
'Use this Sub like this:
'"FormCenter Me"
    Let frmform.Top = (Screen.Height * 0.85) / 2& - frmform.Height / 2&
    Let frmform.Left = Screen.Width / 2& - frmform.Width / 2&
End Sub
Public Sub BDown(TheLabel As Label)
'this is a cool effect for a label. Put this
'in the MousDown function of your label. Use it
'like this: Call Bdown(TheLabel)
'Replace "The label" with the name of your label.
'After doing this, you must put another code into
'the MouseUp function of your label. Look at the
'sub "BUp" for instructions.
TheLabel.Top = TheLabel.Top + 15
TheLabel.Left = TheLabel.Left + 15
End Sub
Public Sub fadeformdiagonallyslow(frmname As Form, color1 As Long, color2 As Long)
    'call this in the form_paint of your form
    'this will fade it diagonally
    'preset colors are in the dec's of this bas
    
    'works with most sized forms
    Dim Index As Long, lngblue1 As Long, lnggreen1 As Long, lngred1 As Long
    Dim lngblue2 As Long, lnggreen2 As Long, lngred2 As Long
    Let lngblue1& = Int(color1& / 65536)
    Let lnggreen1& = Int((color1& - (65536 * lngblue1&)) / 256)
    Let lngred1& = color1& - (65536 * lngblue1& + 256& * lnggreen1&)
    Let lngblue2& = Int(color2& / 65536)
    Let lnggreen2& = Int((color2& - (65536 * lngblue2&)) / 256)
    Let lngred2& = color2& - (65536 * lngblue2& + 256& * lnggreen2)
    Let frmname.ScaleMode = vbPixels
    Let frmname.ScaleWidth = 256&
    Let frmname.DrawWidth = 2&
    Let frmname.DrawMode = vbCopyPen
    Let frmname.DrawStyle = vbInsideSolid
    For Index& = 0& To 255&
        frmname.Line (Index&, 0&)-(Screen.Height, Index& + 1&), RGB(((lngred2& - lngred1&) / 255& * Index&) + lngred1&, ((lnggreen2& - lnggreen2&) / 255& * Index&) + lnggreen1&, ((lngblue2& - lngblue1&) / 255& * Index&) + lngblue1&), B
        frmname.Line (0&, Index&)-(Index& + 1&, Screen.Width), RGB(((lngred2& - lngred1&) / 255& * Index&) + lngred1&, ((lnggreen2& - lnggreen2&) / 255& * Index&) + lnggreen1&, ((lngblue2& - lngblue1&) / 255& * Index&) + lngblue1&), B
    Next Index&
End Sub

Public Sub FormDrag(frmform As Form)
'This Sub will allow you to drag a form by a label!
'To use this, set the form's BorderStyle to 0.
'Then, in any object (I prefer a picture box or a
'label), put this in the MouseDown Sub:
'"FormDrag Me"
    Call ReleaseCapture
    Call SendMessage(frmform.hwnd, WM_SYSCOMMAND, WM_MOVE, 0)
End Sub
Sub MacroFilter_Fur(Text As TextBox)
'This sub is great if you have ever made a macro
'shop before. This is a filter for it. Try it out.
'It's awesome! This filter will make the macro
'picture look like it is furry. Use it like this:
'"Call MacroFilter_Fur(Textbox)"
'Replace "TextBox" with the name of the text box
'that has the macro picture in it. AND the only
'way that this will work is if your macro picture
'has either the "|","\", or the "/" character in it.
'YOU MUST SET THE "Multiline" PROPERTY FOR YOUR
'TEXTBOX ON "True" FOR THIS TO WORK!
 If InStr(Text, "|") = 0 Then Exit Sub
     arm$ = Text
     A = Len(arm$)
     Do
     Mid$(arm$, InStr(arm$, "|"), A) = ";"
     Loop Until InStr(arm$, "|") = 0
     Text = arm$
     
      If InStr(Text, "/") = 0 Then Exit Sub
     arm2$ = Text
     A = Len(arm2$)
     Do
     Mid$(arm2$, InStr(arm2$, "/"), A) = ";"
     Loop Until InStr(arm2$, "/") = 0
     Text = arm2$
     
      If InStr(Text, "\") = 0 Then Exit Sub
     arm3$ = Text
     A = Len(arm3$)
     Do
     Mid$(arm3$, InStr(arm3$, "\"), A) = ";"
     Loop Until InStr(arm3$, "\") = 0
     Text = arm3$
End Sub
Sub MacroFilter_Shade(Text As TextBox)
'This sub is great if you have ever made a macro
'shop before. This is a filter for it. Try it out.
'It's awesome! This filter will make the macro
'picture have a nice light shade to it. Use it like
'this:
'"Call MacroFilter_Shade(Textbox)"
'Replace "TextBox" with the name of the text box
'that has the macro picture in it. AND the only
'way that this will work is if your macro picture
'has the " " character, or in other words, if it
'has a space or more in it.
'YOU MUST SET THE "Multiline" PROPERTY FOR YOUR
'TEXTBOX ON "True" FOR THIS TO WORK!
 If InStr(Text, " ") = 0 Then Exit Sub
     arm$ = Text
     A = Len(arm$)
     Do
     Mid$(arm$, InStr(arm$, " "), A) = ":"
     Loop Until InStr(arm$, " ") = 0
     Text = arm$
End Sub
Sub MacroFilter_Shatter(Text As TextBox)
'This sub is great if you have ever made a macro
'shop before. This is a filter for it. Try it out.
'It's awesome! This filter will make the macro
'picture look like it has been slightly shattered.
'Use it like this:
'"Call MacroFilter_Shatter(Textbox)"
'Replace "TextBox" with the name of the text box
'that has the macro picture in it. AND the only
'way that this will work is if your macro picture
'has either the "|","\", or the "/" character in it.
'YOU MUST SET THE "Multiline" PROPERTY FOR YOUR
'TEXTBOX ON "True" FOR THIS TO WORK!
 If InStr(Text, "|") = 0 Then Exit Sub
     arm$ = Text
     A = Len(arm$)
     Do
     Mid$(arm$, InStr(arm$, "|"), A) = ":"
     Loop Until InStr(arm$, "|") = 0
     Text = arm$
     
      If InStr(Text, "\") = 0 Then Exit Sub
     blah$ = Text
     A = Len(blah$)
     Do
     Mid$(blah$, InStr(blah$, "\"), A) = ":"
     Loop Until InStr(blah$, "\") = 0
     Text = blah$
     
       If InStr(Text, "/") = 0 Then Exit Sub
     blah2$ = Text
     A = Len(blah2$)
     Do
     Mid$(blah2$, InStr(blah2$, "/"), A) = ":"
     Loop Until InStr(blah2$, "/") = 0
     Text = blah2$
End Sub

Sub MacroFilter_Spread(Text As TextBox)
'This sub is great if you have ever made a macro
'shop before. This is a filter for it. Try it out.
'It's awesome! I can't really explaing this filter.
'You'll have to see it for yourself. Heh.
'Use it like this:
'"Call MacroFilter_Spread(Textbox)"
'Replace "TextBox" with the name of the text box
'that has the macro picture in it. AND the only
'way that this will work is if your macro picture
'has the "|" character in it.
'YOU MUST SET THE "Multiline" PROPERTY FOR YOUR
'TEXTBOX ON "True" FOR THIS TO WORK!
 If InStr(Text, "|") = 0 Then Exit Sub
     arm$ = Text
     A = Len(arm$)
     Do
     Mid$(arm$, InStr(arm$, "|"), A) = "¦"
     Loop Until InStr(arm$, "|") = 0
     Text = arm$
End Sub


Function DarkBlue(TheLabel As Label)
'this is a cool sub for hover effects on a label
'or other objects. Place this code in either the
'mousedown, mouseup, click, or mousemove sub of
'the object. Here is a good example: Let's say that
'you are using a label, and the label's original
'forecolor was white. For a cool effect, do this:
'in the MouseDown Sub of the label, you could put
'this:
'"Call grey(TheLabel)"
'In the MouseUp Sub put this:
'"Call white(TheLabel)"
'Replace "TheLabel" with the name of the label.
TheLabel.ForeColor = &H800000
End Function

Function DarkGrey(TheLabel As Label)
'this is a cool sub for hover effects on a label
'or other objects. Place this code in either the
'mousedown, mouseup, click, or mousemove sub of
'the object. Here is a good example: Let's say that
'you are using a label, and the label's original
'forecolor was white. For a cool effect, do this:
'in the MouseDown Sub of the label, you could put
'this:
'"Call grey(TheLabel)"
'In the MouseUp Sub put this:
'"Call white(TheLabel)"
'Replace "TheLabel" with the name of the label.
TheLabel.ForeColor = &H808080
End Function

Function DarkRed(TheLabel As Label)
'this is a cool sub for hover effects on a label
'or other objects. Place this code in either the
'mousedown, mouseup, click, or mousemove sub of
'the object. Here is a good example: Let's say that
'you are using a label, and the label's original
'forecolor was white. For a cool effect, do this:
'in the MouseDown Sub of the label, you could put
'this:
'"Call grey(TheLabel)"
'In the MouseUp Sub put this:
'"Call white(TheLabel)"
'Replace "TheLabel" with the name of the label.
TheLabel.ForeColor = &HC0&
End Function
Function grey(TheLabel As Label)
'this is a cool sub for hover effects on a label
'or other objects. Place this code in either the
'mousedown, mouseup, click, or mousemove sub of
'the object. Here is a good example: Let's say that
'you are using a label, and the label's original
'forecolor was white. For a cool effect, do this:
'in the MouseDown Sub of the label, you could put
'this:
'"Call grey(TheLabel)"
'In the MouseUp Sub put this:
'"Call white(TheLabel)"
'Replace "TheLabel" with the name of the label.
TheLabel.ForeColor = &HC0C0C0
End Function

Function NBlue(TheLabel As Label)
'this is a cool sub for hover effects on a label
'or other objects. Place this code in either the
'mousedown, mouseup, click, or mousemove sub of
'the object. Here is a good example: Let's say that
'you are using a label, and the label's original
'forecolor was white. For a cool effect, do this:
'in the MouseDown Sub of the label, you could put
'this:
'"Call grey(TheLabel)"
'In the MouseUp Sub put this:
'"Call white(TheLabel)"
'Replace "TheLabel" with the name of the label.
TheLabel.ForeColor = &HFF0000
End Function
Function white(TheLabel As Label)
'this is a cool sub for hover effects on a label
'or other objects. Place this code in either the
'mousedown, mouseup, click, or mousemove sub of
'the object. Here is a good example: Let's say that
'you are using a label, and the label's original
'forecolor was white. For a cool effect, do this:
'in the MouseDown Sub of the label, you could put
'this:
'"Call grey(TheLabel)"
'In the MouseUp Sub put this:
'"Call white(TheLabel)"
'Replace "TheLabel" with the name of the label.
TheLabel.ForeColor = &HFFFFFF
End Function


Public Sub BUp(TheLabel As Label)
'Put this in the MousDown function of your label.
'Use it like this: Call Bdown(TheLabel)
'Replace "TheLabel" with the name of your label.
TheLabel.Top = TheLabel.Top - 15
TheLabel.Left = TheLabel.Left - 15
End Sub
