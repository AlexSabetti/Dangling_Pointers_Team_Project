


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

VAR adv_conv_bill = 0
VAR adv_conv_carl = 0
VAR adv_conv_adam = 0

VAR player_loc = deck_front

VAR day = 1

* [Begin story?] -> Start
=== Start 
It's a warm, beautiful day outside at the dock of the bay Mariana. The sky is cloudless and formations of seagulls fly overhead, gracing the pier with their obnoxious cries. // Location open to change
While there are many different boats and yachts floating around, moored to the dock, only one is of interest to this story: a brown, four-section boat with upper and lower quarters.
* [Continue] -> the_boat
= the_boat
    #IMAGE: assets/BoatLayout1_c1.png
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
        "Got it," You say, as you make your way into the cabin and down the ladder. Carl is down there, cleaning the lens of his binoculars while sifting through his notebook.
        "Hey, Carl," You say, as you throw your belongings up to one of the top bunks, "How's it been?"
        "It's been alright," He replies, absorbed in his work, "and you?"
        "About the same."
        #IMAGE: assets/BoatLayout1_a1.png
        The ship lurches forward a bit, almost knocking you off your feet. "And we're off!" Adam shouts from above. Carl finishes up with his little project and closes the notebook. "Watch your step, Parker." He says as he scrambles up the ladder to the cabin.
        In the cabin, you can see Adam through the glass. He has returned to the supplies he brought out, fiddling with something in the tackle box on the port side of the ship. Somewhere inside the ship, you can hear pots and pans banging around as Billiam goes about his routines. Behind you, Carl fishes out a plastic duck from a floor compartment and brings it to the stern of the ship, for unknown purposes.
        Everyone else seems to have something to do. Perhaps you should tag along with one of them?
        ~ billiam_loc = kitchen
        ~ carl_loc = deck_back
        ~ player_loc = cabin
        * [Check in with Adam] -> On_Boat_Day_1.Fish_Adam
        * [Check in with Billiam] -> On_Boat_Day_1.Kitchen_Bill
        * [Check in with Carl] -> On_Boat_Day_1.Bin_Carl
    
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
            {"You know, I don't think any of us know what you do." Adams says, adjusting himself. | "Starting to get dark out, hopefully it stays clear so we can see the stars." You say. | "What job did you get?" You ask. | "The three of-" Adam is cut off by a tug on the line.}
            {"_Insert_Job_Here_" You reply. He reels in another small fish with a sigh. "Well, that's boring." | "Yup, hard to see them out in the city. Out in the country-side seeing them is a bit easier." He replies. |"Working at the local computer repair shop." He replies. "They pay well because I do more than work at the front." | "Think it's another small one?" You ask}. 
            + [Continue] -> silent_fishing_loop
        
        = silent_fishing_loop
            
            {
            - counter == 3:
                -> fishing_loop_out
            - else:
            ~ counter += 1
                -> silent_fishing
            }
        
        = fishing_loop_out
            Adam struggles to to reel in whatever is on the other end. But with your help, the two of you are able to pull it out of the water. 
            It was a large fish, larger than average compared to others of its kind in the area. Adam regards it proudly, "Very nice." and you nod in agreement.
            "Well," He says, "I'm going to hand this over to Billiam, mind sticking that tackle box in the cabin?" Once I hand this over I'm going down to check the engine. 
            "Sure," You say, and do as he asked. But what now?
            * [Continue] -> Cont_Boat_Day_1_S_2
            
        = fish_with_adam
             you reply. "Alrighty, then." He says as he hands you a rod. You kinda remember how you were supposed to do it, and a couple minutes later you both were sitting back, rods in hand, staring out into the waters.
            * "How's the job been?" <> -> a_job_q
            * "Has your situation gotten better? [] That job you talked about last time," <> -> a_job_q
        ~ carl_state -= 1
        ~ billiam_state -= 1
        ~ adv_conv_adam = 1
        * -> Cont_Boat_Day_1_S_2
    = Kitchen_Bill
    ~ player_loc = kitchen
        You make your way over to the door that leads into the kitchen.
        "Room service!" You knock on the door, giggling to yourself.
        "No," Billiam calls back, "You're supposed to just barge in."
        "Is that what they do at the hotel?" You ask as you let yourself in.
        "Yeah, we've gotten complaints about that." He says, handing you a washcloth. "Wipe the dust and gunk off the table and that counter, will you?"
        You get to work as Billiam finishes putting away the supplies he brought: paper plates, plastic water bottles (Not Nestle), plastic "silver"ware, some snacks and some cooking implements. 
        * "Speaking of the hotel, how's that been working out[?"]," <> -> hotel_bill
        * "How's life been[?"]," -> life_bill
        = hotel_bill
            <> you ask, wringing out the washcloth after dunking it again.
            "Pretty well, I run the finance part, lots of math and budgeting," He pauses, looks over an instruction booklet, "but otherwise it's good."
            "Cool. It pays well?"
            "Yeah, and it doesn't take all day either, so I usually end up helping down in the kitchen." He says, beginning to sharpen one of the knives. "Still wish I'd gone with being a chef sometimes, but being able to do that helps."
            You nod, mostly to yourself, as he isn't looking at you. The both of you continue prepping the small kitchen. Once finished, Billiam looks over his shoulder.
            "Hey, looks like Adam's caught a fish for dinner, I don't really need help, but you can hang out if you'd like. I know Adam has to check the engine because of issues earlier." He looks back over the counter, double checking to make sure everything is there. "Oh, the cutting board." He realizes, and pulls one out of the cabinet.
            "Alright then."
            ~ adam_state -= 1
            ~ carl_state -= 1
            ~ adv_conv_bill = 1
            * [Continue] -> Cont_Boat_Day_1_S_2
        
        = life_bill
            <> you ask, wringing out the washcloth after dunking it again.
            "The job has been great. Family," He sighs, "Not so much." He pulls out a cutting board and places it on the counter.
            "What do you mean?" You ask, mercilessly attacking a stubborn, stupid stain on the table.
            "Well, we found out my uncle has cancer," He says, "Auntie is devastated."
            You pause, "It's that bad?" 
            "No, but you know how she is." He chuckles, "She would treat a bike accident like it was a death in the family." He begins organizing some kitchen tools. "Bless her heart," He finally adds.
            "So, what is it then?"
            He shifts uncomfortably. "Uh..." He scratches his head, "Prostate cancer. Thankfully they caught it early."
            "How does one catch prostate cancer early?" You wonder aloud, finally winning against that stain.
            "I don't know ask the writer." He grumbles.
            "The wha-"
            The writer does not dignify Parker's question by finishing it. "Well, $@% you too." he thinks, stretching his fingers. "I'm on a time limit and I don't know how to make people seem relatable."
            Self-deprecating fourth-wall breaking aside, the two of you finish up.
            "You think he'll be alright?" You ask gingerly, not wanting to upset him.
            "Last I heard, he's in recovery. So he's fine, I'm just free now to be pissed about the bill." There's a sound similar to a metal box hitting the ground, "Hey, looks like Adam's caught a fish for dinner, I don't really need help, but you can hang out if you'd like. I know Adam has to check the engine because of issues earlier." He looks back over the counter, double checking to make sure everything is there. "Oh, the knife." He realizes, and begins sharpening it.
            "Alright."
            ~ adam_state -= 1
            ~ carl_state -= 1
            ~ adv_conv_bill = 1
            * [Continue] -> Cont_Boat_Day_1_S_2
        * -> Cont_Boat_Day_1_S_2
    = Bin_Carl
        ~ player_loc = deck_back
        ~ adam_state -= 1
        ~ billiam_state -= 1
        ~ adv_conv_carl = 1
        You walk to the back of the boat and see Carl scanning the ocean with his binoculars. "Hey, Carl, what's up?"
        Without taking his eyes off the sky he says "Bird watching." he takes the binoculars away from his eyes and sighs. "Well, technically I'm 'Sky-watching' because I'm not seeing anything." He corrects himself.
        You look over and see that his notebook is open to a page with a depiction of a seagull on it. "That's pretty good," You say, pointing at it.
        "Thanks, my job is requiring more planning and sketching," He turns to face the sky again, peering through the binoculars again. "Can't just do it from scratch anymore."
        You realize you've never asked him about his job before. "What exactly do you do, again?" 
        "It's complicated," he says, brushing it off. The two of you scan the skies in silence. 
        All of a sudden, the silence is pierced by Adam yelling in surprise.
        "Catch something?" Carl yells back, closing up his notebook and putting the binoculars back in their case.
        "It's huge!" Adam yells back. Carl snorts and sticks the notebook in his overly large pockets. "I'm tired, woke up way too early this morning." He begins heading to the cabin to go down to the bedroom. "Go see if those two need help. I don't think Billiam needs help in the kitchen, but Adam might need it with the engine."
        * -> Cont_Boat_Day_1_S_2
    
    = Cont_Boat_Day_1_S_2
        // Engine is having trouble, choice between helping Adam or assisting Billiam with food.
        ~ billiam_loc = kitchen
        ~ adam_loc = engine_room
        ~ carl_loc = bedroom
        * [Help Billiam prepare caught fish for Dinner] -> Fish_Billiam
        * [Check Engine with Adam] -> Engine_Adam
        = Fish_Billiam
            You begin helping Billiam with the fish. First, by looking over the fish for any visual issues. Adam probably had already done this but it was better safe than sorry.
            Then, the two of you began filleting the fish, removing scales and other bones. It took a bit, but it would have taken a lot longer if it were just Billiam himself.
            While you were waiting for each piece to cook, Billiam showed you specific traits of the fish you two were cooking.
            When it was finally done, you called for Carl and Adam and began cleaning the place. Adam and Carl make their way inside and sit at the booth facing the table. 
            Billiam and you finish up and join them at the table.
            // If already speaking with Billiam prior, new options, otherwise do the same as the first conversation that would have taken place
            ~ adam_state -= 1
            ~ carl_state -= 1
            * [Continue] -> Cont_Boat_Day_1_S_3
        = Engine_Adam
            You make your way down to the engine room. Adam's sitting there looking it over. 
            "There's not much to do, down here." He says upon hearing you step on the ground. "Just had to make sure the replacement wasn't messing anything up."
            "What happened to the old one?" You ask, as you give it a once-over.
            "Have you ever seen someone chuck a scrunche-up ball of aluminum foil into a campfire and watch it for a bit?" He says, look back.
            "Yeah, didn't we do that once?" You answer.
            "Maybe, but that's what happened to the old one."
            You give him a look of bewilderment. "...How?"
            He laughs at your surprise before calming down. "We would cover the engine with a tarp, right?" 
            "Right." You glance over at a thin, plastic tarp in the corner.
            "That one's a temporary as we try to find one that can keep the engine clean without acting as a personal sauna."
            "Oh." You say. Glancing back over at the new engine.
            "'Oh', indeed." He chuckles, making his way over to the ladder. Just as he was doing that, Billiam's voice called down. "Fish is done, get in here!"
            ~ carl_state -= 1
            ~ billiam_state -= 1
            * [Continue] -> Cont_Boat_Day_1_S_3
    
    = Cont_Boat_Day_1_S_3
        "So," {adam_state > 2: Adam | Carl} speaks up over the plastic "clatter" of "silver"ware. "What's the plan for tomorrow?"
        Billiam finishes chewing and swallows. "You know, there was this old buoy out near the far side that I etched my name into years ago, wanna go add yours?"
        Carl wipes his hands on his jeans, earning a disaproving stare from Billiam, one which he ignores. "That sounds fun, why not?" He folds up his paper plate and stuffs it in the garbage can. 
        "We could even use {adam_state > 2: the metal rods | {billiam_state > 2: one of the extra knives| {carl_state > 2: my pocket-knife}}}, says {adam_state > 2: Adam| {billiam_state > 2: Billiam| {carl_state > 2: Carl}}}, stretching his arms. 
        You all grunt in agreement, the early morning proving too much for you evening people. And with that, the three of you all head down to the sleeping quarters. "Hey, {adam_state > 2: Adam|{billiam_state > 2: Billiam|{carl_state>2: Carl}}}," someone asks.
        You all slip into something comfortable and turn off the overhead lamp. You stay up a bit longer as {adam_state > 2: Adam|{billiam_state > 2: Billiam|{carl_state>2: Carl}}} begins to snore. You had brought your camera, and despite all of the space you had, taking pictures of the open waters just wasn't appealing beyond one or two photos. The buoy, however, would do quite nicely. And with that, you soon pass into sleep from the boat rocking in the waves.
        
        {
        - adam_state == 2: 
            ~ adam_state = 0
            * [Continue] -> On_Boat_Day_2
        - billiam_state == 2:
            ~ billiam_state = 0
            * [Continue] -> On_Boat_Day_2
        - carl_state == 2:
            ~ carl_state = 0
            * [Continue] ->On_Boat_Day_2
        }
        // added this cuz it was breaking otherwise sometimes. idk why though.
        * [Slumber] -> On_Boat_Day_2
