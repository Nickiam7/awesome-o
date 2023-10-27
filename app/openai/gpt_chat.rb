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
            role: "user",
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
    begin
    response = openai_client.chat(
      parameters: {
        model: 'gpt-3.5-turbo',
        n: 1,
        temperature: 0,
        messages: [
          {
            role: 'system',
            content: 'You are a talented content creator that can come up with new great content based off provided text.'
          },
          {
            role: 'user',
            content: "Please write more content for the following text #{params[:text]}."
          }
        ]
      }
    )
    rescue => e
      "Awesome-o encountered an error. Please try again."
    end
  end
end
