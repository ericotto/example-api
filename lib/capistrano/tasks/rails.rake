namespace :rails do
  desc "Remote console"
  task :console do
    on roles(:app) do |h|
      command =  "RAILS_ENV=#{fetch(:rails_env)} bundle exec rails console"
      exec "ssh  #{h.user}@#{host} cd #{fetch(:deploy_to)}/current && #{command}"
    end
  end
end