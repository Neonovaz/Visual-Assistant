Dim OlApp
Dim Eml
Dim Arg
Set Arg = WScript.Arguments
Dim File

File = "C:\Sahil SVN\Project_Folders\Hackathon\FW Happy Holi 2019.msg"

Set OlApp = CreateObject("Outlook.Application")
Set Eml = OlApp.CreateItemFromTemplate(File)
Download(Eml)

Sub Download(objEml)
For Each Attch In objEml.Attachments
Attch.SaveAsFile "C:\temp\" & Attch.FileName
Next
End Sub