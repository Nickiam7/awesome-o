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

    def min_word_count(count)
      "Please create this post with no less than #{count} words. "
    end

    def max_word_count(count)
      "Please create this post with no more than #{count} words."
    end

    def tone(tone)
      tones[tone.to_sym]
    end

    private

    def tones
      {
        creative: Prompt::Tone.creative,
        casual: Prompt::Tone.casual,
        formal: Prompt::Tone.formal,
        humorous: Prompt::Tone.humorous,
        professional: Prompt::Tone.professional,
        inspirational: Prompt::Tone.inspirational,
        subdued: Prompt::Tone.subdued,
      }
    end
  end
end
