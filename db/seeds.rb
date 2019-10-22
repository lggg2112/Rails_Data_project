# frozen_string_literal: true

ActiveRecord::Base.connection.disable_referential_integrity do
  Appointment.destroy_all
  Publisher.destroy_all
  Author.destroy_all
  Book.destroy_all
  Employee.destroy_all
end

number_of_publisher = rand(10..15)

number_of_publisher.times do
  publisher = Publisher.create(
    name: Faker::Book.unique.publisher,
    address: Faker::Address.unique.full_address,
    email: Faker::Internet.unique.email,
    phonenumber: Faker::PhoneNumber.unique.phone_number
  )
  number_of_authors = rand(1..15)
  number_of_employees = rand(1..4)

  number_of_authors.times do
    publisher.authors.build(
      name: Faker::Book.unique.author,
      address: Faker::Address.unique.full_address,
      email: Faker::Internet.unique.email,
      phonenumber: Faker::PhoneNumber.unique.phone_number,
      nationality: Faker::Nation.nationality
    ).save
    # number_of_books = rand(1..10)

    # number_of_books.times do
    # publisher.authors.books.build(
    #   title: Faker::Book.unique.title,
    #   genre: Faker::Book.genre,
    #   pubdate: Faker::Time.backward(years: rand(1..10)),
    #   isbn: Faker::Number.within(range: 1..1_999_999_999_999)
    # ).save
  end

  number_of_employees.times do
    publisher.employees.build(
      name: Faker::Name.unique.name,
      address: Faker::Address.unique.full_address,
      email: Faker::Internet.unique.email,
      phonenumber: Faker::PhoneNumber.unique.phone_number,
      position: Faker::Job.position
    ).save
  end
end

puts "Generated #{Publisher.count} Publishers."
puts "Generated #{Author.count} Authors."
puts "Generated #{Employee.count} Employees."
