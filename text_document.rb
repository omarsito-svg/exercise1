class  TextDocument
attr_reader :title, :body, :words_total

  def initialize(title, body)
    @title = title
    @body = body
    calculate_words_total
    calculate_words_list	
  end
 def print_words_list
    @words_list.each do |word, count|
      puts "#{word}: #{count} occurrences"
    end
  end

private

  def calculate_words_total
    words = @body.split(/\s+/)
    @words_total = words.length
  end
  def calculate_words_list
    words = @body.downcase.split(/\W+/)

    words.each do |word|
      if @words_list.key?(word)
        @words_list[word] += 1
      else
        @words_list[word] = 1
      end
    end
  end
end





