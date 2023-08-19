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
            role: "user",
            content: params[:message]
          }
        ],
        temperature: params[:creativity].to_i
      }
    )
    rescue
    end
  end
end
