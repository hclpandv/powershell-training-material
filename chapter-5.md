## Chapter 5 | Pipe and the pipeline input

* Pipe `|` Symbol is used to supply input to a Command-Let as an Output of Previous CmdLet
* `Cmd-Let1 | Cmd-Let2` shows the Output of `Cmd-Let1` is being supplied as input to `Cmd-Let2`
* A `Cmd-Let` may or may not accept PipeLine Input.
* CmdLet Binding is configured to support this. 
* Type `Get-Help Stop-Process -Full | more` Now see the Parameter Section

![image](https://user-images.githubusercontent.com/13016162/50950187-2a2eb280-14cf-11e9-95ba-9f10b9bd42a4.png)

* A CmdLet must have a Parameter which has `Accept pipeline input?` property as `True` either `(ByPropertyName)` or `(ByValue)`


