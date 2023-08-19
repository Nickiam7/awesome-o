# frozen_string_literal: true

module Tooltip
  class TooltipComponent < ViewComponent::Base

    def initialize(**options)
      @placement = options[:placement] || 'top'
      @message = options[:message]
      @classes = options[:classes]
      @icon = options[:icon] || 'bi-question-circle'
    end

    def call
      content_tag(:i,
        content_tag(:span,
          @message,
          class: 'visually-hidden'
        ),
        class: "bi #{@icon} #{@classes}".strip,
        data: {
          'bs-toggle': 'tooltip',
          'bs-placement': @placement,
          'bs-title': @message
        }
      )
    end
  end
end
