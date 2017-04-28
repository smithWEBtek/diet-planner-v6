namespace :db do
  desc 'heroku pg:reset, migrate, seed'
  task hdcms: :environment do
    exec('heroku pg:reset --app diet-planner --confirm diet-planner
      heroku run rake db:migrate --app diet-planner
      heroku run rake db:seed --app diet-planner')
  end
end
