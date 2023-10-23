#frozen_string_literal: true

module Tool
  module ToolHelper
    def tool(**options)
      render(Tool::ToolComponent.new(**options))
    end
  end
end
