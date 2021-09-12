#RequireAdmin
#NoTrayIcon

$cURL = "C:\Windows\System32\curl.exe"
$vBaseURL = "http://localhost:18000/api?command=%7B%22id%22%3A1,%22method%22%3A%22"

$vParamStop = '-H "Authorization: BA2B57AFCA0008FCC895D682" "' & $vBaseURL & 'miner.stop%22,%22params%22%3A%5B%5D%7D"'
$vParamStart = '-H "Authorization: BA2B57AFCA0008FCC895D682" "' & $vBaseURL & 'quit%22,%22params%22%3A%5B%5D%7D"'


ShellExecuteWait($cURL, $vParamStop)
Sleep(300000)
ShellExecuteWait($cURL, $vParamStart)
