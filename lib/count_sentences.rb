require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    counter = 0
    self.split.each do |word|
      counter += 1 if word.include?(".") || word.include?("?") || word.include?("!")
    end
    counter
  end

end
