require_relative "task_time/version"
require_relative "task_time/helpers"
require "gli"
require "rtasklib"

module TaskTime
  DEFAULTS = {
    task_data: "#{Dir.home}/.task"
  }

  UDAS = [ "timestamps", "time-spent", "time-est",
           "time-prog", "progress", "client" ]

  class TT
    attr_accessor :config, :tw

    def initialize config
      @config = Helpers.read_config(config)
      @tw = Rtasklib::TW.new(config["data_location"])
      puts tw.all
    end
  end
end
