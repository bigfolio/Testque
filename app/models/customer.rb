class Customer < ActiveRecord::Base
    
  def queue_email
    logger.info self
    Resque.enqueue(CustomerEmailWorker, self.id)
  end
  
end
