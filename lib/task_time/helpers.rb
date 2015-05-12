require 'yaml'

module TaskTime
  
  module Helpers
    # make this module a stateless, singleton
    extend self

    # Read a configuration file into a hash and merge it with a default hash
    def read_config file_path, defaults=TaskTime::DEFAULTS
      if File.exists? file_path
        config = YAML.load_file(file_path)
        defaults = defaults.merge(config)
      end
      defaults
    end
  end
end
