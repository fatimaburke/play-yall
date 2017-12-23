# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#create dummy users
user = User.create! :username => 'fatimaburke',
                    :email => 'test@test.com',
                    :password => '123456',
                    :password_confirmation => '123456',
                    :bio => 'I\'m into all kinds of great and cool music. Check me out!',
                    :genre => 'Gospel',
                    :location => 'Philadelphia, PA',
                    :instrument => 'Piano',
                    :website => 'www.fatimaburke.com'

user2 = User.create! :username => 'geneburke',
                    :email => 'test2@test.com',
                    :password => '123456',
                    :password_confirmation => '123456',
                    :bio => 'I\'m a pretty darn good piano player',
                    :genre => 'Jazz',
                    :location => 'Philadelphia, PA',
                    :instrument => 'Keyboards',
                    :website => 'www.facebook.com/genekeyska'
