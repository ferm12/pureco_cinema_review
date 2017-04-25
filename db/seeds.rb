# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.create!([
    {
        title: "Thor",
        rating: "PG-13",
        total_gross: 133245234.44,
        description: "Against his father Odin's will, The Mighty Thor -a powerful but orrogant worrior god -recklessly reignites an ancient war. Thor is cast down to Earth and forced to live among humans as punishment. Once here, Thor learns what it takes to be a true hero when the most dangerous villain of his world sends the darkest forces of Asgard to invade Earth.",
        released_on: "2011-04-21"
    },
    {
        title: "Iron Man",
        rating: "PG-13",
        total_gross: 318412101.00,
        description: "Tony Stark builds an armored suit to fight the throes of evil",
        released_on: "2008-05-02"
    },
    {
        title: "Spider-Man",
        rating: "PG-13",
        total_gross: 403706375.00,
        description: "Peter Parker gets bit by a genetically modified spider",
        released_on: "2002-05-03"
    },
    {
        title: "Captain America ",
        rating: "PG",
        total_gross: 134218018.00,
        description: "During Word War II, a brave, patriotic American Soldier undergoes experiments to become a new supersoldier, 'Captain America.' Racing to Germany to sabotage the rockets of Nazy baddie 'Red Skull', Captain America winds up frozen ultil the 1990s. he reawakens to find that the Red Skull has changed identities and is now planning to kidnap the President of the United States.",
        released_on: "1990-12-14"
    },
    {
        title: "The Terminator",
        rating: "PG-13",
        total_gross: 135765034.00,
        description: "In the post-apocalyptic future, reigning tyrannical supercomputers teleport a cyborg assassing known as the 'Terminator' back to 1984 to kill Sarah Connor, whose unborn son is destined to lead insurgents against 21st century mechanical hegemony. Meanwhile, the human-resistance movement dispatches a lone warrior to safegard Sarah. Can he stop the virtually indestructible killing machine?",
        released_on: "1984-10-26"
    }
])


movie = Movie.find_by(title: 'Iron Man')
movie.reviews.create!(email: "fermin1@gmail.com", rating: 3, date:"2015-04-06", comment: "testing with  popcorn!")
movie.reviews.create!(email: "fermin2@gmail.com", rating: 5, date: "2014-03-01", comment: "orem ipsum dolor sit amet, pharetra ac. Vulputate vestibulum. Nullam libero eu mauris, sodales elit sed ad maecenas leo metus, purus lorem, odio mauris risus duis lectus molestie. Nisl hendrerit, du")
movie.reviews.create!(email: "Mario@gmail.com", rating: 4, date: "2013-03-01", comment: "Aliquam tristique elementum tellus eleifend et, in vestibulum, dapibus per tincidunt arcu gravida. Consequun superhero was this fierce and this funny.")

movie = Movie.find_by(title: 'Superman')
movie.reviews.create!(email: "Elvis@gmail.com", rating: 5, date: "2013-04-09", comment: "e mi accumsan ipsum. Et suspendisse, wisi eget vel, curabitur accumsan. Turpis wisi lobortis scelerisque arcu rutrum neque, fringilla mauris amet. Vestibulum semper. Consequat enim a blockbuster!")
