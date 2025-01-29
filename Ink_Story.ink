


// Character states where 4 is fine / good | Maybe characters start at different numbers?
VAR adam_state = 4
VAR billiam_state = 4
VAR carl_state = 4

VAR player_state = 4
VAR counter = 0
LIST locations = deck_front, deck_back, engine_room, bedroom, cabin, kitchen

VAR adam_loc = deck_front
VAR billiam_loc = deck_front
VAR carl_loc = deck_front

VAR player_loc = deck_front

VAR day = 1

* [Begin story?] -> Start
=== Start 
It's a warm, beautiful day outside at the dock of the bay Mariana. The sky is cloudless and formations of seagulls fly overhead, gracing the pier with their obnoxious cries. // Location open to change
While there are many different boats and yachts floating around, moored to the dock, only one is of interest to this story: a brown, four-section boat with upper and lower quarters.
* [Continue] -> the_boat
= the_boat
    It sports a slightly raised, enclosed cabin where the steering wheel is housed. The recently-cleaned glass allows the pilot to look out and see the open waters. There is a cabinet in the back corner, a light on the back wall, a door that leads back out to the deck, and a ladder that leads to the sleeping quarters in the bottom layer of the boat.
    The kitchen is the largest of the rooms, but not by much. It contains basic cooking appliances, a table booth that sits four people, more cabinets, a mini-fridge, a fogged-up window and a door leading out to the deck. There is also door that leads to the back deck and a hatch that goes down to the engine room.
    The sleeping quarters is the second largest room of the boat. It has yellow walls, a small bookshelf doubling as a nightstand, two bunkbeds, a shelf spanning the front wall hidden behind a hinged-mirror.
    Finally, there is the engine room, the smallest room on the boat. There is a small section that connects it to the restroom, but besides the engine itself there isn't much else.
* [Continue] -> the_group
= the_group
    Today is the day, you've finally gotten a free week away from work and you've gone out all this way to meet up with some old friends.
    You hop upon the stern of the ship, almost falling over as you adjust to the moving floor.
    "Woah! Careful," a familliar voice warns, "It'd suck to start a reunion with a concussion."
    * "I'm alright[!"], <> -> b_p_1
    * "Oh, shut up[."]," <> -> b_p_1
    = b_p_1
        <> you say, "It's nice to see you too, Bill." Out of the corner of your eye you see the cabin door open. Another old friend, Adam, steps out with a tackle box and a fishing rod. He smiles when he sees you. 
        "Parker!" He says, placing down the tackle box to gvie you a handshake, "Nice to see you!"
        You accept his handshake. "Nice to see you as well, it's been a while."
        "It sure has," he says, picking back up the tackle box and begins walking to the front end of the ship. "Carl should be down below deck." He calls over his shoulder. "We'll be leaving in a minute."
        "Got it," You say, as you make your way into the cabin and down the ladder. Carl is down there, messing with a rubber duck and a fishing pole. 
        "Hey, Carl," You say, as you throw your belongings up to one of the top bunks, "How's it been?"
        "It's been alright," He replies, absorbed in his work, "and you?"
        "About the same."
        The ship lurches forward a bit, almost knocking you off your feet. "And we're off!" Adam shouts from above. Carl finishes up with his little project and resets the fishing rod. "Watch your step, Parker." He says as he scrambles up the ladder to the cabin.
        In the cabin, you can see Adam through the glass. He has returned to the supplies he brought out, fiddling with something in the tackle box on the port side of the ship. Somewhere inside the ship, you can hear pots and pans banging around as Billiam goes about his routines. Behind you, Carl fishes out a notebook and some binoculars from a bag before heading to the stern of the ship, for unknown purposes.
        Everyone else seems to have something to do. Perhaps you should tag along with one of them?
        ~ billiam_loc = kitchen
        ~ carl_loc = deck_back
        ~ player_loc = cabin
        * [Check in with Adam] -> On_Boat_Day_1.Fish_Adam
        * [Check in with Billiam] -> On_Boat_Day_1.Kitchen_Bill
        * [Check in with Carl] -> On_Boat_Day_1.BirdWatching_Carl
    
