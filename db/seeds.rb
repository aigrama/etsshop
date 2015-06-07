# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.delete_all
Category.create! id: 0, name: "All"
Category.create! id: 1, name: "Fruits"
Category.create! id: 2, name: "Vegetables"

Product.delete_all()
Product.new( id: 1, name: "Banana", price: 0.49, active: true , categories_id:1).save(validate:false)
Product.new( id: 2, name: "Apple", price: 0.29, active: true, categories_id:1).save(validate:false)
Product.new( id: 3, name: "Lettuce", price: 1.99, active: true, categories_id:2).save(validate:false)



OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"