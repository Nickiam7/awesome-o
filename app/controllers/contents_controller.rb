class ContentsController < ApplicationController
  def new;end

  def chat;end

  def gpt_chat
    chat_message = GptChat.new
    @results = chat_message.chat(chat_params)
  end

  private

  def chat_params
    {
      model: params[:model],
      message: params[:message],
      temperature: params[:temperature]
    }
  end
end
