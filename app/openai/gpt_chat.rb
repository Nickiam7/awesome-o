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
end
