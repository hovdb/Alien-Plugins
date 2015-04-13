'Global variables


Dim oContainer
Dim OutPutFile
Dim FileSystem

'Initialize global variables
Set FileSystem = WScript.CreateObject("Scripting.FileSystemObject")
Set OutPutFile = FileSystem.CreateTextFile("alien_export.txt", True)
Set oContainer =GetObject("LDAP://DC=alienation,DC=hq")
Set objShell = createobject("wscript.shell")
'Enumerate Container
EnumerateUsers oContainer


'Clean up
OutPutFile.Close
Set FileSystem = Nothing
Set oContainer = Nothing



WScript.Echo "Finished"
WScript.Quit(0)


Sub EnumerateUsers(oCont)
Dim oUser

For Each oUser In oCont
Select Case LCase(oUser.Class)
Case "computer"

If 1=1 Then
oName = trim(replace(oUser.name,"CN=",""))
strParams = "%comspec% /c NSlookup " & oName
Set objExecObj = objShell.exec(strParams)

Do While Not objExecObj.StdOut.AtEndOfStream
	strText = objExecObj.StdOut.Readline()
	if instr (strText, "Address") Then
		strhost = trim(replace(strText,"Address:",""))
	end if
Loop

'Header: "IPs";"Hostname";"FQDNs";"Description";"Asset Value";"Operating System";"Latitude";"Longitude";"Host ID";"External Asset";"Device Type"
'OutPutFile.WriteLine "|IPs|;|Hostname|;|FQDNs|;|Description|;|Asset Value|;|Operating System|;|Latitude|;|Longitude|;|Host ID|;|External Asset|;|Device Type|"

OutPutFile.WriteLine "|" & strhost & "|" & ";" & "|" & oName & "|" & ";" & "|" & "" & "|" & ";" & "|" & "" & "|" & ";" & "|" & "2" & "|" & ";" & "|" & "Windows" & "|" & ";" & "|" & "" & "|" & ";" & "|" & "" & "|" & ";" & "|" & "" & "|" & ";" & "|" & "" & "|" & ";" & "|" & "" & "|" 
'WScript.Echo oName
'Wscript.echo strhost

End If



Case "organizationalunit" , "container"

EnumerateUsers oUser
End Select







Next
End Sub