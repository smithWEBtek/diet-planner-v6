namespace :db do
  desc 'heroku pg:reset, migrate, seed'
  task hdcms: :environment do
    exec('heroku pg:reset --app diet-planner-v6 --confirm diet-planner-v6
      heroku run rake db:migrate --app diet-planner-v6
      heroku run rake db:seed --app diet-planner-v6')	
  end
end
