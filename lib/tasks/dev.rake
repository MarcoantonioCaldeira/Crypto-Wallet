namespace :dev do
  desc "TODO"
  task setup: :environment do
    if Rails.env.development?
      spinner = TTY::Spinner.new("[:spinner] Executando tarefas ...", format: :pulse_2)
      spinner.auto_spin
      puts %x(rails db:drop db:create db:migrate db:seed)
      spinner.stop("Concluido com sucesso!!!")
    else
      puts "Voce não esta em amibiente de desenvolvimento"
    end
  end
end


