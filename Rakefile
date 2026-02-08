# frozen_string_literal: true

require "rake"

desc "Show available tasks"
task :default do
  puts "\nAvailable tasks:"
  puts "rake postgres:build[version]  # Build postgres image (17 or 18)"
  puts "rake redis:build[version]     # Build redis image (8.2 or 8.4)"
  puts "\nExamples:"
  puts "rake postgres:build[17]"
  puts "rake redis:build[8.4]"
  puts ""
end

namespace :postgres do
  desc "Build postgres Docker image"
  task :build, [:version] do |_t, args|
    version = args[:version] || "17"
    unless %w[17 18].include?(version)
      puts "Error: Invalid postgres version '#{version}'. Use 17 or 18."
      exit 1
    end

    dir = "docker/postgres/#{version}"
    tag = "data-s-postgres-#{version}"

    puts "Building postgres #{version}..."
    sh "cd #{dir} && nerdctl build -t #{tag} ."
  end
end

namespace :redis do
  desc "Build redis Docker image"
  task :build, [:version] do |_t, args|
    version = args[:version] || "8.4"
    unless %w[8.2 8.4].include?(version)
      puts "Error: Invalid redis version '#{version}'. Use 8.2 or 8.4."
      exit 1
    end

    dir = "docker/redis/#{version}"
    tag = "data-s-redis-#{version.gsub(".", "")}"

    puts "Building redis #{version}..."
    sh "cd #{dir} && nerdctl build -t #{tag} ."
  end
end
