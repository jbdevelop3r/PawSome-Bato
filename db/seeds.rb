# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
    email: 'admin_shawn@pawsome.com',
    password: '$h4g0gulaman',
    # confirmed_at: DateTime.current,
    admin: true
)

User.create!(
    email: 'admin_justine@pawsome.com',
    password: 'Herald1smurf',
    # confirmed_at: DateTime.current,
    admin: true
)

User.create!(
    email: 'admin_rullian@pawsome.com',
    password: 'RuBYllian',
    # confirmed_at: DateTime.current,
    admin: true
)

User.create!(
    email: 'admin_vince@pawsome.com',
    password: 'b3b3tym',
    # confirmed_at: DateTime.current,
    admin: true
)