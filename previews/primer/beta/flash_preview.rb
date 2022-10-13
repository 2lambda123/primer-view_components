# frozen_string_literal: true

module Primer
  module Beta
    # @label Flash
    class FlashPreview < ViewComponent::Preview
      # @label Default
      #
      # @param full toggle
      # @param spacious toggle
      # @param dismissible toggle
      # @param icon [Symbol] select [none, alert, check, info, people]
      # @param scheme [Symbol] select [default, info, warning, danger, success]
      # @param content text
      def default(full: false, spacious: false, dismissible: false, icon: :people, scheme: Primer::Beta::Flash::DEFAULT_SCHEME, content: "This is a flash message!")
        render(Primer::Beta::Flash.new(full: full, spacious: spacious, dismissible: dismissible, icon: icon == :none ? nil : icon, scheme: scheme)) { content }
      end

      # @label With action
      #
      # @param full toggle
      # @param spacious toggle
      # @param dismissible toggle
      # @param icon [Symbol] select [alert, check, info, people]
      # @param scheme [Symbol] select [default, warning, danger, success]
      # @param content text
      def with_action(full: false, spacious: false, dismissible: false, icon: :people, scheme: Primer::Beta::Flash::DEFAULT_SCHEME, content: "This is a flash message with an action!")
        render_with_template(locals: { full: full, spacious: spacious, dismissible: dismissible, icon: icon, scheme: scheme, content: content })
      end
    end
  end
end
