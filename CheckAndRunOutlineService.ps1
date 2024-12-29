$processName = "OutlineService"
$processPath = "C:\Program Files (x86)\DNSService\OutlineService.exe"

# Проверяем, запущен ли процесс
if (-not (Get-Process -Name $processName -ErrorAction SilentlyContinue)) {
    # Если процесс не запущен, запускаем его с высокими правами
    Start-Process -FilePath "`"$processPath`"" -Verb RunAs
}