On error resume next
    Const ForReading = 1 
    Dim arrFileLines() 
    Dim objNetwork,ObjFSO,objFile,objNet,objOutlook
	
	if WScript.Arguments.Count = 0 then
		WScript.Echo "Missing parameter"
	end if

    i=0

    Set objnet = CreateObject("wscript.network")
    Set objFSO = CreateObject("Scripting.FileSystemObject") 
    Set objFile = objFSO.OpenTextFile(WScript.Arguments(0), ForReading) 
    Set objFSO = CreateObject("Scripting.FileSystemObject")
    Set objOutlook = CreateObject("Outlook.Application") 


    Do Until objFile.AtEndOfStream 
        Redim Preserve arrFileLines(i) 
        arrFileLines(i) = objFile.ReadLine 
                i = i + 1 
    Loop 

    objFile.Close
 

    For Each strPath in arrFileLines 
         objOutlook.Session.Addstore strPath
    Next  