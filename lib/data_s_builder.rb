# frozen_string_literal: true

module DataSBuilder
  POSTGRES_DEFAULT = "18"
  REDIS_DEFAULT = "8.4"

  POSTGRES_VERSIONS = %w[17 18].freeze
  REDIS_VERSIONS = %w[8.2 8.4].freeze

  class << self
    def show_help
      puts "\nAvailable tasks:"
      puts "rake \"postgres:build[version]\"  # Images #{POSTGRES_VERSIONS.join('|')}"
      puts "rake \"redis:build[version]\"     # Images #{REDIS_VERSIONS.join('|')}"
      puts "rake \"postgres:build\"  # Default #{POSTGRES_DEFAULT}"
      puts "rake \"redis:build\"     # Default #{REDIS_DEFAULT}"
      puts "\nExamples:"
      puts "rake \"postgres:build[#{POSTGRES_DEFAULT}]\""
      puts "rake \"redis:build[#{REDIS_DEFAULT}]\""
      puts ""
    end

    def build_postgres(version = nil)
      version ||= POSTGRES_DEFAULT

      unless POSTGRES_VERSIONS.include?(version)
        puts "Error: Invalid postgres version '#{version}'. Use #{POSTGRES_VERSIONS.join(' or ')}."
        exit 1
      end

      dir = "docker/postgres/#{version}"
      tag = "data-s-postgres-#{version}"

      puts "Building postgres #{version}..."
      system("cd #{dir} && nerdctl build -t #{tag} .")
    end

    def build_redis(version = nil)
      version ||= REDIS_DEFAULT

      unless REDIS_VERSIONS.include?(version)
        puts "Error: Invalid redis version '#{version}'. Use #{REDIS_VERSIONS.join(' or ')}."
        exit 1
      end

      dir = "docker/redis/#{version}"
      tag = "data-s-redis-#{version.gsub('.', '')}"

      puts "Building redis #{version}..."
      system("cd #{dir} && nerdctl build -t #{tag} .")
    end
  end
end
