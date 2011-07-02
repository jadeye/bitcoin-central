class Admin::UsersController < Admin::AdminController
  active_scaffold :user do |config|
    config.actions.exclude :create
    
    config.columns = [
      :id,
      :account,
      :email,
      :admin,
      :require_otp,
      :time_zone,
      :last_address,
      :confirmation_sent_at,
      :confirmed_at,
      :current_sign_in_at,
      :current_sign_in_ip,
      :failed_attempts,
      :last_sign_in_at,
      :last_sign_in_ip,
      :locked_at,
      :remember_created_at,
      :transfers,
      :merchant
    ]
    
    config.list.columns = [
      :id,
      :account,
      :email,
      :admin,
      :require_otp,
      :merchant
    ]
      
    config.update.columns = [
      :account,
      :email,
      :admin,
      :require_otp,
      :merchant
    ]
    
    config.show.columns = [
      :id,
      :account,
      :email,
      :admin,
      :require_otp,
      :merchant,
      :time_zone,
      :last_address,
      :confirmation_sent_at,
      :confirmed_at,
      :current_sign_in_at,
      :current_sign_in_ip,
      :failed_attempts,
      :last_sign_in_at,
      :last_sign_in_ip,
      :locked_at
    ]
    
    
    config.columns[:merchant].inplace_edit = true
    config.columns[:require_otp].inplace_edit = true
    
    config.search.columns << :id
    
    config.nested.add_link :transfers
  end
end
