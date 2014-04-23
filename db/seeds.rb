# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Puppy.delete_all

Puppy.create(name: 'snowball', img_url: 'http://www.placecage.com/g/250/300')
Puppy.create(name: 'noodle', img_url: 'http://www.placecage.com/g/250/250')
Puppy.create(name: 'pancake', img_url: 'http://www.placecage.com/g/225/225')
Puppy.create(name: 'fido', img_url: 'http://www.placecage.com/g/300/300')
Puppy.create(name: 'spock', img_url: 'http://www.placecage.com/g/250/200')
