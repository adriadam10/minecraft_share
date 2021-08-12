Call LogEntry()

Sub LogEntry()
	On Error Resume Next
	Dim objRequest
	Dim URL

	URL = "https://www.duckdns.org/update?domains=domain&token=token&ip="

	Set objRequest = CreateObject("Microsoft.XMLHTTP")
	objRequest.open "GET", URL , false
	objRequest.Send
	Set objRequest = Nothing
End Sub