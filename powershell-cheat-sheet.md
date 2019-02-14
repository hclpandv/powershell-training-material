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
<tr><th>Defining Arrays</th><th>Working with Arrays</th></tr>
<tr><td>
<pre>
$my_numbers = 1..100
$Fruits = 'Apple', 'Banana', 'Orange'
$Fruits = @('Apple', 'Banana', 'Orange')

$Fruits[0] = "Apple"
$Fruits[1] = "Banana"
$Fruits[2] = "Orange"

</pre>
  
</td><td bgcolor="#012456">
<pre style="background-color:#012456;color:#EEEDF0">
Write-Host $Fruits[0]           # Element #0
Write-Host $Fruits.Count        # Number of elements
Write-Host $Fruits[0].Length    # String length of the 1st element
Write-Host $Fruits[0..1]        # Array from first to Nth element
Write-Host $Fruits[-2]          # Second last element of the Array
</pre>

</td></tr> </table>

<!---      -->

<table>
<tr><th>Hash Table or Dictionary</th></tr>
<tr><td>
<pre>
$my_vm_config = @{
                "hostname" = "vm00002314";
                "pvt_ip" = "10.48.3.12"; 
                "domain"= "vikiscripts.github.io"
}

Write-Host $my_vm_config.pvt_ip #=> 10.48.3.12

</pre>
  
</td></tr> </table>

### # Execute PowerShell Script from GitHub

<table>
<tr><th>Execute a Remote Script</th></tr>
</td><td bgcolor="#012456">
<pre style="background-color:#012456;color:#EEEDF0">
iex ((New-Object System.Net.WebClient).DownloadString('https://gist.githubusercontent.com/AdamDimech/08ba988211b55c71a480449b3b8ab6cd/raw'))
</pre>

</td></tr> </table>



