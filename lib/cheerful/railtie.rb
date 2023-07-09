
# module Cheerful
#   class Railtie < Rails::Railtie
#     initializer "cheerful.custom_log_colors" do
#       config.after_initialize do
#         Rails.logger.formatter = proc do |severity, datetime, _progname, msg|
#           colorized_msg = case severity
#                           when "DEBUG"
#                             "\e[34m#{msg}\e[0m"  # Blue color for DEBUG level
#                           when "INFO"
#                             "\e[32m#{msg}\e[0m"  # Green color for INFO level
#                           when "WARN"
#                             "\e[33m#{msg}\e[0m"  # Yellow color for WARN level
#                           when "ERROR", "FATAL"
#                             "\e[31m#{msg}\e[0m"  # Red color for ERROR and FATAL levels
#                           else
#                             msg
#                           end

#           # Customize the color for specific log entries
#           if msg.include?("syntax error")
#             colorized_msg.gsub!("syntax error", "\e[35msyntax error\e[0m")  # Magenta color for "syntax error"
#           end

#           "#{datetime.strftime("%Y-%m-%d %H:%M:%S")} #{colorized_msg}\n"
#         end
#       end
#     end
#   end
# end

module Cheerful
  class Railtie < Rails::Railtie
    config.after_initialize do
      modify_logger_formatting
    end

    private

    def modify_logger_formatting
      logger = Logger.new(STDOUT)
      logger.formatter = proc do |severity, datetime, _progname, msg|
        colorized_msg = case severity
                        when "DEBUG"
                          "\e[34m#{msg}\e[0m"  # Blue color for DEBUG level
                        when "INFO"
                          "\e[32m#{msg}\e[0m"  # Green color for INFO level
                        when "WARN"
                          "\e[33m#{msg}\e[0m"  # Yellow color for WARN level
                        when "ERROR", "FATAL"
                          "\e[31m#{msg}\e[0m"  # Red color for ERROR and FATAL levels
                        else
                          msg
                        end

        # Customize the color for specific log entries
        if msg.include?("syntax error")
          colorized_msg.gsub!("syntax error", "\e[35msyntax error\e[0m")  # Magenta color for "syntax error"
        end

        "#{datetime.strftime("%Y-%m-%d %H:%M:%S")} #{colorized_msg}\n"
      end

      Rails.logger = logger
    end
  end
end

