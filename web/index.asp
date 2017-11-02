<h1>Read File</h1>
<%
file = Server.MapPath("./ReadFiles/list.txt")
response.write file & "<br>"

Set fs=Server.CreateObject("Scripting.FileSystemObject")
If fs.fileexists(file) Then
	Set f=fs.OpenTextFile(file, 1)

	do while f.AtEndOfStream = false
		Response.Write(f.ReadLine)
		Response.Write("<br>")
	loop

	f.Close
	Set f=Nothing
Else
	Response.Write "The file does not exist.<br>"
End If
Set fs=Nothing
%>
