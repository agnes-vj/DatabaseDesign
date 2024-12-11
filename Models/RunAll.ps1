# Edit your server name, e.g. "DESKTOP-5\SQLEXPRESS" 
$ServerName = ".\AQLExpress"


$files = Get-ChildItem -Path "./Models" -Filter *.sql

foreach($file in $files){
	$outputFile = [System.IO.Path]::ChangeExtension($file.FullName, ".txt")
	
	sqlcmd -S $ServerName -E -i $file.FullName > $outputFile
}