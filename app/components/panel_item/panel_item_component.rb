# frozen_string_literal: true

module PanelItem
  class PanelItemComponent < ViewComponent::Base
    def initialize(**options)
      @classes = options[:classes]
      @id = options[:id]
    end

    def call
      content_tag(:div,
        content,
        id: id,
        class: "bg-light rounded border p-1 shadow-sm text-center #{@classes}".strip,
      )
    end

    private

    def id
      @id if @id
    end
  end
end
