namespace :db do
	desc 'create default admin user'
	task :admin => :environment do
		AdminUser.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')
	end
end