Song.destroy_all
Artist.destroy_all
#artists
stevie_wonder = Artist.create!(name: "Stevie Wonder", remote_image_url: "http://res.cloudinary.com/dbe5xk4jk/image/upload/v1508183010/bdxmtaqqt2rppmykopf9.jpg")
daft_punk = Artist.create!(name: "Daft Punk", remote_image_url: "http://res.cloudinary.com/dbe5xk4jk/image/upload/v1508183012/jt2dms3ozpl3hrc2qh6j.jpg")
bob_marley = Artist.create!(name: "Bob Marley", remote_image_url: "http://res.cloudinary.com/dbe5xk4jk/image/upload/v1508183012/ffhez4fnctoiokkox2kl.jpg")



#songs
Song.create!([
            {title: "Superstition", artist: stevie_wonder },
            {title: "Robot Rock", artist: daft_punk },
            {title: "Exodus", artist: bob_marley },
])
