require_relative "task_time/version"
require_relative "task_time/helpers"
require "gli"
require "rtasklib"

module TaskTime

  class TaskTime
    attr_accessor :config, :tw

    DEFAULTS = { task_data: "#{Dir.home}/.task" }

    UDAS = [ "timestamps", "time-spent", "time-est",
             "time-prog", "progress", "client" ]

    def initialize config
      @config = Helpers.read_config(config)
      @tw = Rtasklib::TW.new(config["data_location"])
      # puts tw.all
      check_udas
    end

    def check_udas req_udas=UDAS
      puts tw.get_udas
    end
  end

  TT = TaskTime
end
