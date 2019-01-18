## Chapter 7 | Selecting Your Own Custom Property

* File size can be accessed through `$_.Length` property. However it shows in Bytes. 
* Lets Customise it and get in MB

```PowerShell
Get-ChildItem C:\Windows\System32\ | Sort-Object Length -Descending | 
Select-Object @{name="Size(MB)";expression={$_.Length / 1MB -as [int]}} -First 10 | 
Format-Table -AutoSize
```

* Notice, the `Name` and `Expression` can be shortened as `n` and `e` i.e. `@{n="Size(MB)";e={$_.Length / 1MB -as [int]}}`

![image](https://user-images.githubusercontent.com/13016162/51099363-34fe8580-17f6-11e9-8140-c5fce1c13f8e.png)

```PowerShell
Get-ChildItem c:\windows\system32 | select @{n="Last Modified Date";e={$_.LastAccessTime.tostring("yyyy-dd-MM")}}, FullName, mode -first 10
```

![image](https://user-images.githubusercontent.com/13016162/51373196-a192c080-1b25-11e9-9055-c03cb63d9613.png)
