class ContentsController < ApplicationController
  before_action :authenticate_user!

  def new;end
  def blog;end
  def auto_awesome;end

  def gpt_chat
    chat_message = GptChat.new
    @results = chat_message.chat(chat_params)
  end

  private

  def chat_params
    {
      model: params[:model],
      message: params[:message],
      creativity: params[:creativity],
      variations: params[:variations],
    }
  end
end
