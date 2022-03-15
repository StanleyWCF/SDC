$path = "C:\Users\Public\Documents\TEST_VU"
$num_file = (Get-ChildItem $path | Measure-Object).Count

write-host("Number of files uploaded: " + $num_file)


$hostname = hostname
Write-Host("Computer name: " + $hostname)

$path = "C:\Users\Public\Documents\TEST_VU"
$output = "C:\Users\Public\Documents\TEST_VU_D\result.txt"
$num_file = (Get-ChildItem $path | Measure-Object).Count


$summary = ("Number of files uploaded: " + $num_file)| Out-File -FilePath $output
$file_result = Get-ChildItem -Path $path -File | select Name, LastWriteTime | sort LastWriteTime | Out-File -FilePath $output -Append
