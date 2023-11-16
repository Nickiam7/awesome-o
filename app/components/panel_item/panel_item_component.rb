# frozen_string_literal: true

module PanelItem
  class PanelItemComponent < ViewComponent::Base
    def initialize(**options)
      @classes = options[:classes]
      @id = options[:id]
      @data = options[:data_target]
    end

    def call
      content_tag(:div,
        content,
        id: id,
        data: data,
        class: "bg-light rounded border p-1 shadow-sm text-center #{@classes}".strip,
      )
    end

    private

    def id
      @id if @id
    end

    def data
      if @data
        {post_tools_target: @data}
      end
    end
  end
end
