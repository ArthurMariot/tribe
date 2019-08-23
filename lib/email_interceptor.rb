class EmailInterceptor
  def self.delivering_email(message)
    message.subject = "#{message.to} #{message.subject}"
    message.to = ['uguen.edouard@gmail.com']
  end
end
