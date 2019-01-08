## Chapter 1 | Look inside a Cmd-Let

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
    ll running processes. The pipeline operator (|) passes the process objects to the Where-Object cmdlet, which select
    s only the object with a value greater than 20,000,000 bytes for the WorkingSet property. 
    
    WorkingSet is one of many properties of process objects. To see all of the properties, type "Get-Process | Get-Memb
    er". By default, the values of all amount properties are in bytes, even though the default display lists them in ki
    lobytes and megabytes.    
    -------------------------- EXAMPLE 4 --------------------------   
    C:\PS>$a = get-process
    
    C:\PS> get-process -inputobject $a | format-table -view priority  
    
    Description
    -----------
    These  commands list the processes on the computer in groups based on their priority class. 
    
    The first command gets all the processes on the computer and then stores them in the $a variable. 
    
    The second command uses the InputObject parameter to pass the process objects that are stored in the $a variable to
     the Get-Process  cmdlet. The pipeline operator passes the objects to the Format-Table cmdlet, which formats the pr
    ocesses by using the Priority view. 
    
    The priority view, and other views, are defined in the PS1XML format files in the Windows PowerShell home directory
     ($pshome).       
    -------------------------- EXAMPLE 5 --------------------------    
    C:\PS>get-process powershell -computername S1, localhost | ft @{Label="NPM(K)";Expression={[int]($_.NPM/1024)}}, @{
    Label="PM(K)";Expression={[int]($_.PM/1024)}},@{Label="WS(K)";Expression={[int]($_.WS/1024)}},@{Label="VM(M)";Expre
    ssion={[int]($_.VM/1MB)}}, @{Label="CPU(s)";Expression={if ($_.CPU -ne $()) { $_.CPU.ToString("N")}}}, Id, MachineN
    ame, ProcessName -auto   
    
    NPM(K) PM(K) WS(K) VM(M) CPU(s)   Id MachineName ProcessName
    ------ ----- ----- ----- ------   -- ----------- -----------
         6 23500 31340   142        1980 S1          powershell
         6 23500 31348   142        4016 S1          powershell
        27 54572 54520   576        4428 localhost   powershell
    
    
    Description
    -----------
    This example provides a Format-Table (alias = ft) command that adds the MachineName property to the standard Get-Pr
    ocess output display.   
    
    -------------------------- EXAMPLE 6 --------------------------
    
    C:\PS>get-process powershell -fileversioninfo
    
    ProductVersion   FileVersion      FileName
    --------------   -----------      --------
    6.1.6713.1       6.1.6713.1 (f... C:\WINDOWS\system32\WindowsPowerShell\v1.0\powershell.exe
    
    
    Description
    -----------
    This command uses the FileVersionInfo parameter to get the version information for the PowerShell.exe file that is 
    the main module for the PowerShell process. 
    
    To run this command with processes that you do not own on Windows Vista and later versions of Windows, you must ope
    n Windows PowerShell with the "Run as administrator" option.   
    
    -------------------------- EXAMPLE 7 --------------------------
    
    C:\PS>get-process sql* -module
    
    
    Description
    -----------
    This command uses the Module parameter to get the modules that have been loaded by the process. This command gets t
    he modules for the processes that have names that begin with "sql".
    
    To run this command on Windows Vista (and later versions of Windows) with processes that you do not own, you must s
    tart Windows PowerShell with the "Run as administrator" option.   
    
    
    -------------------------- EXAMPLE 8 --------------------------
    
    C:\PS>$p = get-wmiobject win32_process -filter "name='powershell.exe'"
    
    C:\PS> $p.getowner()
    
    __GENUS          : 2
    __CLASS          : __PARAMETERS
    __SUPERCLASS     :
    __DYNASTY        : __PARAMETERS
    __RELPATH        :
    __PROPERTY_COUNT : 3
    __DERIVATION     : {}
    __SERVER         :
    __NAMESPACE      :
    __PATH           :
    Domain           : DOMAIN01
    ReturnValue      : 0
    User             : user01
    
    
    Description
    -----------
    This command shows how to find the owner of a process. Because the System.Diagnostics.Process object that Get-Proce
    ss returns does not have a property or method that returns the process owner, the command uses
    the Get-WmiObject cmdlet to get a Win32_Process object that represents the same process.
    
    The first command uses Get-WmiObject to get the PowerShell process. It saves it in the $p variable.
    
    The second command uses the GetOwner method to get the owner of the process in $p. The command reveals that the own
    er is Domain01\user01.   
    
    
    -------------------------- EXAMPLE 9 --------------------------
    
    C:\PS>get-process powershell
    
    C:\PS> get-process -id $pid
    
    C:\PS> get-process powershell
    
    Handles  NPM(K)    PM(K)      WS(K) VM(M)   CPU(s)     Id ProcessName
    -------  ------    -----      ----- -----   ------     -- -----------
        308      26    52308      61780   567     3.18   5632 powershell
        377      26    62676      63384   575     3.88   5888 powershell
    
    
    C:\PS> get-process -id $pid
    
    Handles  NPM(K)    PM(K)      WS(K) VM(M)   CPU(s)     Id ProcessName
    -------  ------    -----      ----- -----   ------     -- -----------
        396      26    56488      57236   575     3.90   5888 powershell
    
    
    Description
    -----------
    These commands show how to use the $pid automatic variable to identify the process that is hosting the current Wind
    ows PowerShell session. You can use this method to distinguish the host process from other PowerShell processes tha
    t you might want to stop or close.
    
    The first command gets all of the PowerShell processes in the current session. 
    
    The second command gets the PowerShell process that is hosting the current session.
    
    
    
    


```



