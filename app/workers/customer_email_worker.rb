class CustomerEmailWorker
  @queue = :email_queue
  def self.perform(model_id)
    c = Customer.find(model_id)
    new_email = c.email[0..5] + "*****"
    c.update_attribute(:email, new_email)
    # Here you have to add the code, that you are going to assign to this worker
    # Most probably it is something from one of your controllers, that does API calls or stuff like that
  end
end