Param($password)
if($password -eq 'p@ssw0rd'){
    write-Output 'You are an authorized user'
} else 
{
  write-output 'You are trying to access an un-authorized resource, you attempt is logged and reported to concerned Authorities'
}
