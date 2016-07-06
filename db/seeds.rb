# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# encoding: utf-8


Game.create([
  {cover: 'http://media.ignimgs.com/media/ign/imgs/minisites/topN/rpgs/top-100-rpgs_tales-of-phantasia.jpg', name: 'Tales of Phantasia'},
  {cover: 'http://vignette3.wikia.nocookie.net/chrono/images/1/1e/Chrono_Trigger_Artwork1.jpg/revision/latest?cb=20090311222344', name: 'Chrono Trigger'},
  {cover: 'https://upload.wikimedia.org/wikipedia/en/b/b7/Secret_of_Mana_Box.jpg', name: 'Secret of Mana'},
  {cover: 'http://images.nintendolife.com/games/snes/terranigma/cover_large.jpg', name: 'Terranigma'}
])
