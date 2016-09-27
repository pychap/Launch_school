## Notes for Ruby

### When should I use  `puts` instead of `return` in a function?

The `return` from a function gives the line of code that called the function a result. You can think of a function as taking input through its arguments, and returning output through `return`. The `puts` is *completely* unrelated to this, and only deals with printing output to the terminal.

### The Truth Terms
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
### The Truth Tables
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
>> I'm hoping this is a good tool to use to study with
