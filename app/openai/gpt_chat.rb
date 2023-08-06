#frozen_string_literal: true

class GptChat < OpenaiApplication

  def chat(params = {})
    response = openai_client.chat(
      parameters: {
        model: params[:model],
        messages: [
          {
            role: "user",
            content: params[:message]
          }
        ],
        temperature: params[:temperature].to_i,
        n: 2
      }
    )
  end
end
