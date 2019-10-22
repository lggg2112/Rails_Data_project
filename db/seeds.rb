# frozen_string_literal: true

ActiveRecord::Base.connection.disable_referential_integrity do
  Appointment.destroy_all
  Publisher.destroy_all
  Author.destroy_all
  Book.destroy_all
  Employee.destroy_all
end

number_of_publisher = rand(10..25)

number_of_publisher.times do
  publisher = Publisher.create(
    name: Faker::Book.unique.publisher,
    address: Faker::Address.unique.full_address,
    email: Faker::Internet.unique.email,
    phonenumber: Faker::PhoneNumber.unique.phone_number
  )
  number_of_authors = rand(1..15)
  number_of_employees = rand(1..4)

  number_of_employees.times do
    publisher.employees.build(
      name: Faker::Name.unique.name,
      address: Faker::Address.unique.full_address,
      email: Faker::Internet.unique.email,
      phonenumber: Faker::PhoneNumber.unique.phone_number,
      position: Faker::Job.position
    ).save
  end

  number_of_authors.times do
    publisher.authors.build(
      name: Faker::Book.unique.author,
      address: Faker::Address.unique.full_address,
      email: Faker::Internet.unique.email,
      phonenumber: Faker::PhoneNumber.unique.phone_number,
      nationality: Faker::Nation.nationality
    ).save
  end
end

rand(10..20).times do
  a = Author.order('random()').first
  e = Employee.order('random()').first
  shcedule = Faker::Time.forward(days: rand(1..60), period: :morning)
  Appointment.create(author: a, employee: e, shcedule: shcedule)
end

Page.create(title: 'About Us', content: 'Please fill this in.', permalink: 'about_us')
Page.create(title: 'Frequently Asked Questions', content: 'Please fill this in.', permalink: 'faq')

puts "Generated #{Publisher.count} Publishers."
puts "Generated #{Author.count} Authors."
puts "Generated #{Employee.count} Employees."
puts "Generated #{Appointment.count} appointments."
