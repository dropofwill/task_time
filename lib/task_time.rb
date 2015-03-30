require_relative "task_time/version"
require "thor"

module TaskTime

  class CLI < Thor

    desc "start", "Start a timer on the specified task"
    def start(filter)
    end

    desc "stop", "Stop the timer on the specified task"
    def stop(filter)
    end

    desc "toggle", ""
    def toggle(filter)
    end

    desc "edit", ""
    def edit(filter)
    end

    desc "modify", ""
    def modify(filter)
    end

    desc "report", ""
    def report(filter)
    end

    desc "export", ""
    def export(filter, format)
    end

  end
end
