Include("scripts\dest\vpx\tablescript.vbs")

Sub Include (strFile)
	'Create objects for opening text file
	Set objFSO = CreateObject("Scripting.FileSystemObject")
	Set objTextFile = objFSO.OpenTextFile(strFile, 1)

	'Execute content of file.
	ExecuteGlobal objTextFile.ReadAll
 
	'CLose file
	objTextFile.Close
 
	'Clean up
	Set objFSO = Nothing
	Set objTextFile = Nothing
End Sub
