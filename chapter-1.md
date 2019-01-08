## Chapter 1 | Know Your PowerShell

#### PowerShell Version and host version

![image](https://user-images.githubusercontent.com/13016162/50814508-f2ddcb80-133f-11e9-9e30-2990a80e6e23.png)

#### Get All Cmd-Lets (Commands) available in your powershell session

![image](https://user-images.githubusercontent.com/13016162/50814614-4e0fbe00-1340-11e9-845e-0f9001d03741.png)

* How Many ?

![image](https://user-images.githubusercontent.com/13016162/50814689-86170100-1340-11e9-8439-af8b432777fd.png)

* Types of commands in Powershell

```PowerShell
Get-Command | select CommandType -Unique | ft -AutoSize
```

![image](https://user-images.githubusercontent.com/13016162/50817394-ad260080-1349-11e9-939e-8c187c0df7ee.png)

* Aliases translates to one of other Cmd-Let
```PowerShell
Get-Command -CommandType Alias
```
![image](https://user-images.githubusercontent.com/13016162/50817593-5a007d80-134a-11e9-801c-36a1a9383fad.png)

* Cmd-Let (Pronounced as `CommandLet`) is Native PowerShell smart functions
* Input and Output of any given Cmd-Let is always an Object or a Collection of Objects  
```PowerShell
Get-Command -CommandType CmdLet
```
![image](https://user-images.githubusercontent.com/13016162/50817822-21ad6f00-134b-11e9-9fdb-6449cd7f6bc6.png)


