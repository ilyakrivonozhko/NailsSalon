# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
masters = Master.create([{ name: "Евгения", info: "Топ-мастер с десятилетним стажем. Люблю делать маникюр с котиками и пирог с яблоками.", email: "mariyagorobec.2001@gmail.com"},
  { name: "Кристина", info: "Имею множество успешно пройденных курсов за спиной. Быстро и круто наращиваю, нарисую самые сумасшедшие идеи.", email: "test@gmail.com"},
  { name: "Маргарита", info: "Мастер с вышсшим по психологии:D. Окажу помощь не только твоим ноготкам, но и поделюсь советом.", email: "example@gmail.com"}])
windows = Window.create([{ master_id: 1, time: Time.new(2023, 9, 10, 16, 41, 36, "+08:00") },
  { master_id: 1, time: Time.new(2023, 9, 11, 16, 41, 36, "+08:00") },
  { master_id: 2, time: Time.new(2023, 9, 12, 16, 41, 36, "+08:00") },
  { master_id: 2, time: Time.new(2023, 9, 13, 16, 41, 36, "+08:00") },
  { master_id: 3, time: Time.new(2023, 9, 14, 16, 41, 36, "+08:00") },
  { master_id: 3, time: Time.new(2023, 9, 15, 16, 41, 36, "+08:00") }])
