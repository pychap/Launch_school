Hi, I don't understand the output on A) and B). But let's focus on B). If I put into `pry`  
```ruby
one = "one"
two = "two"
three = "three"
~~~

– and then the method:

```ruby
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end
~~~
In `pry` I see that the method returns `"one"` - which is what I suspected, so that's good. I assume (incorrectly?) that the variable three now references "one". Is it true that this method only the last line would get returned, correct? The other two assignments would stay within the block? That would explain the return `"one"`

I used `.object_id` and printed out along the steps of this exercise to help get some insight, see below.
Having read Pete Hansons's 3 articles on Pass By and Reference I'm still in the weeds confusion-wise. Hopefully with a good explanation the other two will make sense (although I figured the 3rd one correctly).

Was curious why there was no explanation on this exercise? Although in the "hard" section was the solution that obvious?