class ContentsController < ApplicationController
  before_action :authenticate_user!

  def new;end
  def blog;end
  def post_builder;end

  def gpt_chat
    chat_message = GptChat.new
    @results = chat_message.chat(chat_params)
  end

  private

  def chat_params
    {
      model: params[:model],
      message: params[:message].strip,
      creativity: params[:creativity],
      variations: params[:variations],
      keywords: params[:keywords].strip,
      generate_title: params[:generate_title],
      min_count: params[:min_count],
      max_count: params[:max_count],
      template: params[:template],
      formatting: params[:formatting],
      css_framework: params[:css_framework],
      tone: params[:tone],
    }
  end
end
