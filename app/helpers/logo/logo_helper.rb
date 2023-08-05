#frozen_string_literal: true

module Logo
  module LogoHelper
    def logo
      render(Logo::LogoComponent.new)
    end
  end
end
