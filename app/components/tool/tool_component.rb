# frozen_string_literal: true

module Tool
  class ToolComponent < ViewComponent::Base
    def initialize(**options)
      @name = options[:name]
      @icon = options[:icon]
      @path = options[:path]
      @frame = options[:frame] || 'post-tools'
      @target = options[:target]
    end
  end
end
