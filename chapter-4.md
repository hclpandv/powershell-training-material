## Chapter 4 | Parameters

* Parameters provide required inputs to Cmdlets if needed. Few CmdLets do not require any inputs few have mandatory parameters
* Paremeters are provided using a `-` hyphon i.e. `Any-Cmdlet -Parameter1 -Parameter2`
* Parameter values are supplied through a <space> char.
* Example of such parameter is `Get-Process -Name svchost` here `-Name` is a Parameter

![image](https://user-images.githubusercontent.com/13016162/50883084-fa1edb00-140c-11e9-873e-1bd549a2f2f2.png)

### Common Parameters

![image](https://user-images.githubusercontent.com/13016162/50883162-48cc7500-140d-11e9-91cd-35b15bb1d2a6.png)

* What and How many are these CommonParameters ?

```
 The common parameters are:
    -Verbose
    -Debug
    -WarningAction
    -WarningVariable
    -ErrorAction
    -ErrorVariable
    -OutVariable
    -OutBuffer
    
 The risk mitigation parameters are:
    -WhatIf
    -Confirm
```


