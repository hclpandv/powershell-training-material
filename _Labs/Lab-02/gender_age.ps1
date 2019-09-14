# Lets Clear the slate
clear-Host

$age = Read-Host "Please enter your age?"
$gender = Read-Host "Please Enter your Gender i.e. M/F"

if(($gender -eq 'F') -and ($age -gt 18)){
  Write-Host "You are legaly allowed to marry"
}
elseif(($gender -eq 'M') -and ($age -gt 21)){
  Write-Host "You are legaly allowed to marry"
}
else{
  if($gender -eq 'M'){$years_remaning = 21 - $age} else{$years_remaning = 18 - $age}
  Write-Host "its too early, have patience for $years_remaning Years"
}
