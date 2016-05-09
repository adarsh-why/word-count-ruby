@word_hash = Hash.new

def read_each_line_from_file
    File.open('wordfile.txt', 'r') do |file|  
        while line = file.gets  
            take_words_from line  
        end  
    end    
end

def take_words_from line
    words = line.gsub(/[^[:word:]\s]/, '').split(" ").map!{|word| word.downcase}
    update_hash_with words
end

def update_hash_with words
    words.each do |word|
        if @word_hash.has_key? word
            @word_hash[word] += 1
        else 
            @word_hash[word] = 1
        end
    end
end

def remove_common_words
    common_words = ''
    File.open('common-words.txt', 'r') do |file|  
        while line = file.gets  
            common_words = line.split(' ')  
        end  
    end

    common_words.each do |word|
        @word_hash.reject! {|key| key == word}
    end
end

read_each_line_from_file
remove_common_words
File.open('output.txt', 'w') do |file|   
    file.puts @word_hash.sort_by {|word, count| count}.reverse
end    
