require_relative "task_time/version"
require_relative "task_time/helpers"
require "gli"
require "rtasklib"

module TaskTime
  DEFAULTS = {
    task_data: "#{Dir.home}/.task"
  }

  class TT
    attr_accessor :config

    def initialize config
      @config = Helpers.read_config(config)
      @tw = Rtasklib::TW.new
    end
  end
end
