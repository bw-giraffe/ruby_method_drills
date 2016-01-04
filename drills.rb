#########################
#### USING ARGUMENTS ####
#########################
#say_hello
  # returns 'hello'
def say_hello
  return 'hello'
end

#echo
  # returns the input string
def echo(stringy)
    return stringy
end

#eddie_izzards_height
  # calculates Eddie Izzards height (67in)
  # and takes into account the height of his heel (default: 0in)
def eddie_izzards_height(heel_height = 0)
  standard_height = 67
  if(heel_height <= 0)
    return standard_height
  else 
    return heel_height + standard_height
  end
end

#how_many_args
  # accepts any number of arguments without complaint
  # returns the total number of arguments passed to the function
def how_many_args(*arguments)
  return arguments.size
end

#find_answer
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments
def find_answer(*keyword)
  if(keyword.empty?)
      return nil
  end
  keyword.each do | i |
     if(i.is_a?(Hash) == false)
         raise ArgumentError, "incorrect input"
    end
  end
  keyword[0].each do |mykey, val|
    if(mykey == :answer)
       return val
    end
  end    
return nil
end

##############################
#### MANIPULATING STRINGS ####
##############################
#first_char
  # returns the first letter of the word
  # lowercases the first letter of the word
def first_char(word)
  first_letter = word.each_char.first
  return first_letter.downcase
end

#polly_wanna
  # echoes the original word
  # repeats the original word 3 times
def polly_wanna(word, repeat = 1)
  sequence = ""
  if(repeat > 1)
    for i in 0..repeat
      sequence<<word<<" "
    end
      return sequence
  else
    return word
  end
end
#YOU CAN ONLY RETURN ONE THING AT A TIME!

#count_chars
  # returns the number of characters in a string
def count_chars(word)
    return word.size
end

#yell
  # convert the message to uppercase
  # adds an exclamation point to the end of the message
def yell(message)
  return message.upcase<<"!"
end

#to_telegram
  # replaces periods with ' STOP'
def to_telegram(stringy)
 stringy.gsub!(".", " STOP")
 return stringy
end


#spell_out
  # returns the input string, with characters seperated by dashes
  # converts the string to lowercase
def spell_out(word)
  if(word.length > 1)
    letters = word.split("")
    for i in 0..(letters.length-2)
        letters[i]<<"-"
    end
    return letters.join.downcase
  end
return word
end

#seperate
  # seperates characters with a custom seperator, when supplied with one
  # seperates characters with dashes (by default)
def seperate(word, separator = "-")
  if(word.length > 1)
    letters = word.split("")
    for i in 0..(letters.length-2)
        letters[i]<<separator
    end
    return letters.join.downcase
  end
return word
end


#croon
  # seperates word characters with dashes
  # preserves whitespace between words
def croon(words)
  letters = words.split("")
  if(letters.length > 1)
    for i in 0..(letters.length-2)
      if(letters[i] != " " && letters[i + 1] != " ")
        letters[i]<<"-"
        puts letters[i]
      end
    end
    return letters.join("")
  end
  return words
end

#palindrome_word?
  # determines whether a single word is a palindrome
  # ignores case
def palindrome_word?(word)
  if(word.downcase == word.reverse.downcase)
    return true
  else
    return false
  end
end

#palindrome_sentence?
  # determines whether a sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation
def palindrome_sentence?(sentence)
  split_sentence = sentence.gsub(/[!,:;.?]/, "").split(" ").join
  if(split_sentence.downcase == split_sentence.downcase.reverse)
    return true
  else
    return false
  end
end


#is_vowel
  # determines whether a given character is a vowel
  # ignores case
  # handles weird inputs gracefully
def is_vowel(string)
  if(string.class != String)
      raise ArgumentError, "incorrect input"
  end
  string = string.downcase.split("")
    for i in 0..string.length-1
      if(string[i] == "a" || string[i] == "e" || string[i] == "i" || string[i] == "u" || string[i] == "o")
        return true
      end
    end
 return false
end


#add_period
  # adds a period to the end of the sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present
def add_period(sentence)
    store_sent = sentence.split("")
    last_char = store_sent[-1]
    if(last_char =~ /[.!?]/)
        return sentence
    else
        return sentence<<"."
    end
end

###########################
#### LOOPS & ITERATORS ####
###########################
#count_spaces
  # counts the spaces in a string
def count_spaces(string)
  return string.scan(" ").length
end

#string_lengths
  # converts a list of strings to a list of string lengths
def string_lengths(strings)
  array = []
  strings.each do | a |
    array.push(a.length)
  end
return array
end

#remove_falsy_values
  # filters out falsy values from a list
def remove_falsy_values(values)
  return values.delete_if {| val | val == false || val == nil}
end

#exclude_last
  # removes the last item from an array
  # removes the last item from a string
def exclude_last(items)
  if(items.class == String)
    string_things = items.split("")
    string_things.pop
    return string_things.join
  end
  items.pop
  return items
end

#exclude_first
  # removes the first item from an array
  # removes the first character from a string
  # does not alter the original input (non-destructive)
def exclude_first(items)
  if(items.class == String)
    string_things = items.split("")
    string_things.shift
    return string_things.join
  end
  items.shift
  return items
end


#exclude_ends
  # removes the first and last items from an array
  # removes the first and last characters from a string
def exclude_ends(items)
  if(items.class == String)
    string_things = items.split("")
    string_things.pop
    string_things.shift
    return string_things.join
  end
  items.pop
  items.shift
  return items
end

#select_every_even
  # returns a list of even-indexed items

#select_every_odd
  # returns a list of odd-indexed items

#select_every_n
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1

#compile_agenda
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority ascending (low to high) by default
  # sort order can (optionally) be changed to priority descending
  # the bullet can (optionally) be changed to any symbol

##############################
#### MANIPULATING NUMBERS ####
##############################
#count_to
  # returns an array containing every integer from 0 to n
  # rounds off decimals

#is_integer?
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers

#is_prime?
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers

#primes_less_than
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number

#iterative_factorial
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates factorial



##############################
#### MANIPULATING OBJECTS ####
##############################
#character_count
  # counts how many times each character appears in a string
  # ignores case

#word_count
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z

#most_frequent_word
  # finds the word in a string that appears with the most frequency
