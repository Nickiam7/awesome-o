#frozen_string_literal: true

module Prompt::Tone
  class << self

    def creative
      "Please create this post using a creative tone or style  of writing that goes outside the bounds of normal professional, journalistic, academic, or technical forms of literature. Please ensure an emphasis on narrative craft, character development, and the use of literary tropes and include various traditions of poetry and poetics."
    end

    def casual
      "Please create this post using a casual tone and style of writing. Please use a style similar to a spoken conversation. Please include slang, figures of speech, broken syntax, or asides. Feel free to use a personal tone as if speaking directly to the readers of this post."
    end

    def formal
      "Please create this post using a formal tone and style of writing. Please ensure more complex sentence structures, infrequent use of personal pronouns, and lack of colloquial or slang terms. Please use a serious tone, long words, professional and polite writing approach."
    end

    def humorous
      "Please create this post using a humorous tone and style of writing. Please include a wide range of humor styles including Satire, Situational humor, Overstatement and even Dark humor. Please do not call out each style of humor specifically. Apply it naturally to the content of the post."
    end

    def professional
      "Please create this post using a humorous tone and style of writing. Please include a wide range of humor styles including Satire, Situational humor, Overstatement and even Dark humor."
    end

    def inspirational
      "Please create this post using an inspirational tone and style of writing. Please demonstrate a strong sense empathy in how readers might feel. Please provide positive and uplifting hope in overcoming struggles or achieving goals."
    end

    def subdued
      "Please create this post using an subdued tone and style of writing. Please use a quiet and rather reflective or depressed. Please avoid humor, slang, figures of speech, broken syntax, or asides. Please be very direct."
    end
  end
end
