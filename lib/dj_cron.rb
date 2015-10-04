require "dj_cron/version"
require "delayed_job"
require "active_record"

module DjCron
  class Enqueuer
    def initialize
      rails_env = ENV.fetch("RAILS_ENV", "development")
      raise "Database config not found at config/database.yml" unless File.exists?("config/database.yml")
      ActiveRecord::Base.establish_connection(YAML.load_file("config/database.yml")[rails_env])
      Delayed::Worker.backend = :active_record
    end

    def enqueue(classes)
      classes.each do |c|
        require "./app/jobs/#{c.underscore}"
        Delayed::Job.enqueue(Object.const_get(c).new)
      end
    end
  end
end
