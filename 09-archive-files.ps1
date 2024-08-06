#Writing Another Script
#Initial cmdlet

Get-ChildItem

#Set path

Get-ChildItem -path C:\Scripts

#Choose path

param(
    [string]$path
)
Get-ChildItem -path $path

#Filter by modified date

param(
    [string]$path
)
Get-ChildItem -path $path | Where-Object LastWriteTime -LT 11/10/17

#Choose date

param(
    [string]$path,
    [datetime]$date
)
Get-ChildItem -Path $path | Where-Object LastWriteTime -LT $date

#Use days instead of date

param(
    [string]$path,
    [int]$days
)
Get-ChildItem -Path $path |
Where-Object LastWriteTime -LT ((Get-Date).AddDays(-$days))

#Add message

param(
    [string]$path,
    [int]$days
)

$date = (Get-Date).AddDays(-$days).ToShortDateString()
$a = Get-ChildItem -Path $path | Where-Object LastWriteTime -LT $date

"`n The following " + $a.Length + " file(s) have not been modified since " + $date
$a

#Fix message

param(
    [string]$path,
    [int]$days
)

$date = (Get-Date).AddDays(-$days).ToShortDateString()
$a = Get-ChildItem -Path $path | Where-Object LastWriteTime -LT $date

$filecount = 0
if ($a.Length -lt 1){
    $filecount = 0
} elseif ($a -isnot [array]){
    $filecount = 1
} else {
    $filecount = $a.Length
}

"`n The following " + $filecount + " file(s) have not been modified since " + $date
$a

#Archive files

param(
    [string]$path,
    [int]$days
)

$date = (Get-Date).AddDays(-$days).ToShortDateString()
$a = Get-ChildItem -Path $path | Where-Object LastWriteTime -LT $date

$filecount = 0
if ($a.Length -lt 1){
    $filecount = 0
} elseif ($a -isnot [array]){
    $filecount = 1
} else {
    $filecount = $a.Length
}

"`n The following " + $filecount + " file(s) have not been modified since " + $date
$a
$a | Move-Item -Destination C:\Archive

#Add confirmation prompt

param(
    [string]$path,
    [int]$days
)

$date = (Get-Date).AddDays(-$days).ToShortDateString()
$a = Get-ChildItem -Path $path | Where-Object LastWriteTime -LT $date

$filecount = 0
if ($a.Length -lt 1){
    $filecount = 0
} elseif ($a -isnot [array]){
    $filecount = 1
} else {
    $filecount = $a.Length
}

"`n The following " + $filecount + " file(s) have not been modified since " + $date
$a

if ($filecount -gt 0){
    $answer = Read-Host "`n Archive file(s)? Yes or No"

    while("yes","no" -notcontains $answer) {
    $answer = Read-Host "Yes or No"
    }

    switch ($answer){
        "yes" {$a | Move-Item -Destination C:\Archive;"`n Operation Completed"}
        "no" {"`n Operation Canceled"}
    }
}