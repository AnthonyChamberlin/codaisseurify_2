Song.destroy_all
Artist.destroy_all
#artists
stevie_wonder = Artist.create!(name: "Stevie Wonder", remote_image_url: "http://res.cloudinary.com/dbe5xk4jk/image/upload/v1508183010/bdxmtaqqt2rppmykopf9.jpg")
daft_punk = Artist.create!(name: "Daft Punk", remote_image_url: "http://res.cloudinary.com/dbe5xk4jk/image/upload/v1508183012/jt2dms3ozpl3hrc2qh6j.jpg")
bob_marley = Artist.create!(name: "Bob Marley", remote_image_url: "http://res.cloudinary.com/dbe5xk4jk/image/upload/v1508183012/ffhez4fnctoiokkox2kl.jpg")
bill_withers = Artist.create!(name: "Bill Withers", remote_image_url: "http://res.cloudinary.com/dbe5xk4jk/image/upload/v1508183011/zngbh0v8sl1yidb4rsq7.jpg")
john_mayer = Artist.create!(name: "John Mayer", remote_image_url: "http://res.cloudinary.com/dbe5xk4jk/image/upload/v1508182263/aoxoyy74ykgwdcd4xii3.jpg")
bb_king = Artist.create!(name: "BB King", remote_image_url: "http://res.cloudinary.com/dbe5xk4jk/image/upload/v1508183010/uaobaiwkdcuji3lf1rbn.jpg")
jamir = Artist.create!(name: "Jamiroquai", remote_image_url: "http://res.cloudinary.com/dbe5xk4jk/image/upload/v1508183012/qnvz94pgvqms7bbsxdex.jpg")
acdc = Artist.create!(name: "ACDC", remote_image_url: "http://res.cloudinary.com/dbe5xk4jk/image/upload/v1508182268/i4xjoawllfieczjlqdpf.jpg")
jlh = Artist.create!(name: "John Lee Hooker", remote_image_url: "http://res.cloudinary.com/dbe5xk4jk/image/upload/v1508183011/brxu9erf3ftgfrr3qziv.jpg")
#songs
Song.create!([
            {title: "Superstition", artist: stevie_wonder },
            {title: "Robot Rock", artist: daft_punk },
            {title: "Exodus", artist: bob_marley },
            {title: "Lean On Me", artist: bill_withers },
            {title: "Belief", artist: john_mayer },
            {title: "Thrill is Gone", artist: bb_king },
            {title: "Little L", artist: jamir },
            {title: "Back in Black", artist: acdc },
            {title: "Boom Boom", artist: jlh },


])
