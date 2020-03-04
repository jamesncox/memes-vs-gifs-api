# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Caption.destroy_all

captions = [
    {
        text: "When you suddenly have to take a shit and you're 10th in line at the porta potty",
        rating: "R"
    },
    {
        text: "When she needs to speak to your manager",
        rating: "PG"
    },
    {
        text: "When your shampoo says 'Damage Control' but you're still broken on the inside",
        rating: "PG"
    },
    {
        text: "When you're in the middle of shampooing your hair and the hot water runs out",
        rating: "PG"
    },
    {
        text: "When you hit snooze 22 times and now you have 3 minutes to leave the house",
        rating: "PG"
    },
    {
        text: "When you open a birthday card from your grandma and no money falls out",
        rating: "PG"
    },
    {
        text: "When you take your shirt off at the beach and someone yells 'I haven't seen that much white meat since Thanksgiving!'",
        rating: "R"
    },
    {
        text: "When you wake up hungover AF and see that you Facetimed your ex 16 times at 3:17 am",
        rating: "R"
    },
    {
        text: "When you're arguing with someone and Wikipedia proves you're right",
        rating: "PG"
    },
    {
        text: "When you randomly remember how much happier you were the week Pokémon Go came out",
        rating: "PG"
    },
    {
        text: "When you rap the whole verse correctly",
        rating: "PG"
    },
    {
        text: "When you show up to the DMV and there's no line",
        rating: "PG"
    },
    {
        text: "When you're all ready to go out but then realize you have no money, no plans and no friends",
        rating: "PG"
    },
    {
        text: "Scrolling through your ex's insta and accidentally liking a picture from 3 years ago",
        rating: "PG"
    },
    {
        text: "When your son asks you to help him look for the Halloween candy you ate last night",
        rating: "PG"
    },
    {
        text: "When someone says they love running",
        rating: "PG"
    },
    {
        text: "When he says Fifty Shades of Grey is his favorite book",
        rating: "PG"
    },
    {
        text: "How white people smile at each other on the street",
        rating: "PG"
    },
    {
        text: "When people use their zodiac sign to justify their behavior",
        rating: "PG"
    },
    {
        text: "Me trying to get my life together",
        rating: "PG"
    },
    {
        text: "When you hear an unfamiliar girl's voice in the background of your boyfriend's Snapchat",
        rating: "R"
    },
    {
        text: "When you send him a paragraph and he responds to the most irrelevant part",
        rating: "PG"
    },
    {
        text: "When someone explains something so fucking wrong",
        rating: "R"
    },
    {
        text: "When someone tells you to take a Xanax and calm down",
        rating: "PG"
    },
    {
        text: "When you're trying to cheat in class and Siri says 'sorry, I didn't quite get that'",
        rating: "R"
    },
    {
        text: "When you hear someone say the word 'moist'",
        rating: "R"
    },
    {
        text: "When you're watching a movie with your parents and there's a sex scene",
        rating: "R"
    },
    {
        text: "When Christmas is 3 days away and you still haven't gotten anybody gifts",
        rating: "PG"
    },
    {
        text: "When your overweight doctor tells you that you need to lose weight",
        rating: "PG"
    },
    {
        text: "When you find money in the jeans you haven't worn in a while",
        rating: "PG"
    },
    {
        text: "When you go trick-or-treating on Halloween and they're handing out raisins",
        rating: "PG"
    },
    {
        text: "When you finish an exam and your friends are arguing whether the answer was 75 or 80 but you got -4",
        rating: "PG"
    },
    {
        text: "When you think you've been charging your phone for the last 3 hours but it wasn't plugged in",
        rating: "PG"
    },
    {
        text: "When you say 'bye' to someone then both start walking in the same direction",
        rating: "PG"
    },
    {
        text: "When you find that perfectly ripe avocado at the supermarket",
        rating: "PG"
    },
    {
        text: "When you're hanging out with a couple and they start fighting",
        rating: "PG"
    },
    {
        text: "When you swear to god you're right and immediately find out you were wrong",
        rating: "R"
    },
    {
        text: "When you're turnt at the club and the DJ puts on 'Get Low' by Lil Jon",
        rating: "R"
    },
    {
        text: "When you forgot to turn on your WIFI and realize you just used all your monthly data in the first week",
        rating: "PG"
    },
    {
        text: "When you can't even",
        rating: "PG"
    },
    {
        text: "When you thought you had $4 in your bank account but check and you really have $50",
        rating: "PG"
    },
    {
        text: "When your friends want to split it evenly but you only had an appetizer",
        rating: "PG"
    },
    {
        text: "When you get catcalled and secretely feel hot as hell",
        rating: "R"
    },
    {
        text: "When you're cutting wrapping paper and the scissors start to glide",
        rating: "PG"
    },
    {
        text: "When you post a selfie and lose 5 followers",
        rating: "PG"
    },
    {
        text: "Me after I've stirred the pot",
        rating: "PG"
    },
    {
        text: "When you accidentally say 'love you' before hanging up with Dominos",
        rating: "PG"
    },
    {
        text: "When your roommate asks why you still have a beard after borrowing his razor",
        rating: "R"
    },
    {
        text: "When you flip the pillow over to the cold side",
        rating: "PG"
    },
    {
        text: "When you meet all his friends and realize you got the ugliest one",
        rating: "PG"
    },
    {
        text: "When you're trying to relax but can't stop thinking about how ugly you are",
        rating: "PG"
    },
    {
        text: "When he says he's going out with his boys at 10 so you schedule an argument for 9:45",
        rating: "PG"
    },
    {
        text: "When you realize you've never been in an empty room",
        rating: "PG"
    },
    {
        text: "When you realize you'll never be as happy as you were at the Scholastic Book Fair",
        rating: "PG"
    },
    {
        text: "When you see a spider, but then lose sight of it",
        rating: "PG"
    },
    {
        text: "When you're about to leave work and your boss says, 'Before you go...'",
        rating: "PG"
    },
    {
        text: "That moment you realize sleeping is the only thing you've done perfectly in your life",
        rating: "PG"
    },
    {
        text: "When you call shotgun but end up in the back",
        rating: "PG"
    },
    {
        text: "When you flush the toilet and the water starts rising",
        rating: "PG"
    },
    {
        text: "That moment when you see your crush",
        rating: "PG"
    },
    {
        text: "When you see the doctor googling your illness",
        rating: "PG"
    },
    {
        text: "That moment when you realize it's Friday and your boss is out of office",
        rating: "PG"
    },
    {
        text: "When all the lights turn green at once",
        rating: "PG"
    },
    {
        text: "When the sink is full and you forgot to run the dishwasher",
        rating: "PG"
    },
    {
        text: "When your alarm goes off and you're deciding whether to go to work or fake your own death",
        rating: "R"
    },
    {
        text: "When your shift ends and suddenly it's a total disaster as you walk out",
        rating: "PG"
    },
    {
        text: "The moment you realize in the Humpty Dumpty Song they never mentioned he was an egg",
        rating: "PG"
    },
    {
        text: "When you try popping a pimple that's inside your nose",
        rating: "PG"
    },
    {
        text: "When you can't get the pickle jar to open",
        rating: "PG"
    },
    {
        text: "When you looking for a parking spot and see the first car backing out",
        rating: "PG"
    },
    {
        text: "When you get an A on the test and didn't study",
        rating: "PG"
    },
    {
        text: "That face you make when somebody didn't flush the toilet",
        rating: "PG"
    },
    {
        text: "When you stub your pinkie toe",
        rating: "PG"
    },
    {
        text: "When your nose is stuffed and you just sit there thinking about how you took breathing so freely for granted",
        rating: "PG"
    },
    {
        text: "When you wake up and your hair looks incredible",
        rating: "PG"
    },
    {
        text: "When you think you've been working for 14 hours and it's only been 17 minutes",
        rating: "PG"
    },
    {
        text: "When your coworker asks if you can cover their shift",
        rating: "PG"
    },
    {
        text: "When you forgot where you hid all the Easter eggs",
        rating: "PG"
    },
    {
        text: "When you find someone who likes the same weird shit you do",
        rating: "R"
    },
    {
        text: "When you return from vacation and try to remember how to do your job",
        rating: "PG"
    },
    {
        text: "When you ask someone 'What's up? and they answer 'the sky'",
        rating: "PG"
    },
    {
        text: "When you memorized every meme on the internet and nothing is making you laugh anymore",
        rating: "PG"
    },
    {
        text: "When you're on the verge of a breakdown but you're trying to stay positive",
        rating: "PG"
    },
    {
        text: "When someone tells you how drunk you were last night",
        rating: "R"
    },
    {
        text: "When the guy you met on Christian Mingle pulls out handcuffs on the first date",
        rating: "R"
    },
    {
        text: "When your boss roasts the shit out of the coworker you hate",
        rating: "R"
    },
    {
        text: "When kids under 10 eat for free and your dumbass kid tells the waitress they're 11",
        rating: "R"
    },
    {
        text: "When you're a competetive little fucker and someone says 'Don't worry, it's just a game'",
        rating: "R"
    },
    {
        text: "When you shart in public",
        rating: "R"
    },
    {
        text: "When your beer pong partner can't make a single motherfucking cup",
        rating: "R"
    },
    {
        text: "When you get a text from your booty call saying they think its herpes",
        rating: "R"
    },
    {
        text: "When you ask him to hurt you during sex and he comments on your cankles",
        rating: "R"
    },
    {
        text: "When the intern fucks up your coffee order",
        rating: "R"
    },
    {
        text: "When you're about to join the mile high club and the pilot puts on the fasten seatbelt sign",
        rating: "R"
    },
    {
        text: "When you realize there are 7 billion people on this planet and you still can't find someone to enjoy a taco with",
        rating: "PG"
    },
    {
        text: "When your mom calls you a son-of-a-bitch",
        rating: "R"
    },
    {
        text: "When the douchebag jock from high school serves you your McFlurry",
        rating: "R"
    },
    {
        text: "When you hear someone pronounce a word wrong and feel superior as fuck",
        rating: "R"
    },
    {
        text: "When you eat peanut butter too fast and regret ever being born",
        rating: "PG"
    },
    {
        text: "When you finally stand up to the bully like your dad says and then he beats the shit out of you in front of all your classmates",
        rating: "R"
    },
    {
        text: "When you ask your dad to pass the salt and he tells you to get a fucking job",
        rating: "R"
    },
    {
        text: "When your boss dies",
        rating: "R"
    },
    {
        text: "When you invite them over to Nextflix and chill knowing damn well you don't have Netflix",
        rating: "R"
    },
    {
        text: "When you try to send a dick pic and it says file too large",
        rating: "R"
    },
    {
        text: "When you leave a store and didn't buy anything so you gotta make that 'Act natural, you're innocent' face",
        rating: "PG"
    },
    {
        text: "When you're swimming in the ocean and your foot grazes some seaweed",
        rating: "PG"
    },
    {
        text: "When your doctor asks if you're sexually active",
        rating: "R"
    },
    {
        text: "How your boss looks when you request vacation time",
        rating: "PG"
    },
    {
        text: "Me watching other companies giving out holiday bonuses",
        rating: "PG"
    },
    {
        text: "When you see another coworker at the same strip club",
        rating: "R"
    }
]

captions.map{ |c| Caption.create(c)}