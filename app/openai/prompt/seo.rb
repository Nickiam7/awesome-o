#frozen_string_literal: true

module Prompt::Seo
  class << self

    def title(title_prompt)
      if title_prompt == 'true'
        'Please include an SEO-friendly title for this post.'
      else
        'Please do not generate a title for this post.'
      end
    end

    def keywords(keyword_list)
      unless keyword_list.empty?
        "Please optimize this post for the following keywords #{keyword_list} to ensure best Search Engine Results ranking in Google, Bing and any other popular search engine.\n"
      end
    end

    def template(template)
      templates[template.to_sym]
    end

    private

    def templates
      {
        beginners_guide: Prompt::Templates.beginners_guide,
        comparison: Prompt::Templates.comparison,
        definition: Prompt::Templates.definition,
        fact_checker: Prompt::Templates.fact_checker,
        how_to: Prompt::Templates.how_to,
        listicle: Prompt::Templates.listicle,
        product_review: Prompt::Templates.product_review,
      }
    end
  end
end
