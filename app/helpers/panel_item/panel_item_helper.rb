#frozen_string_literal: true

module PanelItem
  module PanelItemHelper
    def panel_item(**options)
      render(PanelItem::PanelItemComponent.new(**options)) do
        yield
      end
    end
  end
end