=== On_Boat_Day_1
    
    = Fish_Adam
        ~ player_loc = deck_front
        You make your way to the front deck to where Adam is. He's pulled out a foldable chair and is now sat preparing the rod for fishing. 
        "You're a fisherman, now, huh?" You tease, unfolding an extra chair you found leaning against the wall in the cabin.
        "Something like that," He laughs, "gonna try to catch something for us to eat tonight. Want to join?" He says, pointing down at another rod, "I brought like, 3 rods."
        * "I'll just watch[."]," <> -> watch_adam
        * "Sure[!"]," -> fish_with_adam
        = watch_adam
            <> you say.
            "Suit yourself." He shrugs and flicks the rod, sending the bobber into the waters. You remember that last time you all met up he wasn't doing well financially.
            * "How's the job been?" <> -> a_job_q
            * "Has your situation gotten better? [] That job you talked about last time," <> -> a_job_q
            = a_job_q
            <> you ask, "Did you get that new one you wanted or are you still at your old one?"
            His face lights up. "Would you believe the old one got better?"
            "Not really, it was retail after all." You say.
            "Good, because I'd be lying," He chuckled, "Yeah, I got a good job. Pays well too. Wasn't the one we talked about last time, those jerks had hired someone days before they decided to call me in for a second interview, and they still did it." There's a yank on the line and he begins reeling it in.   
            A very small fish is on the other end of the hook, and Adam looks at it, disappointed. "Too small." He gingerly unhooks it and tosses it back into the water. He proceeds to reset the rod before sending the bobber into the water.
            "Anyways, yeah. Got my debts paid at least, still saving up for a better car, though."
            "Good to hear."
            * [Continue watching in silence] -> silent_fishing
        
        = silent_fishing
            {"You know, I don't think any of us know what you do." Adams says, adjusting himself. | "Starting to get dark out, hopefully it stays clear so we can see the stars." You say. | "The three of-" Adam is cut off by a tug on the line.}
            {"_Insert_Job_Here_" You reply. He reels in another small fish with a sigh. "Well, that's boring." | "Yup, hard to see them out in the city. Out in the country-side seeing them is a bit easier." He replies. | "Think it's another small one?" You ask.}
            * [Continue] -> silent_fishing_loop
        = silent_fishing_loop
            {
            - counter == 2:
                * -> fishing_loop_out
            - else:
            ~ counter += 1
                * -> silent_fishing_loop
            }
        
        = fishing_loop_out
            Adam struggles to to reel in whatever is on the other end. But with your help, the two of you are able to pull it out of the water. 
            It was a large fish, larger than average compared to others of its kind in the area. Adam regards it proudly, "Very nice." and you nod in agreement.
            "Well," He says, "I'm going to hand this over to Billiam, mind sticking that tackle box in the cabin?"
            "Sure," You say, and do as he asked. 
            * [Head to kitchen] -> Cont_Boat_Day_1_S_2
            
            
        = fish_with_adam
        
            // Describe interaction between Parker (Player) and Adam as they fish. 
            // How has Adam been doing? Has he gotten the job he wanted? How's his family?
            // Answer questions from Adam, how has Parker been doing? What's going on with his life? Do we shame the player for playing this interactive story instead of going out and touching grass?
            ~ carl_state -= 1
            ~ billiam_state -= 1
            * [Let time pass] -> Cont_Boat_Day_1_S_2
        
    = Kitchen_Bill
        ~ player_loc = kitchen
        // Narrator describes kitchen and interaction between Parker (Player) and Billiam as they prepare the kitchen, storing bottled water, making sure the equipment (Stovetop, etc) is working, and storing the kitchenware
        // How has Billiam been doing? How is his father? How is the business going?
        * [ask about Billiams life] -> Life_Bill
        * [ask what made him propose the boat trip] -> Trip_Origin
        // Answer questions from Billiam, how is Parker been doing? What's going on with his life? Do we shame the player for not submitting a job application?
        ~ adam_state -= 1
        ~ carl_state -= 1
        
        = Life_Bill
            // How has Billiam been doing? How is his father? How is the business going?
            * [Let time pass...] -> Cont_Boat_Day_1_S_2
        = Trip_Origin
            // Player asks what made him propose this trip to begin with
            // Billiam talks about how it's been a long time since they've all been together, and he wanted to make sure they all stayed in touch.
            * [Let time pass...] -> Cont_Boat_Day_1_S_2
        
    = BirdWatching_Carl
        ~ player_loc = deck_back
        // Narrator describes back deck and interaction between Parker(Player) and Carl. Parker asks what he's up to, and Carl talks about trying to find a bird to draw.
        // How has Carl been doing? How has his career being doing? etc.
        // Answer questions from Carl, how is Parker doing? What's going on with his life? Do we shame the player for not starting up a million-dollar indie company that sells rubber ducks?
        ~ adam_state -= 1
        ~ billiam_state -= 1
        * [Let time pass...] -> Cont_Boat_Day_1_S_2
    
    = Cont_Boat_Day_1_S_2
        // Adam hands his prize fish over to Billiam and decides to go look around the sleeping quarters while food is being prepared. Meanwhile, Billiam fires up the stove.

        // You once again find yourself unsure of what to do...
        // Choice between tagging along with Adam or assisting Billiam with food.
        ~ billiam_loc = kitchen
        ~ adam_loc = bedroom
        ~ carl_loc = cabin
        * [Tag along with Adam] -> TagAlong_Adam
        * [Help Billiam prepare caught fish for Dinner] -> Fish_Billiam
        * [Ask about Carl's whereabouts] -> Question_Carl
        = TagAlong_Adam
            ~ player_loc = bedroom
            // If already speaking with Adam prior, new options, otherwise do the same as the first converstation that would have taken place
            // the two of you find some cards and decide to play some card games while waiting for dinner
            // narrator can talk about them playing the card game for a little bit.
            ~ carl_state -= 1
            ~ billiam_state -= 1
            * [Let time pass...] -> End_TagAlong_Adam
            
            = End_TagAlong_Adam
                * [Head to kitchen] -> Cont_Boat_Day_1_S_3
            
        = Fish_Billiam
            // If already speaking with Billiam prior, new options, otherwise do the same as the first conversation that would have taken place
            ~ adam_state -= 1
            ~ carl_state -= 1
            * [Let time pass...] -> Cont_Boat_Day_1_S_3
            
        = Question_Carl
            // Billiam says he doesn't know where Carl is, and the Parker's just like, "yeah ok"
            // Maybe Carl's known to wander off without warning
            // Returns back to previous 2 options
            * [Tag along with Adam] -> TagAlong_Adam
            * [Help Billiam prepare caught fish for Dinner] -> Fish_Billiam
    
    = Cont_Boat_Day_1_S_3
        ~ player_loc = kitchen
        // Go eat with group. Depending on who has the lowest score, have one question / answer be ignored by the rest of the group, don't make it obvious
        // Maybe some decisions in conversation, nothing big
        // If previously talked with Carl make asking advanced questions available
        * [Turn in for the night] -> Night_1
        
    
    = Night_1
        ~ player_loc = bedroom
        // The sun has set, and everyone turns in for the night. There's only two beds in the sleeping quarters, but you and Adam brought sleeping bags. You and Adam put your sleeping bags down on the floor next to the bunk bed and lay down, the sea slowly rocking you to sleep.
    
        * [Slumber] -> On_Boat_Day_2
    
=== On_Boat_Day_2
    // Narrator describes the morning
    // The player wakes up in the sleeping quarters. Everyone else has already gotten up.
    // You make your way to the kitchen, bumping into Billiam in the helm along the way. 
    // You reach the kitchen where the others are and make yourself some breakfast. They inform you that they're heading to an old Buoy. Apparently Billiam sprayed some graffiti on it a couple years back and they were gonna see if it was still there..
    // After breakfast, Adam decides to check on the engine. He reveals a hatch in the floor of the kitchen leading down to the engine, and decends into the belly of the beast. It looks dark and damp down there, but could be interesting to checkout?
    // Carl then fishes out a realistic platic duck from a duffle bag, and heads to the stern of the ship for reasons unknown...
    // In the meantime, what will you do?
    ~ adam_loc = engine_room
    ~ billiam_loc = cabin
    ~ carl_loc = deck_back
    * -> Engine_Adam
    * -> Drive_Billiam
    * -> Duck_Carl
    

    = Engine_Adam
        ~ player_loc = engine_room
        // You tag along with Adam to check on the engine
        // If already speaking with Adam prior, new options, otherwise do the same as the first converstation that would have taken place
        // Talk about his experience with engines and what he's checking for
        ~ billiam_state -= 1
        ~ carl_state -= 1
        
        * [Let time pass...] -> Cont_Boat_Day_2_S_2
        
    = Drive_Billiam
        ~ player_loc = cabin
        // You head back to the helm to hang with Billiam during the drive.
        ~ adam_state -= 1
        ~ carl_state -= 1
        
        // Ask him about the buoy we're heading too
        * [Ask Billiam about the buoy we're off to visit] -> BuoyQuestion_Billiam
        
        // Ask about something else idk...
        
        // End interaction
        * [Let time pass...] -> Drive_Billiam_Exit
        
        = BuoyQuestion_Billiam
            // Billiam tells you about how some friends of his joined him on a similar boat trip about a year back, and how they tagged an old buoy.
            * [Continue] -> Drive_Billiam
        
        = Drive_Billiam_Exit
            // Narrator describes how the two chat a bit longer
            // maybe mention seeing/hearing the buoy
            * [Continue] -> Cont_Boat_Day_2_S_2
        
    = Duck_Carl
        ~ player_loc = deck_back
        // Narrator describes back deck and interaction between Parker(Player) and Carl as they screw around water-boarding the poor rubber ducky, Sir Femur the 2nd. 
        // How has Carl been doing? How has his career being doing? etc.
        // Answer questions from Carl, how is Parker doing? What's going on with his life? Do we shame the player for not starting up a million-dollar indie company that sells rubber ducks?
        ~ adam_state -= 1
        ~ billiam_state -= 1
        * -> Cont_Boat_Day_2_S_2
    
    = Cont_Boat_Day_2_S_2
        // The boat reaches the buoy. The ancher is dropped.
        // you can choose to check out the old buoy with Billiam
        * [Check out the buoy with Billiam] ->BuoyCheck_Billiam
        // or you can go check on Carl in the sleeping quarters
        * [Check on Adan] ->CheckOn_Carl
        
    = BuoyCheck_Billiam
        ~ player_loc = deck_front
        // You and Billiam check out the buoy 
        // you can choose to write something on it with some spray paint
        ~ adam_state -= 1
        ~ carl_state -= 1
        * [Let time pass...] ->Cont_Boat_Day_2_S_3
        
    = CheckOn_Carl
        ~ player_loc = bedroom
        //
        ~ adam_state -= 1
        ~ billiam_state -= 1
        
        * [Let time pass...] ->Cont_Boat_Day_2_S_3
        
    
    = Cont_Boat_Day_2_S_3
        ~ player_loc = deck_back
        // The character with highest "value" asks you to try fishing with them
        
        * [Let time pass...] ->Cont_Boat_Day_2_S_4
    
    = Cont_Boat_Day_2_S_4
        ~ player_loc = kitchen
        // You go eat lunch with the group (someone's missing)
        * [Let time pass...] ->Cont_Boat_Day_2_S_5
    
    = Cont_Boat_Day_2_S_5
        ~ player_loc = kitchen
        // the player grabs a snack and proposes an idea on what to do next.
        // but then a seagull suddenly attacks and tries to steal some food.
        
        // if Adam is still around, He will jump in and try to fend off the bird, and the player will have the option to help.
        // if Adam is not around, the player will have the option to fend off the bird byhimself.
        * [Let time pass...] -> Cont_Boat_Day_2_S_6
        
    = Cont_Boat_Day_2_S_6
         ~ player_loc = kitchen
        // rain begins to pick up
        
        // everyone (except the one missing) comes in and eats dinner together
        // Someone brings up a little island that's nearby that they could visit
        
        * [Turn in for the night] -> Night_2
        
    = Night_2
         ~ player_loc = bedroom
        // everyone goes to sleep.
        // the sleeping quarters feel colder 
        * [slumber] -> On_Boat_Day_3

=== On_Boat_Day_3
    // Narrator describes Parker (You) waking up. Parker slept in and it's now noon. It's no longer raining, but a thin fog blankets the sea.
    // The boat is already docked at the little island.
    // You and the one other character swim to the little island and hang there for a little bit
    * [swim over to island and check it out] -> Cont_Boat_Day_3_S_2
    
    = Cont_Boat_Day_3_S_2
        // reach the island and choose what to do with the final character
        * [Search the beach for seaShells] -> shellSearch
        * [Throw rocks at birds] -> birdAbuse
        
        = shellSearch
            // The two of you look around the beach for shells
            // narrator describes some shells and driftwood
            // You grab a shell.
            * [Let time pass..]-> Cont_Boat_Day_3_S_3

        = birdAbuse
            // The two of you throw rocks at birds (unless the last character is Carl. He doesn't throw any rocks.) 
            * [Let time pass..]-> Cont_Boat_Day_3_S_3
            
    = Cont_Boat_Day_3_S_3
        ~ player_loc = kitchen
        // Return to boat for Lunch time!
        // eat lunch with final character. Something feels very off
        // The two of you don't say anything.
        * [Let time pass..]-> Cont_Boat_Day_3_S_4
    
    = Cont_Boat_Day_3_S_4
        // After lunch, you are alone.
        * [pace around the deck] -> paceAround
        * [lay in bed] -> layInBed
        * [read a book] -> readBook
        
        = paceAround
            ~ player_loc = deck_back
            // You paceAround the deck
            * [Let time pass..]-> Cont_Boat_Day_3_S_5
        = layInBed
            ~ player_loc = bedroom
            // You lie down in bed.
            * [Let time pass..]-> Cont_Boat_Day_3_S_5
        = readBook
            ~ player_loc = kitchen
            // You sit down at the kitchen table and reed a book you found.
            * [Let time pass..]-> Cont_Boat_Day_3_S_5
    
    = Cont_Boat_Day_3_S_5
        // final dinner alone...
        * [Turn in for the night] -> Night_3
    
    = Night_3
        // you go to bed.
        * [sleep]-> Boat_Day_4

=== Boat_Day_4
    // Narrator describes scene
    * [Continue] -> Cont_Boat_Day_4_S_2
    
    = Cont_Boat_Day_4_S_2
        // Narrator describes scene
        * [Continue] -> Cont_Boat_Day_4_S_3
    
    = Cont_Boat_Day_4_S_3
        // Narrator describes scene
        * [Continue] -> Cont_Boat_Day_4_S_4
        
    = Cont_Boat_Day_4_S_4
        // Narrator describes scene
        
        * -> END
    
