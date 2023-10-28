#frozen_string_literal: true

class GptChat < OpenaiApplication
  def chat(params = {})
    begin
    response = openai_client.chat(
      parameters: {
        model: params[:model],
        n: params[:variations].to_i,
        messages: [
          {
            role: 'system',
            content: 'You are a talented SEO-friendly blog post generator'
          },
          {
            role: 'user',
            content: "#{params[:message]}\n
                      #{Prompt::General.tone(params[:tone])}\n
                      #{Prompt::General.word_count(params[:min_count], params[:max_count])}\n
                      #{Prompt::Formatting.formatting(params[:formatting])}\n
                      #{Prompt::Formatting.css_framework(params[:css_framework])}\n
                      #{Prompt::Seo.template(params[:template])}\n
                      #{Prompt::Seo.title(params[:generate_title])}\n
                      #{Prompt::Seo.keywords(params[:keywords])}\n"
          }
        ],
        temperature: params[:creativity].to_i
      }
    )
    rescue => e
      "Awesome-o encountered an error. Please try again."
    end
  end

  def rewrite(params = {})
    response = openai_client.chat(
      parameters: {
        model: 'gpt-3.5-turbo',
        n: 1,
        temperature: 0,
        messages: [
          {
            role: 'user',
            content: "Please rewrite the following text #{params[:content_rewrite]}. Please keep the overall message the same, but use different words and tone. Please be keep the word count as close as possible to the minimum word count of #{params[:min_count]} and the maximum word count of #{params[:max_count]}\n
            Please format this post using valid HTML syntax that ensures all Web Accessibility standards are met. Please use appropriate heading tags including h1 for titles and h2 for subsections and h3 through h6 as necssary. Also, please use 'p' tags for paragrah text. Please include any applicable aria attributes. Please exclude meta tags and title tags."
          }
        ]
      }
    )
  end
end
