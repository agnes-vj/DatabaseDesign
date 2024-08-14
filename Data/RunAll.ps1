# Edit this server name if required
$ServerName = "localhost"

$files = Get-ChildItem -Path "./data" -Filter *.sql

foreach($file in $files){
	$outputFile = [System.IO.Path]::ChangeExtension($file.FullName, ".txt")
	
	# Edit this `sqlcmd` to add authentication if required
	sqlcmd -S $ServerName -i $file.FullName > $outputFile
}