Sub Mail_workbook_Outlook_1()
'Working in Excel 2000-2016
'This example send the last saved version of the Activeworkbook
'For Tips see: http://www.rondebruin.nl/win/winmail/Outlook/tips.htm
    Dim OutApp As Object
    Dim OutMail As Object

    Set OutApp = CreateObject("Outlook.Application")
    Set OutMail = OutApp.CreateItem(0)

    On Error Resume Next
    With OutMail
        .to = "ron@debruin.nl"
        .CC = ""
        .BCC = ""
        .Subject = "This is the Subject line"
        .Body = "Hi there"
        .Attachments.Add ActiveWorkbook.FullName
        'You can add other files also like this
        '.Attachments.Add ("C:\test.txt")
        .Send   'or use .Display
    End With
    On Error GoTo 0

    Set OutMail = Nothing
    Set OutApp = Nothing
End Sub
