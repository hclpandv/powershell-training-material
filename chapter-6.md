## Chapter 6 | Play with Pipeline 

#### Selecting Output Culumns `Select-Object`

![image](https://user-images.githubusercontent.com/13016162/50956501-dc6f7580-14e1-11e9-9028-17471dd99e7d.png)

#### Sorting Output by Column Value `Sort-Object`

![image](https://user-images.githubusercontent.com/13016162/50956843-bac2be00-14e2-11e9-8ef4-c016eeeccc52.png)

#### Filtering Output Rows `Where-Object`
* The condition statement(s) can be written in script block within curly braces i.e. `Where-object {ConditionalStatement}` 
* Objects which are being transferred through PipeLine from one CmdLet to other is denoted as `$_`
* The property of these objects can be accessed via Dot `.` Symbol i.e. `$_.Name`

![image](https://user-images.githubusercontent.com/13016162/50957027-36246f80-14e3-11e9-9b50-e231229be405.png)

#### Looping through Output Rows `ForEach-Object`

![image](https://user-images.githubusercontent.com/13016162/50957682-e5ae1180-14e4-11e9-9911-8df475c248cb.png)
