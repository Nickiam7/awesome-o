#frozen_string_literal: true

module Tooltip
  module TooltipHelper
    def tooltip(**options)
      render(Tooltip::TooltipComponent.new(**options))
    end
  end
end
