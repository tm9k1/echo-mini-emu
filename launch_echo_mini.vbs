Set WshShell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
currentDir = fso.GetParentFolderName(WScript.ScriptFullName)
WshShell.CurrentDirectory = currentDir
WshShell.Run "echo_sim.exe --scale 2 --internal """ & currentDir & "\internal_storage"" --system-dir """ & currentDir & "\internal_storage\.echo""", 0, False