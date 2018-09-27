module BanksApi
  class InspectableBuilder < Module
    def initialize(accessors)
      define_inspect(accessors)
      freeze
    end

    private

      def define_inspect(accessors)
        define_method(:inspect) do
          attributes_string = accessors.map do |accessor|
            "  #{accessor}: #{send(accessor).inspect}"
          end.join(",\n")

          "#<#{self.class.name}\n#{attributes_string}\n>"
        end
      end
  end
end
