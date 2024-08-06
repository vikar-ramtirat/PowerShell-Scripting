function New-YesNoPromt ([string]$message){
   Write-Host $message
   $answer = Read-Host "[y]es or [N]o"

   while("yes", "no", "y", "n" -notcontains $answer) {
   $answer = Read-Host "[y]yes or [N]o"
   }

   switch ($answer) {
    "Yes"{$true}
    "y"  {$true}
    "no" {$false}
    "n"  {$false}
    
   }
}

#Run function
#call the name of function in terminal

New-YesNoPromt -message "hello Powershell"