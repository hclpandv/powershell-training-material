## PowerShell Scripting Cheatsheet

<table>
<tr><th>Input/Output</th><th>Objects Everywhere</th><th>String Quotes</th></tr>
<tr><td bgcolor="#012456">
<pre style="background-color:#012456;color:#EEEDF0">
#Basic Input/Output
$Name = Read-Host "Your Name Plz"
Write-Host "Hello $Name"
</pre>
  
</td><td>
<pre>
$my_string = "Hello"
$my_string.Length #=> 5
$my_string.ToUpper() #=> HELLO
</pre>
  
</td><td bgcolor="#012456">
<pre style="background-color:#012456;color:#EEEDF0">
$NAME="John"
Write-Host "Hi $NAME"  #=> Hi John
Write-Host 'Hi $NAME'  #=> Hi $NAME
</pre>
</td></tr> </table>
<!---      -->

### # Conditional Structure

<table>
<tr><th>if-else</th><th>switch-case</th><th>expressions</th></tr>
<tr><td>
<pre>
if($expression -eq $true){
  Write-Host "Cond. True" 
}
elseif{
  Write-Host "2nd True"
}
else{
  Write-Host "Cond. False" 
}
</pre>
  
</td><td bgcolor="#012456">
<pre style="background-color:#012456;color:#EEEDF0">
switch ($x)
{
    'value1' {}
    {$_ -in 'A','B','C'} {}
    'value3' {}
    Default {}
} 
</pre>
  
</td><td>
<pre>
$true #=> True
1 #=> True
$null #=> False
$empty = "" #=> False
CmdLet-ReturnsFalse #=> False 
</pre>
</td></tr> </table>

<!---      -->

### # Loop Structure

<table>
<tr><th>do-while</th><th>do-until</th><th>For Loop</th><th>ForEach Loop</th></tr>
<tr><td bgcolor="#012456">
<pre style="background-color:#012456;color:#EEEDF0">
do
{
  # Code
}
while ($x -gt 0)
</pre>
  
</td><td>
<pre>
do
{
  # Code
}
until ($x -gt 0)
</pre>
  
</td><td bgcolor="#012456">
<pre style="background-color:#012456;color:#EEEDF0">
for ($i = 1; $i -lt 99; $i++){ 
  # Code
}
</pre>
  
</td><td>
<pre>
foreach($item in $collection){   
   Write-Output $item
}
</pre>
</td></tr></table>

<!---      -->

### # Arrays

<table>
<tr><th>Defining Arrays</th><th>Working with Arrays/th></tr>
<tr><td>
<pre>
if($expression -eq $true){
  Write-Host "Cond. True" 
}
elseif{
  Write-Host "2nd True"
}
else{
  Write-Host "Cond. False" 
}
</pre>
  
</td><td bgcolor="#012456">
<pre style="background-color:#012456;color:#EEEDF0">
switch ($x)
{
    'value1' {}
    {$_ -in 'A','B','C'} {}
    'value3' {}
    Default {}
} 
</pre>

</td></tr> </table>

<!---      -->


