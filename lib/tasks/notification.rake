namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do  	
     #if Time.now.thursday?
      employees = Employee.all  
      notification_message = "Please log in to the overtime management dashboard to request overtime or confirm you hours for last week: overtime-11856.herokuapp.com"
      employees.each do |employee|
        AuditLog.create!(user_id: employee.id)
        SmsTool.send_sms(number:employee.phone, message: notification_message)
      #end
    end
  end

  desc "Sends mail notification to managers (admin users) each day to inform of pending overtime requests"
  task manager: :environment do
    # 1. Iterate over the list of pending overtime requests
    # 2. Check to see if there are any requests
    # 3. Iterate Over the list of admin users/manager
    # 4. Sed the email to each Admin.
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
      end
    end
  end    

end