module Prompt::Templates
  class << self
    def beginners_guide
      beginner_guide_post = <<-HERE
      Please follow the format outlined below when creating this blog post.

      Please start the post off with a introduction of the topic to be covered. Please remember you are addressing complete beginners, so be kind and reassuring in your introduction. You could briefly address common fears, worries, or questions readers may have.

      Please include a "What Is" section directly after the introduction section. Please explanin the key concept in beginner-friendly terms. Please provide definitions to key terms.

      After the "What Is" section please begin the main section of the post. Please break this sections into subsections and include subheadings for each subsection.

      Please provide a conclusion section as the final section of the post. Please using encouraging lanugage to motivate readers to try the topic in this post. If applicable, please provide resources to further learnings about this topic. These resources can include links to web pages, books, organizations or anything else.
      HERE
    end
  end
end
