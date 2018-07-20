# require "byebug"
module ActiveSupport
  module Dependencies
    extend self

    attr_accessor :autoload_paths
    self.autoload_paths = []

    def search_for_file(name)
      # byebug
      autoload_paths.each do |path|
        file = File.join(path, "#{name}.rb")
        if File.file? file
          return file
        end
      end
      nil
    end
  end
end
