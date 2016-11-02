# Solving small code problems  
* 20 - 45 minutes
* typical solutions: 10-40 LOC (lines of code)
* used extensively in interviews for a reason
  * mastery on a language
  * logic / reasoning
  * communication skill
* not a skill that you "aquire and file away", but needs a lot of practice

------------------  

### Understand the Problem (most important)
* __There are requirements that are explicit__
  * take notes - refigure in your own words, perhaps outline form
  * make sure all requirements are in your refiguring 
  * the odd words problem
* __requirements are not so explicit and need to be modeled__
  * requirements are showed with examples
    * examples need to be described in computational terms
    * for instance diamond of stars
  * __implicit (implied but not plainly expressed) knowledge needs to be captured__
    * convert to explicit rules, in computational language
  * __identify and define important terms and concepts__
    * [queen attack (maybe easy version?)](https://launchschool.com/exercises/81d3afa6)
* __ask questions to verify my understanding!__  
------------------------------------------  
#### Examples / Test Cases  
* __Input / output__
* __Test cases serve two purposes__:
  * help you understand the problem
  * allow you to verify your solution
* __Happy paths__
  * combination of requirements; the "obvious" results
* __Edge cases__
  * focus on input
  * emptiness (`nil/null, "", [], {}`)
  * boundary conditions 
  * repetition / duplication
  * upper case / lower case
  * data types
* __Failures / Bad Input__
  * raise exceptions / report errors
  * return a special value (`nil/null, "", [], {}`)
* ask questions to verify your understanding!

-----------------------------  
#### Understanding the Problem: breaking it down example
* __input__:
  * 1 - many words
  * separated by: 1, or many spaces
  * terminated by:
    * 0 - many spaces
    * followed by a point
  * chars: letter, space, point, up to 20 letters
  * need to handle failure?
* __output__:
  * words: have the ood words reversed
  * odd means odd number words, based on 0 index
  * separated by one space between words
  * terminated: 0 space, followed by a dot

#### Examples, test cases
```ruby
reverse_odd_words("hello.")              => "hello."
reverse_odd_words("hello .")             => "hello."
reverse_odd_words("hello world.")        => "hello dlrow."
reverse_odd_words("hello world .")       => "hello dlrow."
reverse_odd_words("hello  world .")      => "hello dlrow."
reverse_odd_words("hello  hello world.") => "hello olleh world."
reverse_odd_words("")                    => ""
```  
----------------------------
##### Another example

Given n = 3

```
 *
***
 *

  *
 ***
*****
 ***
  *
```
Understanding the problem - mental model
* __Input__: number
  * what happens when the number is 0?
  * what happens when the number is an even number?
* __Output__: 
  * returns a string with the new line char "`\n`" delimeters
  * prints on the screen
* __model the problem__
  * given an odd number `n`, for example, 5
  * output `n` strings
    * 1, 3, 5, 3, 1
    * prepend number of spaces: 2, 1, 0, 1, 2
  * join together with `\n`, or loop and print  

----------------------------
#### Another example
Write a function that takes an integer year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.  
New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.  
__Understanding the problem__
* __input__
  * integer
  * need to validate?
* __output__
  * a string
  * begins with the century number
  * ends with st, nd, rd, or th
* __rules__:
  * new centuries begin in years that end with 01
  * century string number into a string:
    * 1: st
    * 2: nd
    * 3: rd
    * 4-20: th
    * 21: st
    * 22: nd
    * 23: rd
    * 24-30: th
    * generalize
      * `century_number % 10`
      * 1, 2, 3: st, nd, rd
      * 0, 4-9: th
      * except for 11, 12, 13  
__Examples, / Test Cases__:
```ruby
century(1);           => '1st'
century(100);         => '1st'
century(133);         => '2nd'
century(245);         => '3rd'
century(1052);        => '11th'
century(1152);        => '12th'
century(2012);        => '21st'
century(2112);        => '22nd'
century(22512);        => '223rd'
```