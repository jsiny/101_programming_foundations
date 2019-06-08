# Introduction to PEDAC

## 3. Data Structure / Algorithm

**The problem:**

Given a string, write a method `palindrome_substrings` which returns
all the substrings from a given string which are palindromes. Consider
palindrome words case sensitive

**Test cases:**

```ruby
palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
palindrome_substrings("palindrome") == []
palindrome_substrings("") == []
```

**Understanding the problem:**

* Input: string
* Output: an array of strings (different object)
* Rules:
  * Explicit requirements:
    * Every palindrom substring should be added to the results array
    * Palindroms are case sensitive ('abbA' is not a palindrom)
    * If no palindroms, return an empty array
    * If empty string, return an empty array
  * Implicit requirements:
    * The returned array shouldn't be the same string object
* Questions:
  * Will inputs always be strings?