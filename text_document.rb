class  TextDocument
attr_reader :title, :body, :words_total

  def initialize(title, body)
    @title = title
    @body = body
    calculate_words_total
  end

private

  def calculate_words_total
    words = @body.split(/\s+/)
    @words_total = words.length
  end
end





