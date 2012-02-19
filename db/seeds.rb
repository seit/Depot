# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

Product.delete_all
#-------
Product.create(:titles=> 'Programing Ruby 1.0',
  :description=>
    'Ruby is the fastest growing and nost exciting dynamic language put there. IF you need to get working programs delivered fast, you should add Ruby to your toolbox.',
  :image_url=> 'ruby.jpg',
  :price=> 49.95)
#--------
