#frozen_string_literal: true

class GptChat < OpenaiApplication
  def chat(params = {})
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
                      #{Prompt::General.word_count(params[:min_count], params[:max_count])}\n
                      #{Prompt::Seo.title(params[:generate_title])}\n
                      #{Prompt::Seo.keywords(params[:keywords])}\n
                      #{Prompt::Seo.template(params[:template])}\n"
          }
        ],
        temperature: params[:creativity].to_i
      }
    )
  end
end
