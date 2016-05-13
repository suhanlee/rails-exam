class HelloWorldJob < ActiveJob::Base
  queue_as :default

  def perform(message)
    logger.info 'start'
    sleep(2)
    logger.info message
    logger.info 'end'
  end
end
