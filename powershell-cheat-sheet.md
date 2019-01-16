### PowerShell Scripting Cheatsheet

* Basic

<table>
<tr><th>Input/Output</th><th>Objects Everywhere</th><th>String Quotes</th></tr>
<tr><td bgcolor="#00FF00">
<pre>
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
  
</td><td>
<pre>
$NAME="John"
Write-Host "Hi $NAME"  #=> Hi John
Write-Host 'Hi $NAME'  #=> Hi $NAME
</pre>
</td></tr> </table>

---

* Loop Structure

<table>
<tr><th>do-while</th><th>do-until</th><th>For Loop</th></tr>
<tr><td>
<pre>
do
{
  # Code to Execute
}
while ($x -gt 0)
</pre>
  
</td><td>
<pre>
do
{
  # Code to Execute
}
until ($x -gt 0)
</pre>
  
</td><td>
<pre>
foreach($item in $collection){   
   Write-Output $item
}
for ($i = 1; $i -lt 99; $i++){ 
  # Code to Execute
}
</pre>
</td></tr> </table>

---


<table>
<tr>
<th>
Response
</th>
</tr>

<tr>
<td>
<pre>
json
  {
    "id": 10,
    "username": "alanpartridge",
    "email": "alan@alan.com",
    "password_hash": "$2a$10$uhUIUmVWVnrBWx9rrDWhS.CPCWCZsyqqa8./whhfzBZydX7yvahHS",
    "password_salt": "$2a$10$uhUIUmVWVnrBWx9rrDWhS.",
    "created_at": "2015-02-14T20:45:26.433Z",
    "updated_at": "2015-02-14T20:45:26.540Z"
}
</pre>
</td>

</tr>
</table>

------

