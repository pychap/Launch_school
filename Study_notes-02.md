### Very helpful links:
[Coding tips I](https://launchschool.com/lessons/a0f3cd44/assignments/aa99ad2d)  
[Coding tips II - *especially good method notes*](https://launchschool.com/lessons/a0f3cd44/assignments/f612fbc5)  
[Scope](https://launchschool.com/lessons/a0f3cd44/assignments/fff0b9db)  
[Variables as pointers](https://launchschool.com/books/ruby/read/more_stuff#variables_as_pointers)  
[Numbers](http://ruby.bastardsbook.com/chapters/numbers/)

----------------

### Method notes
```ruby  
def print_me    
  puts "I'm printing within the method!"  
end
```

`print_me`  
* When you use `#puts` inside a method, you're outputting one thing and returning another.  
* `#puts` outputs whatever it's given and returns `nil`.

In this case, we're printing the value inside the method, which means the method's return value is `nil`. Try in `irb`  

This will `return` the string (by calling the method with `puts`).
```ruby 
def print_me  
  "I'm printing the return value!"  
end  
puts print_me  
~~~


* Ruby methods ALWAYS return the evaluated result of the last line of the expression unless an explicit return comes before it.  
* If you wanted to explicitly return a value you can use the `return` keyword
* When return is executed, it immediately exits the method, returning the provided value.
* `puts` will output the value and return `nil`

------

##### Ternary general syntax:  
`test-expression ? if-true-expression : if-false-expression`

-------

###### pass by vs reference values
when an operation within the method mutates the caller, it will affect the original object

-------------------

#### for psuedo code
| keyword      | meaning              |
| :----------- |:--------------------|
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
In Ruby, make sure to use `snake_case` when naming everything, except classes which are `CamelCase` or constants, which are all `UPPERCASE`.  

-----------

Test to see if value is an integer:
```ruby
if integer?(is_integer?) && is_integer?.to_i > 0
  break
else
  prompt(...error_message...)
end
```

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
| Loops        | [Catch the number](https://launchschool.com/exercises/f1616791) | [between?](http://ruby-doc.org/core-2.3.1/Comparable.html) comparable |
| Loops        | [Empty the array](https://launchschool.com/exercises/0866fdc7) | make code efficient |
| Loops  | [Only even](https://launchschool.com/exercises/1f4b0bec) | use of next |
| loops  | [First to five](https://launchschool.com/exercises/41f4b2a2) | tricky |
| loops  | [Greeting](https://launchschool.com/exercises/aae4a14e) | while loop |
| user input | [Dividing Numbers](https://launchschool.com/exercises/e740a355) | loop behavior/conditionals, cled efficiency |
| user input | [LS Printer II](https://launchschool.com/exercises/e0ff894c) | decisions within loops |
| user input | [Opposites attract](https://launchschool.com/exercises/84929d91) | difficult 4me, efficiency in code |
| methods | [Name not found](https://launchschool.com/exercises/d462c857) | default parameter |
| methods | [Print me II](https://launchschool.com/exercises/15ab0113) | on return values |
| return | [6 - 10](https://launchschool.com/exercise_sets/d6b1fb73) | again, returns |
| strings | [split](https://launchschool.com/exercises/97f49731) | break apart |
| arrays | [all](https://launchschool.com/exercise_sets/43b48b60) | need to practice this section |
