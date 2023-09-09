# frozen_string_literal: true

module FormContainer
  class FormContainerComponent < ViewComponent::Base
    def initialize(**options)
      @for = options[:for]
      @heading = options[:heading]
      @path = options[:path]
    end
  end
end
