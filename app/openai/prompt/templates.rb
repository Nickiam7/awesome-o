module Prompt::Templates
  PROMPT_INTRO = "Please follow the format outlined below when creating this blog post."

  class << self
    def beginners_guide
      beginner_guide_prompt = <<-HERE
      #{PROMPT_INTRO}

      Please start this beginners guide post off with a introduction of the topic to be covered. Please remember you are addressing complete beginners, so be kind and reassuring in your introduction. You could briefly address common fears, worries, or questions readers may have.

      Please include a "What Is" section directly after the introduction section. Please explanin the key concept in beginner-friendly terms. Please provide definitions to key terms.

      After the "What Is" section please begin the main section of the post. Please break this sections into subsections and include subheadings for each subsection.

      Please provide a conclusion section as the final section of the post. Please using encouraging lanugage to motivate readers to try the topic in this post. If applicable, please provide resources to further learnings about this topic. These resources can include links to web pages, books, organizations or anything else.
      HERE
    end

    def product_review
      product_review_prompt = <<-HERE
      #{PROMPT_INTRO}

      If the review type is a positive review please use an exciting tone and uplifiting phrases.
      If the review type is a negative review please use a somber tone and phrases.

      Please start this product review post off with an introduction including a clear description of the product. Please be sure to explain exactly what the product is. If there are multiple versions of the product, clarify exactly which product is being reviewed.

      After the introduction, please include the main section. Please provide an overview of the product including the price, what exactly is good about the product and what exactly is bad about the product.

      For the final section pleaes include a conclusion. Please provide a recap of the product and overall likes and dislikes of the product.

      Please provide any applicable links for the product inlcuding more reviews or places where the product can purchased online or in a store.
      HERE
    end
  end
end
