module Prompt::Templates
  PROMPT_INTRO = "Please follow the format outlined below when creating this blog post."

  class << self
    def beginners_guide
      beginner_guide_prompt = <<-HERE
      #{PROMPT_INTRO}

      Please start this Beginners Guide post off with a introduction of the topic to be covered. Please remember you are addressing complete beginners, so be kind and reassuring in your introduction. You could briefly address common fears, worries, or questions readers may have.

      Please include a "What Is" section directly after the introduction section. Please explanin the key concept in beginner-friendly terms. Please provide definitions to key terms.

      After the "What Is" section please begin the main section of the post. Please break this sections into subsections and include subheadings for each subsection.

      Please provide a conclusion section as the final section of the post. Please using encouraging lanugage to motivate readers to try the topic in this post. If applicable, please provide resources to further learnings about this topic. These resources can include links to web pages, books, organizations or anything else.
      HERE
    end

    def comparison
      comparison_prompt = <<-HERE
      #{PROMPT_INTRO}

      Please start this Comparison post with an "Introduction" section that explains what the two options are, briefly defining what they do or how they’re used.

      Please provide an "Overview" section directly after the introduction section that gives more details about each of the two options. Please break this section into subsections, with subheadings, one for each option.

      After the overview section, please create the "Comparison" section. Please provide comaprisons for each option. Please include relevant comparison criteria that has been provided and any other deemed appropriate.

      For the final section pleaes include a "Conclusion". Please provide a brief recap of each each option. Feel free to suggest which option appears to be the best.

      Please provide any applicable links for the one or both options inlcuding reviews of the options or places where the options can purchased online or in a store.
      HERE
    end

    def definition
      glossary_prompt = <<-HERE
      #{PROMPT_INTRO}

      Please start this Definition post with an "Introduction" section. Please provide a clear and straightforward definition of the term or terms if more than one is present. Also include a brief history and possible origins.

      After the introduction section please provide a "Definition" section that goes into more details about the term or terms. Please provide example uses. Please include any important notes or misconceptions.

      Please include a "Conclusions" section directly after the Definition section. In the conclusion please suggest similar terms that readers may be interested. Additionally please provide links to helpful resources.
      HERE
    end

    def fact_checker
      fact_checker_promt = <<-HERE
      #{PROMPT_INTRO}

      Please start this Fact Checker post with an "Introduction" section that provides a clear and detailed explanation of the the claim.

      Please include an "Origins" sectiond directly after the introduction section.

      After the origins section please include a "Rating" section with a clear and detailed reason why the claim is either true, false or has some truth to it. Please also provide why this claim may be a common misconception. Please be sure to clearly state whether the claim is true or false or has some truth to it, but may have been exagerated.

      Please include a "Conclusions" section directly after the ratings section. Please include any applicable references.
      HERE
    end

    def product_review
      product_review_prompt = <<-HERE
      #{PROMPT_INTRO}

      If the review type is a positive review please use an exciting tone and uplifiting phrases.
      If the review type is a negative review please use a somber tone and phrases.

      Please start this Product Review post off with an introduction including a clear description of the product. Please be sure to explain exactly what the product is. If there are multiple versions of the product, clarify exactly which product is being reviewed.

      After the introduction, please include the main section. Please provide an overview of the product including the price, what exactly is good about the product and what exactly is bad about the product.

      For the final section pleaes include a conclusion. Please provide a recap of the product and overall likes and dislikes of the product.

      Please provide any applicable links for the product inlcuding more reviews or places where the product can purchased online or in a store.
      HERE
    end

  end
end
