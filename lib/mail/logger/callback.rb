class Mail::Logger::Callback
  def self.delivered_email(email)
    Mail::Logger.logger.info email.inspect
    Mail::Logger.logger.info email.body.raw_source
  end
end

require 'mail'
Mail.register_observer(Mail::Logger::Callback)
