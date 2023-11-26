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
            role: 'user',
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
    response = openai_client.chat(
      parameters: {
        model: 'gpt-4',
        n: 1,
        temperature: 0,
        messages: [
          {
            role: 'user',
            content: "Please rewrite the following text #{params[:content_rewrite]}. Please keep the overall message the same, but use different words and tone. Please be keep the word count as close as possible to the minimum word count of #{params[:min_count]} and the maximum word count of #{params[:max_count]}\n
            #{Prompt::Formatting.format_html}. Please exclude h1 tags"
          }
        ]
      }
    )
  end

  def paragraph(params = {})
    response = openai_client.chat(
      parameters: {
        model: 'gpt-4',
        n: 1,
        temperature: 0,
        messages: [
          {
            role: 'user',
            content: "Based off the provided text please create supporting or additional content.\n
            The supporting or additional content should flow naturally in the provided text.
            provided text: #{params[:content_pargraph]}.\n
            Please be keep the word count as close as possible to the minimum word count of #{params[:min_count]} and the maximum word count of #{params[:max_count]}\n
            #{Prompt::Formatting.format_html}. Please exclude h1 tags"
          }
        ]
      }
    )
  end

  def title(params = {})
    response = openai_client.chat(
      parameters: {
        model: 'gpt-4',
        n: 1,
        temperature: 1,
        messages: [
          {
            role: 'user',
            content: "Based off the provided text please create an SEO friendly title for a blog post.\n
            Only provide a blog post title. Please do generate any additional text or an actual blog post. Just a title.\n
            The title should be descriptive, engaging and relevant to the provided text.
            provided text: #{params[:content_title]}.\n
            #{Prompt::Formatting.format_html}. Please exclude h1 tags"
          }
        ]
      }
    )
  end

  def component(params = {})
    response = openai_client.chat(
      parameters: {
        model: 'gpt-4',
        n: 1,
        temperature: 0,
        messages: [
          role: 'user',
          content: "Please generate a #{params[:component_name]} using web standards compliant HTML.\n
          Please do NOT include any JavaScript or jQuery.\n
          Please do NOT include any links to third party CDNs.\n
          Please do NOT include any links to css files.\n
          Please do NOT include any inline css.\n
          Please do NOT include a <style> tag\n
          Please do NOT include a <link> tag\n
          Please do NOT include a <title> tag\n
          Please do NOT include a <meta> tag\n
          Please do NOT render or include any markdown.\n
          Please do NOT include markdown code backticks.\n
          Please do NOT include the following text ```html, ```.\n
          Please do NOT include an explanation of the code. Only provide the relevant HTML.\n
          Please do NOT include any explanation or any extra text at all. Only the necessary HTML to create the actual component.\n
          #{params[:css_framework].nil? ? '' : "Please format using the appropriate CSS selctor tags from the #{params[:css_framework]}CSS framework"}.
          "
        ]
      }
    )
  end
end
