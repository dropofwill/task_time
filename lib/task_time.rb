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
      # check_udas
    end

    def missing_udas req_udas=UDAS
      req_udas.reject { |uda| tw.uda_exists? uda }
    end
  end

  TT = TaskTime
end
