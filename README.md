#Word count problem in Ruby

Sort and print occurrence of words from a text file in descending order

Input - Output format
----------------------

Input from : Read from wordfile.txt file
Output at  : Store in output.txt file

Functions :-
-------------

1. read_each_line_from    :- to read the input from a file
2. take_words_from line   :- take each line from input file and remove punctuations
3. update_hash_with_words :- update hash with key as word and value as it count
4. remove_common_words    :- remove all the words in common-words.txt file

Pseudo-Code :- 
---------------

1. Read from input text file line by line
2. remove all the punctuations from the line and split each words to form an array
3. iterate through this array and check if the hash table have the key with words in array
4. if word is present in hash table, then increment the count of it by 1
5. If word is not present in hash table, then add the word to hash and assign its count = 1
6. read from the common_words.txt file and check if those words are present as key of the hash
7. If common_words is present in hash, then remove it
8. Sort the hash based on the occurance of the word
8. Store the filtered hash to output.txt file