#frozen_string_literal: true

module FormContainer
  module FormContainerHelper
    def form_container(**options)
      render(FormContainer::FormContainerComponent.new(**options)) do
        yield
      end
    end
  end
end
