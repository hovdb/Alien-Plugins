MsgBox("Save the sid & event names comma separated (1,Login Failed) to c:\sidname.txt")
strPlug = InputBox("Enter Plugin ID (>9100)")
strPlugNm = InputBox("Enter Plugin Name All Lower Case No Spaces (cisco_pix)")
strVend = InputBox("Enter Vendor Name (Cisco)")
strMod = InputBox("Enter Model Name (SG500X)")
strVer = InputBox("Enter Version (Can be blank)")
strDevId= InputBox("Enter Device ID: 10=firewall,22=proxy,24=router/switch,3=Anti Virus,13=IDS,14=IPS,16=mail server,8=database,28=vulnerability scanner,29=web server,30=WiFi IDS,11=honeypot,20=server,15=SPAM/mail,27=VPN ,6=DHCP")
Set oFSO = CreateObject("scripting.filesystemobject")

Set oTF = oFSO.OpenTextFile("C:\sidname.txt", 1)
Set rTF = oFSO.CreateTextFile("C:\" & strPlugNm & ".sql", True)
rTF.WriteLine("DELETE FROM plugin WHERE id = '" & strPlug & "';")
rTF.WriteLine("DELETE FROM plugin_sid where plugin_id = '" & strPlug & "';")
rTF.WriteLine("DELETE FROM software_cpe where plugin = '" & strPlugNm & ":" & strPlug & "';")

rTF.WriteLine("INSERT IGNORE INTO software_cpe (cpe, name, version, line, vendor, plugin) VALUES ('cpe:/o:" & strVend & ":" & strMod & ":" & strVer & "','" & strMod & "','" & strVer & "','','" & StrVend & "', '" & strPlugNm & ":" & strPlug & "');")
rTF.WriteLine("INSERT IGNORE INTO plugin (id, type, name, description, product_type, vendor) VALUES (" & strPlug & ", 1, '" & strPlugNm & "', '" & strPlugNm & "', '" & strDevId & "', '" & strVend & "');")

Do While oTF.AtEndOfStream <> True
sLine = oTF.ReadLine

'splitting the line on the commas to create an array

aLine = split(sline, ",",-1,1)

sSid = aLine(0)
sName = aline(1)
'MSGBOX ssid & sname

path = oFSO.GetAbsolutePathName("c:\" & strPlugNm & ".sql")
getname = oFSO.GetFileName(path)
rTF.WriteLine("INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (" & strPlug & ", " & sSid & ", NULL, NULL, '" & sName & "', 2, 2);") 


LOOP

oTF.Close
rTF.Close
MSGBOX "file is created c:\" & strPlugNm & ".sql"