class ContentsController < ApplicationController
  before_action :authenticate_user!

  def gpt_chat
    awesome_o = GptChat.new
    @results = awesome_o.chat(chat_params)
  end

  def gpt_rewrite
    awesome_o = GptChat.new
    @results = awesome_o.rewrite(content_params)
  end

  def gpt_paragraph
    awesome_o = GptChat.new
    @results = awesome_o.paragraph(paragraph_params)
  end

  def gpt_title
    awesome_o = GptChat.new
    @results = awesome_o.title(title_params)
  end

  def gpt_component
    awesome_o = GptChat.new
    @results = awesome_o.component(component_params)
  end

  def gpt_help
    awesome_o = GptChat.new
    @results = awesome_o.help(help_params)
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

  def content_params
    {
      content_rewrite: params[:content_rewrite],
      min_count: params[:min_count],
      max_count: params[:max_count],
    }
  end

  def paragraph_params
    {
      content_pargraph: params[:content_pargraph],
      content_source: params[:content_source],
      min_count: params[:min_count],
      max_count: params[:max_count],
    }
  end

  def title_params
    {
      content_title: params[:content_title],
      content_source: params[:content_source],
    }
  end

  def component_params
    {
      component_name: params[:component_name],
      content_source: params[:content_source],
    }
  end

  def help_params
    {}
  end
end
