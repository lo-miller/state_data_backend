# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

state_csv_text = File.read(Rails.root.join('lib','seeds','state_data.csv'))
csv = CSV.parse(state_csv_text, :headers => true, :encoding => 'ISO-8859-1')
# State.all.delete
csv.each do |row|
  state = State.new
  state.name = row['state']
  state.abbreviation = row['']
  state.median_household_income = row['median_household_income']
  state.percentage_unemployment = row['share_unemployed_seasonal']
  state.percentage_metro = row['share_population_in_metro_areas']
  state.percentage_degree = row['share_population_with_high_school_degree']
  state.save
end


# t.string "name"
# t.string "abbreviation"
# t.integer "median_household_income"
# t.float "percentage_unemployment"
# t.float "percentage_metro"
# t.float "percentage_degree"

# state,median_household_income,share_unemployed_seasonal,share_population_in_metro_areas,share_population_with_high_school_degree

# abb_csv_text = File.read(Rails.root.join('lib','seeds','abbreviations.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# puts abb_csv_text