require 'erb'
require 'pony'

module JiraToQbo
  class EmailReport
    def initialize(work_logs, opts = {})
      @data = work_logs
      opts.each { |k, v| instance_variable_set("@#{k}", v) }
    end

    def newline_replace(text)
      text.gsub("\n", '<br>').gsub("\r", '')
    end

    def send(opts = {})
      renderer = ERB.new(
        File.read(File.join(File.dirname(__FILE__), '../../resources/email_report.erb')),
        safe_level = nil,
        trim_mode = '-')

      email_body = renderer.result(binding)

      Pony.mail(
        subject: 'Activity report',
        body: email_body,
        to: opts[:rcpt],
        from: opts[:from],
        cc: opts[:cc],
        via: :smtp,
        via_options: {
          address: opts[:smtp_host],
          user_name: opts[:smtp_username],
          password: opts[:smtp_password],
          enable_starttls_auto: true
        })
    end
  end
end
