#frozen_string_literal: true

module Prompt::Formatting
  class << self
    def formatting(format)
      if format == 'raw'
        "Please generate this post as raw text. Please do not include any HTML."
      else
        "Please format this post using valid HTML syntax that ensures all Web Accessibility standards are met. Please use appropriate heading tags including h1 for titles and h2 for subsections and h3 through h6 as necssary. Also, please use 'p' tags for paragrah text. Please include any applicable aria attributes. Please exclude meta tags and title tags."
      end
    end

    def css_framework(framework)
      css_frameworks[framework.to_sym]
    end

    private

    def css_frameworks
      {
        bootstrap_5: Prompt::CssFrameworks.bootstrap_5,
        bootstrap_4: Prompt::CssFrameworks.bootstrap_4,
        tailwind_3: Prompt::CssFrameworks.tailwind_3,
        tailwind_2: Prompt::CssFrameworks.tailwind_2,
        tailwind_1: Prompt::CssFrameworks.tailwind_1,
        tailwind_0: Prompt::CssFrameworks.tailwind_0,
        bulma_0: Prompt::CssFrameworks.bulma_0,
        foundation_6: Prompt::CssFrameworks.foundation_6,
        foundation_5: Prompt::CssFrameworks.foundation_5,
      }
    end
  end


end
