# frozen_string_literal: true

require_relative "my_console/version"

module MyConsole
  class Error < StandardError; end

  def console_log(*args)
    begin
      print "\n=========================================\n"
      formatted_args = args.map { |arg| arg.is_a?(String) ? "#{arg}" : arg }
      puts "\e[33;44m#{formatted_args.join(' ')}\e[0m"
      print "=========================================\n"
    rescue => e
      puts "Error: #{e}"
    end
  end
end

class Object
  include MyConsole
end
