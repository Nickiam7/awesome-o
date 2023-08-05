#frozen_string_literal: true

class OpenaiApplication

  def openai_client
    OpenAI::Client.new(access_token: Rails.application.credentials.dig(:openai))
  end
end
