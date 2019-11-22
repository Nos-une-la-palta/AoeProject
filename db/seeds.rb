# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Clan.destroy_all
Twitch.destroy_all
User.destroy_all


Clan.create(
    avatar: 'https://i.imgur.com/ADrFkRG.jpg',
    name: 'Clan CL',
    link: 'https://cl.voobly.com/'

)

Clan.create(
    avatar: 'https://i.imgur.com/aMYGSA6.jpg',
    name: 'Clan CHI',
    link: 'https://clanchileaoe.voobly.com/'
)


Clan.create(
    avatar: 'https://i.imgur.com/Efj88W3.jpg',
    name: 'Hueones Zolidoz',
    link: 'https://hz.voobly.com/'
)

Clan.create(
    avatar: 'https://i.imgur.com/5BYRgzp.jpg',
    name: 'Chilean Masters',
    link: 'https://chileanmasters.voobly.com/'
)

Twitch.create(
    owner:'karelok0',
    url: 'https://www.twitch.tv/karelok0'
)

Twitch.create(
    owner:'wakkoaoc',
    url: 'https://www.twitch.tv/wakkoaoc'
)

Twitch.create(
    owner:'chileaoe',
    url: 'https://www.twitch.tv/chileaoe'
)

User.create(
    nick: 'Don Admin',
    email: 'don@admin.cl',
    password: '123123',
    moderator: 'true'
    
)

User.first.image.attach(
    io: File.open('app/assets/images/caca.jpg'),
    filename: 'caca.jpg',
    content_type: 'image/jpg'
)

ForumCategory.create(
    name: 'Downloads',
    color: '#16bc16'
)

ForumCategory.create(
    name: 'Partidas grabadas',
    color: '#a9bc16'
)

ForumCategory.create(
    name: 'Torneos',
    color: '#bc162f'
)

ForumCategory.create(
    name: 'Torneos antiguos',
    color: '#ad6a83'
)

ForumCategory.create(
    name: 'Vods',
    color: '#91e6e6'
)
ForumCategory.create(
    name: 'Estrategias',
    color: '#c4e691'
)