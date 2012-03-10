desc "This task is called by the Heroku scheduler add-on"

task :update_customers => :environment do
    puts "Updating customers ... "
    Customer.all.each do |customer|
      customer.update_attribute(:updated_at, Time.now)
    end
    puts "done."
end
