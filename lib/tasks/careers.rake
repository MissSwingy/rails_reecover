require 'csv'

namespace :career do
  desc "Create career profiles"
  task populate: :environment do
    puts "Hello from my rake task"

    csv_options = { col_sep: ';', headers: :first_row, encoding: "utf-8" }
    filepath = 'metiers.csv'
    CSV.foreach(filepath, csv_options) do |row|
      # p row

      # p "#{row['metier']} | #{row['personnalite']}"
      p Career.create(title: "#{row['metier']}", category: "#{row['personnalite']}")
    end

    # => TODO
  end
end
