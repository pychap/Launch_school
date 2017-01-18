## Study notes 4

#### Exercises to re-visit
| title | link   | issue(s) to learn |
| :---- | :----  | :---------------- |
| Looping | [Print While](https://launchschool.com/exercises/6f2f69b0) | What tricked me up: using the array for storing the numbers. |
| Looping | [Print Until ](https://launchschool.com/exercises/edca07c2) | Need to solve quicker |
| Looping | [For loop ](https://launchschool.com/exercises/2c75e278) | Need to solve quicker, [to understand For loops](https://launchschool.com/books/ruby/read/loops_iterators#forloops).  |
| Loops 2 | [Get the sum ](https://launchschool.com/exercises/b4683f61) | Conditionals don't need a break.  |
| Loops 2 | [Empty the array](https://launchschool.com/exercises/0866fdc7) | Simple, keep it simple.  |
| Methods | [`each`, `select`, `map`](https://launchschool.com/lessons/000a3b33/assignments/0aa9bf8a) | Pay attention to return values, `select` especially tricky |

### Looping through a hash, example 1:

```ruby
number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}
pets = number_of_pets.keys # => ['dogs', 'cats', 'fish']
counter = 0

loop do
  break if counter == number_of_pets.size
  current_pet = pets[counter]
  current_pet_number = number_of_pets[current_pet]
  puts "I have #{current_pet_number} #{current_pet}!"
  counter += 1
end
```
##### Example 2: looping through a hash looking for certain values, outputing them into new hash.
```ruby
produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce_list)
  # get keys to track progression of loop in the hash
  produce_keys = produce_list.keys
  counter = 0
  selected_fruits = {}

  loop do
    break if counter == produce_keys.size
    current_key = produce_keys[counter]

    # retrieving value from the existing hash...
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      # build the new hash
      selected_fruits[current_key] = current_value 
    end
    counter += 1
  end
  selected_fruits
end

p select_fruit(produce)
```

-------

##### Important Methods (from Launch School's website)
<table>
<thead>
<tr>
<th>Method</th>
<th>Action</th>
<th>Considers the return value of the block?</th>
<th>Returns a new collection from the method?</th>
<th>Length of the returned collection</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>each</code></td>
<td>Iteration</td>
<td>No</td>
<td>No, it returns the original</td>
<td>Length of original</td>
</tr>
<tr>
<td><code>select</code></td>
<td>Selection</td>
<td>Yes, its truthiness</td>
<td>Yes</td>
<td>Length of original or less</td>
</tr>
<tr>
<td><code>map</code></td>
<td>Transformation</td>
<td>Yes</td>
<td>Yes, an array</td>
<td>Length of original</td>
</tr>
</tbody>
</table>

These methods each utilize the block's return value in their own way. In the case of `each`, the return value of the block is simply ignored. Before moving forward, it is crucial to understand how exactly these methods use the block's return value to perform their intended task.  
**Get to know:**  
* Whether the method takes a block  
* How it handles the block's return value  
* What the method itself returns  

--

##### More methods to know [(from the LS website)](https://launchschool.com/lessons/000a3b33/assignments/23955490):  
| Method  | important parts: |  
| :-----  | :---------------- |
| `Enumerable#any?`  | There are two return values that we need to be aware of here: the return value of the method and the return value of the block. `any?` looks at the truthiness of the block's return value in order to determine what the method's return value will be. If the block returns a "truthy" value for any element in the collection, then the method will return `true`.  |
| `Enumerable#all?`  | `all?` is essentially the opposite of `any?`. It also looks at the truthiness of the block's return value, but the method only returns `true` if the block's return value in every iteration is truthy (that is, not `false` or `nil`).  |
| `Enumerable#each_with_index`  | `each_with_index` is nearly identical to `each`. While both methods take a block and execute the code within the block, the block's return value is ignored. Unlike `each`, `each_with_index` takes a second argument which represents the index of each element.  |
| `Enumerable#each_with_object`  | Besides taking a block like the methods above, `each_with_object` takes a method argument. The method argument is a collection object that will be returned by the method. On top of that, the block takes 2 arguments of its own. The first block argument represents the current element and the second block argument represents the collection object that was passed in as an argument to the method. Once it's done iterating, the method returns the collection object that was passed in.  |
| `Enumerable#first`  | `first` doesn't take a block, but it does take an optional argument which represents the number of elements to return. When no argument is given, it returns only the first element in the collection. Rearely used with hash. |
| `Enumerable#include?`  | `include?` doesn't take a block, but it does require one argument. It returns `true` if the argument exists in the collection and `false` if it doesn't.  |
| `Enumerable#partition?`  | `partition` divides up elements in the current collection into two collections, depending on the block's return value.  |

--  

##### Sorting  
Sorting is _comparing_ items in a collection with each other and ordering them based on that comparison. _Comparison is the heart of how sorting works_.  
* Sorting is mostly used on arrays
* `sort` and `sort_by` are more commonly used - they return arrays
* Any object in a collection we want to sort **must** implement a `<=>` method.  
* The _spaceship_ method `<=>` performs comparison between two objects of the same type and returns a `-1`, `0`, or a `1` depending on whether the first object is less than, equal to, or greater than the second object; if the two objects cannot be compared then `nil` is returned.
* Determining the order of a character is determined by ASCII. The way to find order of a character is to use `.ord`  

##### Other methods that use comparison
* `min`
* `max`
* `minmax`
* `min_by`
* `max_by`
* `minmax_by`

##### Methods, more methods and sorting
Review these exercises:  
1. Value of [`select`](https://launchschool.com/lessons/000a3b33/assignments/0f8ce8de)  
3. Value of [`reject`](https://launchschool.com/lessons/000a3b33/assignments/0f8ce8de)  
4. Value of [`each_with_object`](https://launchschool.com/lessons/000a3b33/assignments/0f8ce8de)  
6. Value of [statement return](https://launchschool.com/lessons/000a3b33/assignments/0f8ce8de)  
7.Value of [`odd?`](https://launchschool.com/lessons/000a3b33/assignments/0f8ce8de)  
10. [Method return](https://launchschool.com/lessons/000a3b33/assignments/0f8ce8de)  