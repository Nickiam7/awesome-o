# frozen_string_literal: true

module PanelItem
  class PanelItemComponent < ViewComponent::Base
    def initialize(**options)
      @classes = options[:classes]
    end

    def call
      content_tag(:div,
        content,
        class: "bg-light rounded border p-1 shadow-sm text-center #{@classes}".strip
      )
    end
  end
end
