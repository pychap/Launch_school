### Notes for Ruby - thanks to "Ruby the Hard Way" & Launch School
=======
The trick to remembering all the syntax rules in Ruby is to not remember them -- you need to be able to refresh your memory by experimenting with code.
#### Parentheses
In Ruby, when you invoke a method, the parentheses are optional. This often makes it difficult to differentiate between method invocations and local variables. For example, if you type puts -- is that a method invocation, or a local variable? If you know that there's a method called puts, then you know it's a method call. But if you didn't, then it's uncertain. To be more clear while you're still getting adjusted to reading Ruby, in this lesson we're going to always use parentheses when invoking a method. Example: we will use `gets().chomp()` instead of `gets.chomp`.
#### `puts` and `gets`
When you want to display something, you can use the puts method. When you want to ask the user for some input, you can use the gets method. In this lesson, we are going to call those methods with their module, like this: `Kernel.puts()` or `Kernel.gets()`. Doing this shows that these are *module methods* in the `Kernel` module. It's not critical that you remember this, but it's important to understand that all methods come from somewhere.
#### When should I use  `puts` instead of `return` in a function?

The `return` from a function gives the line of code that called the function a result. You can think of a function as taking input through its arguments, and returning output through `return`. The `puts` is *completely* unrelated to this, and only deals with printing output to the terminal.

#### Declaring class name
Be sure to use `CamelCase`

`class MyCoolClass   
end`

#### The Truth Terms
* `&&` (and)
* `||` (or)
* `!`  (not)
* `!=` (not equal)
* `==` (equal)
* `===` (equal looser)
* `>=` (greater than equal)
* `<=` (less than equal)
* `true`
* `false`
* foo
---
#### The Truth Tables
<table>
    <tr><td><h5>Not</h5></td><td><h5>true?</h5></td></tr>
    <tr><td>!false</td><td>true</td>
    </tr>
    <tr><td>!true</td><td>false</td>
    </tr>
</table>
<table>
    <tr>
        <td><h5>Or ( || )</h5></td>
        <td><h5>true?</h5></td>
    </tr>
    <tr>
        <td>true || false</td>
        <td>true</td>
    </tr>
    <tr>
        <td>true || true</td>
        <td>true</td>
    </tr>
    <tr>
        <td>false || true</td>
        <td>true</td>
    </tr>
    <tr>
        <td>false || false</td>
        <td>false</td>
    </tr>
</table>
<table>
    <tr>
        <td><h5>And ( && )</h5></td>
        <td><h5>true?</h5></td>
    </tr>
    <tr>
        <td>true && false</td>
        <td>false</td>
    </tr>
    <tr>
        <td>true && true</td>
        <td>true</td>
    </tr>
    <tr>
        <td>false && true</td>
        <td>false</td>
    </tr>
    <tr>
        <td>false && false</td>
        <td>false</td>
    </tr>
</table>
<table>
    <tr>
        <td><h5>not Or ( || )</h5></td>
        <td><h5>true?</h5></td>
    </tr>
    <tr>
        <td>not (true || false)</td>
        <td>false</td>
    </tr>
    <tr>
        <td>not (true || true)</td>
        <td>false</td>
    </tr>
    <tr>
        <td>not (false || true)</td>
        <td>false</td>
    </tr>
    <tr>
        <td>not (false || false)</td>
        <td>true</td>
    </tr>
</table>
<table>
    <tr>
        <td><h5>not And ( && )</h5></td>
        <td><h5>true?</h5></td>
    </tr>
    <tr>
        <td>!(true && false)</td>
        <td>true</td>
    </tr>
    <tr>
        <td>!(true && true)</td>
        <td>false</td>
    </tr>
    <tr>
        <td>!(false && true)</td>
        <td>true</td>
    </tr>
    <tr>
        <td>!(false && false)</td>
        <td>true</td>
    </tr>
</table>
<table>
  <tr>
    <td><h5>!=</h5></td>
    <td><h5>true?</h5></td>
  </tr>
  <tr>
    <td>1 != 0</td>
    <td>true</td>
  </tr>
  <tr>
    <td>1 != 1</td>
    <td>false</td>
  </tr>
  <tr>
    <td>0 != 1</td>
    <td>true</td>
  </tr>
  <tr>
    <td>0 != 0</td>
    <td>false</td>
  </tr>
</table>
<table>
  <tr>
  <td><h5> == </h5></td>
  <td><h5>true?</h5></td>
  </tr>
  <tr>
    <td>1 == 0</td>
    <td>false</td>
  </tr>
  <tr>
    <td>1 == 1</td>
    <td>true</td>
  </tr>
  <tr>
    <td>0 == 1</td>
    <td>false</td>
  </tr>
  <tr>
    <td>0 == 0</td>
    <td>true</td>
  </tr>
</table>
> I'm hoping this is a good tool to use to study with
