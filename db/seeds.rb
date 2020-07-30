Profile.destroy_all

User.destroy_all

Profile.create!([{
    user_name: "cec2655",
    age: 27, 
    identify: "Female",
    neighborhood: "Ballard",
    instrument: "Clarinet",
    about: " Caucasian, Midwestern girl looking for an outgoing guy with strong morals, 
    great sense of humor and a touch of romanticism.  
    Extra points if you're a fan of the outdoors and getting outside!"
}, 
{ user_name: "jaz335",
age: 26, 
identify: "Female",
neighborhood: "Capital Hill",
instrument: "Violin",
about: "Hispanic, Photojournalist looking for a like minded guy. 
Lover of the Arts and Music. I love exotic food and trying new things."
}, 
{ user_name: "sella23",
age: 28, 
identify: "Female",
neighborhood: "Wallingford",
instrument: "Cello",
about: "Caucacisan, aspiring model who knows what she wants.
 Fitness fanatic, bi-lingual and lover of country music. "
}, 
{user_name: "smith44",
age: 30, 
identify: "Male",
neighborhood: "U-District",
instrument: "Bass",
about: "Financial trader who is looking for a partner in crime to share laughs, fine cuisine and someone with a desire to travel.
    Love the great outdoors, speak Spanish, Italian and French." 
}, 
{user_name: "clemmens99",
age: 29, 
identify: "Male",
neighborhood: "Green Lake",
instrument: "Guitar",
about: "Born and raised in the PNW, looking for a partner that loves to try new dishes in the kitchen. Spend a lot of my free-time in the water, skiing, wakeboarding and surfing.  
Looking for someone with shared interests and great sense of humor."
}, 
{user_name: "boy822",
age: 28, 
identify: "They",
neighborhood: "Shoreline",
instrument: "Trumpet",
about: "Caucacisan with Danish and Norwegian roots. Program Manager for Microsoft by day, often playing in musicals in the evening and some weekends.  
Foodie at heart who loves to brew their own beer."
}, 
{user_name: "punky31",
age: 33, 
identify: "They",
neighborhood: "Fremont",
instrument: "Piccolo",
about: " PNW raised former US Olympic Gymnast, gymnastics coach on weekends, Executive Assistance by day.  
Seeking a partner who loves movies, English Literature and Sci-Fi."
}, 
{user_name: "kabali11",
age: 4, 
identify: "Male",
neighborhood: "SLU",
instrument: "Reeds",
about: "Initially from India, currently working in Tech as a Software Developer.  Active in sports such as volleyball, kickball and love watching baseball.  
Passion for cooking and love reading action/thrillers."
}])

User.create! ([{
    name: "Cecily",
    password: 123456,
}, 
{name: "Jasmine",
password: "jaz335",
}, 
{name: "Amy",
password: 5678921,
}, 
{name: "Grant",
password: "Purple123",
},
{name: "Matthew",
password: 76478923,
}, 
{name: "Scottie",
password: "drea1245",
},
{name: "Paula",
password: 98765,
}, 
{name: "Amish",
password: "ralphie2245",
}])