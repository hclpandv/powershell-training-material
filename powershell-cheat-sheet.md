### PowerShell Scripting Cheatsheet

* Loop Structure

---

<table>
<tr><th>For Loop</th><th>Do While</th><th>ForEach Loop</th></tr>
<tr><td>
<pre>
if($True){
  write-host "Condition is True!!"
}
</pre>
  
</td><td>
<pre>
$collection = 1..10
foreach($item in $collection){   
   Write-Output $item
}
</pre>
  
</td><td>
<pre>
$collection = 1..10
foreach($item in $collection){   
   Write-Output $item
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

