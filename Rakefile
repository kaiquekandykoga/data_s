# frozen_string_literal: true

require "rake"
require_relative "lib/data_s_builder"

desc "Show available tasks"
task :default do
  DataSBuilder.show_help
end

namespace :postgres do
  desc "Build postgres Docker image"
  task :build, [:version] do |_t, args|
    DataSBuilder.build_postgres(args[:version])
  end
end

namespace :redis do
  desc "Build redis Docker image"
  task :build, [:version] do |_t, args|
    DataSBuilder.build_redis(args[:version])
  end
end
