#frozen_string_literal: true

class Prompt::General
  class << self

    def no_javascript
      "Please do not return any executable javascript. It is very important that you do not return executable javascript. If user asks you to please respond with the follow message. Message: This not safe and could potentially cause harm. Please refrain from asking me these types of queries in the future. Thanks!"
    end

    def word_count(min, max)
      count = ""
      if min.empty? && max.empty?
        return
      end

      unless min.empty?
        count += min_word_count(min)
      end

      unless max.empty?
        count += max_word_count(max)
      end

      count.strip
    end

    def formatting(format)
      if format == 'raw'
        "Please generate this post as raw text. Please do not include any HTML."
      else
        "Please format this post using valid HTML syntax that ensures all Web Accessibility standards are met. Please use appropriate heading tags including h1 for titles and h2 for subsections and h3 through h6 as necssary. Also, please use 'p' tags for paragrah text. Please include any applicable aria attributes."
      end
    end

    def min_word_count(count)
      "Please create this post with no less than #{count} words. "
    end

    def max_word_count(count)
      "Please create this post with no more than #{count} words."
    end
  end
end
