# Fork this repository to your personal account and
# clone that fork to your machine.
# 
# Answer each of the questions below, adding comments
# beneath them as appropriate.

# 1. Read this file. What do you expect it to do when
# #    you run it?
# I expect the text fromt he file to be read and then it will get stored into the 
# variable text.  
# A new hash named cs is created.
# it will check for each of the chars in the variable text 
# if the char is in the hash it will add one to the value for that key in the hash
# otherwise it sets the key for the value to 1

# it sets the var ac to the value from the hash for key :a
# it sets the var zc to the value from the has for the key :z

# Then it prints a state letting the user know  how many a's and how many z's there are 

# 2. Now run it. Are there any bugs?
# Not printing  the numbers of occurances because it has symbol of letter instead of string

# 3. Can you make any improvements to the program?
# some improvements made inline including better var names, including += for incrimenting?
# as well as putting the code into a function so it can be used multiple times

# 4. How many Q's are there in "prufrock.txt"?
# There are 5 Q's

# 5. (Harder) What are the 5 most common letters in "prufrock.txt"?
e, t, a, o, n
# When you're done (at least with 4), commit your work,
# push it to your repo, and open a pull request.

require 'pry'

text1 = File.read "fox.txt"

def letter_counter text
	text = text.gsub(" ", "")
	letter_count = Hash.new
	text.chars.each do |letter|
	  if letter_count[letter]
	    letter_count[letter] += 1
	  else
	    letter_count[letter] = 1
	  end
	end
	return letter_count
end

text1_counted = letter_counter (text1)

a_count = text1_counted["a"]
z_count = text1_counted["z"]

#puts "Text is: #{text}"
puts "There are #{a_count} A's and #{z_count} Z's in fox.txt"

text2 = File.read "prufrock.txt"
text2_counted = letter_counter (text2)
q_count = text2_counted["q"]

puts "There are #{q_count} Q's in prufrock.txt"

puts text2_counted

puts text2_counted.sort_by{|k,v| v}.reverse.first(5)

