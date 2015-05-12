require_relative "task_time/version"
require "gli"

module TaskTime
  include GLI:App

  program_desc "An addon to TaskWarrior that allows time tracking and reporting"

  desc "start", "Start a timer on the specified task"
  command :start do |c|
    c.action do |glob, opts, args|
    end
  end

  desc "stop", "Stop the timer on the specified task"
  command :stop do |c|
    c.action do |glob, opts, args|
    end
  end

  desc "toggle", ""
  command :toggle do |c|
    c.action do |glob, opts, args|
    end
  end

  desc "edit", ""
  command :edit do |c|
    c.action do |glob, opts, args|
    end
  end

  desc "modify", ""
  command :modify do |c|
    c.action do |glob, opts, args|
    end
  end

  desc "report", ""
  command :report do |c|
    c.action do |glob, opts, args|
    end
  end

  desc "export", ""
  command :export do |c|
    c.action do |glob, opts, args|
    end
  end

end