=== On_Boat_Day_2
    Day 2
    
    It's a beautiful morning. The sun shines down on the average-sized boat, revealing {adv_conv_adam == 1: two collapsable folding chairs on the front deck}
    
    // Go eat with group. Depending on who has the lowest score, have one question / answer be ignored by the rest of the group, don't make it obvious
    // Maybe some decisions in conversation, nothing big
    // If previously talked with Carl make asking advanced questions available
    
    // Narrator describes the morning
    Sunlight poors into the sleeping quarters through a small port hole, landing right in your eyes. You awake to the hum of the engine, and an empty room. It appears like you were the last to get up.
    Climbing up the ladder, you make your way to the kitchen, passing by Billiam at the helm.
    "Ah! Good morning!", he turns to say with coffee mug in hand. "We're already on our way to the spot. Go ahead and grab something to eat from the kitchen."
    You greet {adam_state > 2: Adam | Carl} in the kitchen, and  have yourself a bowl of ceareal.
    After breakfast, {adam_state > 2: Adam decides to go look through the shelves in the sleeping quarters, just to see what's in there. | Carl then fishes out a realistic platic duck from a duffle bag, and heads to the stern of the ship for reasons unknown...}
    
    In the meantime, what will you do?
    ~ adam_loc = engine_room
    ~ billiam_loc = cabin
    ~ carl_loc = deck_back
    {adam_state > 2: 
    * [Tag along with Adam] -> Cards_Adam
    }
    * [Hang with Billiam while he drives]-> Drive_Billiam
    {carl_state > 2: 
    * [Investigate Carl and his duck] -> Duck_Carl
    }
    

    = Cards_Adam
        ~ player_loc = bedroom
        You tag along with Adam to export the shelves of the sleeping quarters. Each shelf is full of nautical knick knacks and trinkets. 
        "How do these things stay upright out on the sea?", you think outloud.
        "It looks like there's some puddy underneath most of these trinkets to hold them down.", He remarks.
        "Huh. Clever..."
        While snooping around, Adam finds some playing cards and the two of you decide to play a card game.
        // If already speaking with Adam prior, new options, otherwise do the same as the first converstation that would have taken place
        // talk about how it was sleeping on the boat?
        // or maybe the choice here could just be what card game you play.
        
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
        {Cards_Adam: during a moment of intense, yet quiet, card gaming, you hear the muffled gong of a buoy bell from outside. Billiam opens the sleeping quarters hatch and calls down to you two, "We're here!"} 
        
        You step out onto the deck as the ship slows to a crawl.
        "I gotta be real careful with this. I don't wanna scuff up the side of the ship." comments Biliam as he inches it just close enough to the bouy to reach it from the ship's deck, and lowers the anchor.
        
        {adam_state > 2:
        * [Check on Adam] -> CheckOn_Adam
        }
        {carl_state > 2:
        * [Check on Carl] -> CheckOn_Carl
        }
        // The boat reaches the buoy. The ancher is dropped.
        // you can choose to check out the old buoy with Billiam
        * [Check out the buoy with Billiam] ->BuoyCheck_Billiam
        // or you can go hang with the other person who's there
        
        
    = BuoyCheck_Billiam
        ~ player_loc = deck_front
        // You and Billiam check out the buoy 
        // you can choose to write something on it
        ~ adam_state -= 1
        ~ carl_state -= 1
        
        
        * [Take a picture of Billiam and you infront of the buoy]->Picture_Billiam
        
        * [Add your name to the buoy] -> Write_Billiam
        
        = Picture_Billiam
            // you and Billiam pose infront of the buoy for a picture.
             * [Let time pass...] ->Cont_Boat_Day_2_S_3
        
        = Write_Billiam
           // you scratch your name into the pealing paint of the buoy.
            * [Let time pass...] ->Cont_Boat_Day_2_S_3
        
        
    = CheckOn_Carl
        ~ player_loc = bedroom
        // idk, maybe he's doodling in the sleeping quarters.
        ~ adam_state -= 1
        ~ billiam_state -= 1
        
        * [Let time pass...] ->Cont_Boat_Day_2_S_3
        
        
    = CheckOn_Adam
        ~ player_loc = deck_back
        // Adam's just chilling on the back of the boat. You hang with him for a bit.
        ~ carl_state -= 1
        ~ billiam_state -= 1
        
        * [Let time pass...] ->Cont_Boat_Day_2_S_3
    
    = Cont_Boat_Day_2_S_3
        ~ player_loc = deck_back
        // The character with highest "value" asks you to try fishing with them. 
        // the two of you fish for a bit.
        
        * [Let time pass...] ->Cont_Boat_Day_2_S_4
    
    = Cont_Boat_Day_2_S_4
        ~ player_loc = kitchen
        // You go eat lunch with the group (someone's missing)
        * [Let time pass...] ->Cont_Boat_Day_2_S_5
    
    = Cont_Boat_Day_2_S_5
        ~ player_loc = kitchen
        // the player grabs a snack and proposes an idea on what to do next.
        // but then a seagull suddenly attacks and tries to steal some food. halting your proposed plan
        
        // if Adam is still around, He will jump in and try to fend off the bird, and the player will have the option to help.
        // if Adam is not around, the player will have the option to fend off the bird byhimself.
        { adam_state > 1 :
        * [Help Adam fend off the bird] -> FendOffBird_Adam
        }
        { adam_state <= 1 :
        * [Fend off the bird] -> FendOffBird_Alone
        }
        
        = FendOffBird_Adam
            // you grab something and help Adam shoo away the bird
            * [Let time pass...] -> Cont_Boat_Day_2_S_6
            
        = FendOffBird_Alone
            // you grab something try to shoo away the bird. The bird mamages to grab some of your snack though.
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
    Day 3
    
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
            You pace around the deck...
            * [Let time pass..]-> Cont_Boat_Day_3_S_5
        = layInBed
            ~ player_loc = bedroom
            You lie down in bed...
            //maybe if you've taken any photos, you can look at them
            * [Let time pass..]-> Cont_Boat_Day_3_S_5
        = readBook
            ~ player_loc = kitchen
            You find yourself a book and sit down at the kitchen table...
            * [Let time pass..]-> Cont_Boat_Day_3_S_5
    
    = Cont_Boat_Day_3_S_5
        // final dinner alone...
        // you eat dinner alone.
        * [Turn in for the night] -> Night_3
    
    = Night_3
        // you go to bed.
        * [sleep]-> Boat_Day_4

=== Boat_Day_4
    Day 4
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
    
