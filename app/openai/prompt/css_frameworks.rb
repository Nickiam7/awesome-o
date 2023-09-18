module Prompt::CssFrameworks
  BOOTSTRAP = 'Please format this post using the Bootstrap css framework. Documentation can be found here: https://getbootstrap.com/docs/5.3/getting-started/introduction/'
  TAILWIND = 'Please format this post using the Tailwind CSS framework. Documentation can be found here: https://tailwindcss.com/docs/installation'
  BULMA = 'Please format this post using the Bulma CSS framework syntax. Documentation can be found here: https://bulma.io/documentation/'
  FOUNDATION = 'Please format this post using the Foundation css framework. Documentation can be found here: https://get.foundation/sites/docs/'
  NO_EXTERNAL_LINKS = 'Please do not include any links to external CDNs. Please just use the required mark up.'

  class << self
    def bootstrap_5
      "#{BOOTSTRAP} version 5.3.4 Thanks! #{NO_EXTERNAL_LINKS}"
    end

    def bootstrap_4
      "#{BOOTSTRAP} version 4.6 Thanks! #{NO_EXTERNAL_LINKS}"
    end

    def tailwind_3
      "#{TAILWIND} version 3.3.3 Thanks! #{NO_EXTERNAL_LINKS}"
    end

    def tailwind_2
      "#{TAILWIND} version 2.2.19 Thanks! #{NO_EXTERNAL_LINKS}"
    end

    def tailwind_1
      "#{TAILWIND} version 1.9.6 Thanks! #{NO_EXTERNAL_LINKS}"
    end

    def tailwind_0
      "#{TAILWIND} version 0.7.4 Thanks! #{NO_EXTERNAL_LINKS}"
    end

    def bulma_0
      "#{BULMA} version 0.9.4 Thanks! #{NO_EXTERNAL_LINKS}"
    end

    def foundation_6
      "#{FOUNDATION} version 6.8.1 Thanks! #{NO_EXTERNAL_LINKS}"
    end

    def foundation_5
      "#{FOUNDATION} version 5 Thanks! #{NO_EXTERNAL_LINKS}"
    end
  end
end
