[Coding tips (link)](https://launchschool.com/lessons/a0f3cd44/assignments/aa99ad2d)  
[Scope](https://launchschool.com/lessons/a0f3cd44/assignments/fff0b9db)

> *If you use the procedure a lot [practicing], by doing many different types of problems, you will find that you understand both the why and the how behind the procedure very well indeed… Continually focusing on understanding itself actually gets in the way.* [When rigirous practice is not considered or included.]
>
> —Barbra Oakley, A Mind for Numbers

### Method notes
``def print_me``   
  `puts "I'm printing within the method!"`  
`end`

`print_me`  
When you use `#puts` inside a method, you're outputting one thing and returning another. `#puts` outputs whatever it's given and returns `nil`. In this case, we're printing the value inside the method, which means the method's return value is `nil`. Try in `irb`  

This will `return` the string (by calling the method with `puts`).

`def print_me`  
  `"I'm printing the return value!"`  
`end`

`puts print_me`

-------------------

#### for psuedo code
| keyword      | meaning              |
| :------------ |:--------------------|
| START        | start of the program |
| SET          | sets a variable we can use for later |
| GET          | retrieve input from user |
| PRINT        | displays output to user |
| READ         | retrieve value from variable |
| IF / ELSE IF / ELSE | show conditional branches in logic |
| WHILE | show looping logic |
| END   | end of program |

### Rubocop
 * C stands for Convention, which means a convention was broken.
 * W (warning)
 * E (error)
 * F (fatal error)

--------
In Ruby, make sure to use `snake_case` when naming everying, except classes which are `CamelCase` or constants, which are all `UPPERCASE`.  

-----------
`<<-` Allows multiline strings, must be appended and prepended by uppercase word of your choice  
`foo = <<-MSG`  
 `1) Choice one`  
 `2) Message two`  
 `MSG`

-------
Ruby is an object oriented language. Everything is an object, which means that everything has an associated class, and that class in turn has a superclass, or parent. Every class that inherits from a superclass also inherits all of its methods.

### Exercises to re-visit
-----
| Section    | exercise | attention to |
| :---------- | :-------- | :----------- |
| Loops        |[Print until](https://launchschool.com/exercises/edca07c2) |  |
| Loops        | [Catch the number](https://launchschool.com/exercises/f1616791) |  |
| Loops        | [Empty the array](https://launchschool.com/exercises/0866fdc7) | make code efficient |
| Loops  | [Only even](https://launchschool.com/exercises/1f4b0bec) | use of next |
| loops  | [First to five](https://launchschool.com/exercises/41f4b2a2) | tricky |
| methods | [Name not found](https://launchschool.com/exercises/d462c857) | defalut parameter |
| methods | [Print me II](https://launchschool.com/exercises/15ab0113) | on return values |
