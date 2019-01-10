## Chapter 2 | Look inside a Cmd-Let

* `Get-Help` to get a Help of any Cmd-Let

![image](https://user-images.githubusercontent.com/13016162/50819045-eca31b80-134e-11e9-96f5-4f61e67dbf3f.png)

* You can do a `Get-Help` on Get-Help itself (and you can provide some parameters too i.e. `-Example` in this case)
```PowerShell
Get-Help Get-Help -Examples
```
![image](https://user-images.githubusercontent.com/13016162/50819415-06912e00-1350-11e9-9db1-60a01a7f736e.png)

* Lets get an example

```PowerShell
Get-Help Get-Process -Examples
```

* OutPut:

```

NAME
    Get-Process    
SYNOPSIS
    Gets the processes that are running on the local computer or a remote computer.    
    -------------------------- EXAMPLE 1 --------------------------    
    C:\PS>Get-Process  
    
    Description
    -----------
    This command gets a list of all of the running processes running on the local computer. For a definition of each co
    lumn, see the "Additional Notes" section of the Help topic for Get-Help.    
    
    -------------------------- EXAMPLE 2 --------------------------    
    C:\PS>Get-Process winword, explorer | format-list *    
    
    Description
    -----------
    This command gets all available data about the Winword and Explorer processes on the computer. It uses the Name par
    ameter to specify the processes, but it omits the optional parameter name. The pipeline operator (|) passes the dat
    a to the Format-List cmdlet, which displays all available properties (*) of the Winword and Explorer process object
    s.
    
    You can also identify the processes by their process IDs. For example, "get-process -id 664, 2060".    
    
    -------------------------- EXAMPLE 3 --------------------------    
    C:\PS>get-process | where-object {$_.WorkingSet -gt 20000000}   
    
    Description
    -----------
    This command gets all processes that have a working set greater than 20 MB. It uses the Get-Process cmdlet to get a
        
```

* Use Get-Member : Cmd-Let Outputs an Object or a Collection of Objects - `Get-Member` helps to get detail about Methods and Properties of those Objects

![image](https://user-images.githubusercontent.com/13016162/50873558-87026e00-13e6-11e9-8c0a-b33af496770c.png)



