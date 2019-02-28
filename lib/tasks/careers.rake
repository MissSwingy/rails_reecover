require 'csv'

namespace :career do
  desc "Create career profiles"
  task populate: :environment do
    puts "Hello from my rake task"

    csv_options = { col_sep: ';', headers: :first_row, encoding: "utf-8" }
    filepath = 'metier-social.csv'
    CSV.foreach(filepath, csv_options) do |row|
      # p row

      p "#{row['metier']} | #{row['personnalite']}"
      careers1 = Career.create(title: "#{row['metier']}", category: "#{row['personnalite']}", personality_riasec_id: @personality_riasec)
      p careers1
    end

    # => TODO
  end
end

#  CSV.foreach(filepath) do |row|
 # #   # Here, row is an array of columns
 #    puts "#{row[0]} | #{row[1]}"
 #  end
