class Wordcount

  def split_into_words(sentence)
    sentence.split(' ')
  end

  def count_words(sentence)
    words = {}
    split_into_words(sentence).each do |i|
      if (words.key?(i))
        words[i] += 1
      else
        words[i] = 1
      end
    end
    words
  end
end
