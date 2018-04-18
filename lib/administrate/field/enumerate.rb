require 'administrate/field/base'
require 'enumerate_it'
require 'rails'

module Administrate
  module Field
    class Enumerate < Administrate::Field::Base
      def choices
        attribute.to_s.camelize.constantize.to_a
      end

      def to_s
        resource.public_send(attribute.to_s + "_humanize")
      end

      class Engine < ::Rails::Engine
      end
    end
  end
end
