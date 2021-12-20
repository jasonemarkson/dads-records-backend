# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
albums = Album.create([
    {
        title: "Van Halen",
        year: 1978,
        album_cover: "https://www.themightyvanhalen.net/wp-content/uploads/cover-1978.jpg",
        artist_id: 1
    }, 
    {
        title: "Women and Children First",
        year: 1980,
        album_cover: "https://m.media-amazon.com/images/I/71jQAwJXzXL._SL1079_.jpg",
        artist_id: 1
    },
    {
        title: "Diver Down",
        year: 1982,
        album_cover: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Van_Halen_-_Diver_Down.svg/1200px-Van_Halen_-_Diver_Down.svg.png",
        artist_id: 1
    },
    {
        title: "The Cars",
        year: 1978,
        album_cover: "https://m.media-amazon.com/images/I/814-6zPFsLL._SL1425_.jpg",
        artist_id: 2
    }
])

artists = Artist.create([
    { 
        name: "Van Halen"
    }, 
    { 
        name: "The Cars"
    }
    ]
)