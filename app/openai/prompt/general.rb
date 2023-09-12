#frozen_string_literal: true

class Prompt::General
  class << self

    def word_count(min, max)
      if min.empty? && max.empty?
        return
      else
        "Please create this post with a word count between #{min} and #{max} number of words."
      end

      unless min.empty?
        min_word_count(min)
      end

      unless max.empty?
        max_word_count(max)
      end
    end

    def min_word_count(count)
      "Please create this post with at least #{count} words."
    end

    def max_word_count(count)
      "Please create this post no more than #{count} words."
    end
  end
end
