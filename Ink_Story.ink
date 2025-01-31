


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
A BOAT
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
        "Got it," You say, as you make your way into the cabin and down the ladder. Carl is down there, cleaning the lens of his binoculars while sifting through his notebook.
        "Hey, Carl," You say, as you throw your belongings up to one of the top bunks, "How's it been?"
        "It's been alright," He replies, absorbed in his work, "and you?"
        "About the same."
        "Hey," Adam calls, "Photo-boy, take a picture of us!" You make your way over and huddle together. You hold up the polaroid expendable camera that you brought and take a picture. Billiam's elbow accidently bumps you when you take it, making it a bit lopsided, but it'll do fine.
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
=== On_Boat_Day_2
It's a beautiful morning. The sun shines down on the average-sized boat, revealing {adv_conv_adam == 1: two collapsable folding chairs on the front deck | the slightly damp deck}. If one were to look close enough at the water, they would see several schools of fish swimming about. There's a couple seagulls in the sky, but otherwise, there's not much else going on.
You are awoken by dim sunlight shining through a little port hole, landing right in your eyes. You feel the ships engine already running as you sit up, taking the moment to look around the room. 
Little nautical knick knacks lines the shelfs, held down by some sort of adheasive puddy to keep them from falling off while the ship is in motion. The bunk bed and extra sleeping bag both lay empty with messy sheets. Seems like the other two have already gotten up.
    You get dressed, grab a snack bar, and pull yourself up the ladder into the cabin, where {billiam_state != 0: Billiam | {adam_state != 0: Adam}} is piloting the boat. His hair is a bit messy and he's humming something to himself.
    "Hey, {billiam_state != 0: Billiam | {adam_state != 0: Adam}}," you say, unwrapping the bar and taking a bite. 
    "Morning." he replies. 
    {
        - adam_state == 0:
            * -> Adam_Absent_2
        - billiam_state == 0:
            * -> Billiam_Absent_2
        - carl_state == 0:
            * -> Carl_Absent_2
    }
    
    = Adam_Absent_2
        "Carl is out on the deck messing around with the fishing poles if you're wondering," He says. "If he hooks himself it's his fault, though."
        * [Stay with Billiam] -> B_Pilot_talk
        * [Check on Carl] -> C_Talk
    = Billiam_Absent_2
        "Carl is out on the deck messing around with the fishing poles if you're wondering," He says. "He better not break the poles though."
        * [Stay with Adam] -> A_Pilot_talk
        * [Check on Carl] -> C_Talk
    = Carl_Absent_2
        "Adam should be in the kitchen if you're wondering." He says.
        * [Stay with Billiam] -> B_Pilot_talk
        * [Check on Adam] -> A_Talk
        
    = B_Pilot_talk
        "I'm sure He'll be fine," you laugh, hiding your uncertainty, "What's the worst that could happen?"
        "For starters we don't have anything for medical stuff." He retorts.
        "Oh, well-"
        "I'm joking," he cuts you off, "we have some in the cabinet in the back, no worries." 
        The two of you sit in silence for a bit.
        "Hey," You say, out of the blue, "Who's boat is this anyway, {adv_conv_bill == 1: I can't imagine your job can pay for this." | You said you work at the hotel, right? Can it even pay for this?"}
        "It pays enough that I probably could at some point, but no, this is my mum's old boat." He towards you, "Don't you remember when we went out on the lake?"
        You shake your head, you would have thought you would've remembered that. 
        "Huh, then it must have been... {adam_state <= 0: No, I guess it was just me and him." | Adam, I think."}
        The two of you hang out for a bit longer, until you start to see a colorful object in the distance.
        "Hey," You say, pointing at whatever it was, "Is that it?"
        "Looks like it, yeah."
        ~ adam_state -= 1
        ~ carl_state -= 1
        * [Continue] -> Day_2_Buoy
    = A_Pilot_talk
        "Let's hope not," You say, "But it should be fine." You go out to the front deck and grab the chair Adam left outside the day day prior. You set it down close to the chair Adam is on and the two of you sit in silence as he makes his way towards the buoy's location.
        "Hey, how do you know where we are going, anyway?" You ask, breaking the silence.
        "GPS, satellite stuff and all that," He says, eyes still on the waters. "If you want me to explain how that works I don't know what to tell you." 
        You chuckle. "Just make up some bull and we'll go with it."
        "Fish magic."
        "I thought it uses satellite?"
        "SPACE fish magic." he retorts.
        "I wonder what cosmic beings feed their space fish." You wonder aloud.
        "Planets." He says, matter-of-factly.
        "Isn't that just Galactus?"
        "Is Galactus a space fish?"
        "Shuddup." You fake pout and settle back into your seat. Not too long later, an object came be seen on the waters in the distance.
        "Looks like that's it," Adam says, "I've been up piloting this for a long while, when we get there, I'm taking a nap, you and Carl can etch your names in it."
        "Aye, Aye, captain."
        ~ carl_state -= 1
        * [Continue] -> Day_2_Buoy
    = C_Talk
        You leave the cabin and approach Carl, who looks to be attatching a plastic duck to one of {adam_state != 0: Adam's | the} fishing lines.
        You pat him on the shoulder to let him know you're there and stand alongside him. "Mind if I ask what you're up to?"
        Carl gives you a mischievious look, "Attaching Sir Reginald to the fishing line so I can drag him alongside the boat."
        "Sir... Reginald?" You mutter, confused. "Wait, where did you get that anyway?"
        "It's a company sample." He replies, "You know where I work, right?" He finishes up with hooking the duck- Sir, Reginald, sorry, to the rod, and checks if it'll stay on. Satisfied he throws it into the water.
        "No," You rub the back of your head, "I'm just realizing I never asked before."
        He sighs, fidgeting a bit. "I, uh," He pauses, then gets over it. "I co-run a rubber ducky making business."
        "Okay, you're blowing smoke." You say, laughing, but stop once you realize his face is clearly not joking. "Oh, wait, really?"
        "Yeah. It's weird." He shrugs, "But, hey, I get to help design them and I get to express my love of birds!"
        "Neat," You say, somewhat tainted by envy, "From what it sounds like the two of you have gotten jobs you enjoy." 
        He pauses, then pats you on the back. "You'll get that job you wanted, photography, was it?" 
        "Yeah." You grumble. You've put your work out there to no avail. 
        "You bring your fancy camera?" He asks, beginning to reel Sir Reginald (TM) in.
        "No, didn't want to risk it," You reach into your pocket and pull out a small disposable polaroid camera. "Got this, though."
        "You mind taking a picture?" He asks, lifting the rod up and holding the line so that it looks like he's showing off a fish he caught.
        "Sure, I guess." You take a picture, and as you're waiting for it to finish developing, the two of you hear {adam_state > 0: Adam | Billiam} call out.
        "We're here!"
        ~ billiam_state -= 1
        ~ adam_state -= 1
        * [Continue] -> Day_2_Buoy
    = A_Talk
    "Hey, Adam, whatcha up to?" You say as you walk into the kitchen. 
    "Just making some sandwhiches, want one?" He replies. Looking back down at his handiwork.
    "Have you already made them?" You ask, walking over.
    "Just made mine, help me make two more for the both of you."
    As you do this, the two of you talk about random things that come to mind. Time passes, and soon enough Billiam calls out from the cabin.
    "We're here!"
    ~ billiam_state -= 1
    * [Continue] -> Day_2_Buoy
    
    = Day_2_Buoy
        The boat saddles up next to the orange and white buoy, rocking it a bit. {billiam_state > 0: Billiam | Adam} steps out of the cabin and meets up with you and {carl_state > 0: Carl | Adam}. 
        The buoy isn't much to talk about, aside from {billiam_state > 0: a weathered, but still slightly visible name. Billiam. | its completely smooth surface.}
        "Sweet," {carl_state > 0: Carl says, "I've got a pocket knife we can use." Taking it out as {billiam_state > 0: Billiam | Adam} holds it still. | Adam says, "I'll go grab those rods." When he comes back, Billiam holds it steady.} The {billiam_state > 0: two | three} of you take turns etching your names into the buoy. Once done, you admire your work.
        "Your hand-etching is terrible." {carl_state > 0: Carl | Adam} chastises.
        "So is yours. " You reply.
        "Shut up, the both of you." {billiam_state > 0: Billiam sighs. | Adam laughs.}
        "Well, now what." You ask. As it begins to drizzle.
        "Well," {billiam_state > 0: Billiam | Adam} says, "theres an island west of here," He stops to correct himself, "Well, more like a weird sandbar, but we can go check that out?"
        "Yeah, lets do that." You decide. The other nods in agreement. 
        "Parker," {billiam_state > 0: Billiam | Adam} looks over at you, "I'll put the location in the GPS, do you mind getting us there? You remember how to drive, right?"
        "Yeah, no worries." You assure him, and make your way to the cabin. The other two both know how to drive, and to be honest with yourself you don't have much confidence.
        
        {
            - billiam_state > 0 && adam_state > 0:
                * [Ask Billiam to stay] -> Bill_Talk_2
                * [Ask Adam to Stay] -> Adam_Talk_2
            - billiam_state > 0 && carl_state > 0:
                * [Ask Billiam to stay] -> Bill_Talk_2
                * [Ask Carl to stay] -> Carl_Talk_2
            - else:
                * [Ask Adam to stay] -> Adam_Talk_2
                * [Ask Carl to stay] -> Carl_Talk_2
        }
        
        = Bill_Talk_2
            "Actually," You call out to Billiam before he goes down to the sleeping quarters, "You mind staying up here just so I can get you quickly if I mess something up?"
            Billiam smiles, "Sure, but don't talk my ear off, I'm tired."
            "You got it, boss."
            Billiam pulls open the collapsed chair and lays down on it. You continue on to your destination. Billiam begins to snore, making you laugh quietly to yourself.
            ~ carl_state = 0
            ~ adam_state = 0
            * [Continue] -> Island
        = Adam_Talk_2
            "Actually," You call out to Adam before he goes down to the sleeping quarters {billiam_state > 0: with Billiam. |}, "You mind staying up here just so I can get you quickly if I mess something up?"
            Adam smirks, "Sure, we both know you'd get lost in an open parking lot."
            "I'm not that bad." you grumble, "I think."
            "Hence why," Adam grunts as he flops himself onto the collapsible chair, "I'm here, to make sure you don't send the two of us to the Bermuda Triangle."
           "I'd probably manage to find a way to send us off the edge of the world, first."
           He laughs, and the two of you sit in silence as you make your way to the sandbar.
            ~ carl_state = 0
            ~ billiam_state = 0
            * [Continue] -> Island
        = Carl_Talk_2
            "Hey, Carl," You call out to him just before he goes all the way down the ladder into the sleeping quarters, "Mind keeping me company?" 
            "Sure, why not?" He says, pulling himself back up and grabbing the chair- more akin to those sunbathing things you lay on- and laying down on it. He suddenly clutches his head, wincing.
            "You alright?" You ask, eyes still on the water, not like there was traffic to worry about, being on a boat and all.
            "Augh." He groaned, "Yeah, I'm fine, just a headache." He blocks his eyes with his hands and sighs.
            "Doesn't look fine," You press, "You can go below if you want?"
            "Yeah, I will, thanks. Sorry." He slowly makes his way down the ladder. "Hey," He suddenly calls back up, "Is something wrong with the bunk bed?"
            You pause to think. "There shouldn't be anything wrong, what's up?"
            "We just have two sleeping bags down here, don't know why else we'd bring them." He calls back up. You hear some shuffling below as he moves them around.
            "There probably is, then." You decide, "Use the sleeping bag then." There's no response, and you take that lack of answer as him falling asleep. Poor guy.
            ~ billiam_state = 0
            ~ adam_state = 0
            * [Continue] -> Island
            
        = Island
            Despite how fun piloting the boat is, you have to admit that at the speed you're going, it lost it's charm and became mind-numbing real quick.
            ...
            It almost seems like the boat is moving a lot slower than normal. Maybe {adam_state > 0: Adam concerns | your concerns} were right earlier about the engine. 
            ...
            You look down at the GPS. Not too long now.
            ...
            You seem to be forgetting something. Or multiple somethings. Your head starts to hurt whenever you try to think about that.
            ...
            {
                - carl_state > 0 || adam_state > 0: 
                    You rented this boat, right? Probably should make sure it's clean when you get back. You winced as the pain came back, twice as hard. The pain hurt so much you forgot what you were just thinking about. The pain went away as fast as it had came.
                        ...
            }
            You can see what looks like a very small patch of sand. Looks like you're here. 
            * [Continue] -> island_2
            = island_2
            "Hey, {billiam_state > 0: Billiam," | {carl_state > 0: Carl," | Adam,"}} you say, "We're here."
            "Alright, alright." He grumbles, "I'm coming."
            The two of you make your way off the boat and onto the island. 
            There's not much to see here, it's dotted with reeds, but not much else. The water isn't sparkly and it isn't as big as you were hoping. 
            You start to question why you came. {billiam_state > 0: But you weren't going to ask Billiam about it, he seemed happy with it. | {adam_state > 0: But you weren't going to ask Adam about it, he seemed happy with it. | But you didn't want to think about it too much, it made your head hurt.}}
            The two of you look around for anything interesting. There's some driftwood and some shells. The shells must have been clams because they've been pecked open and smell horrible. Not very good souviners, and you could always get reeds somewhere else.
            The seagull overhead lands on the ship, then flaps into the kitchen. Shoot, you forgot to close the door.
            You scramble onto the ship, your head is pounding, and this little thief is not helping. You shoo the gull out of the kitchen, but not before it takes one of your precious bread slices. Pesky birds.
            You shake your fist at it as it makes its great escape.
            You're tired, you need to work on your cardio if getting back onto the boat took that much out of you. You make sure both the kitchen and cabin doors are closed, then make your way down the ladder and to bed.
            ...
            * [Continue] -> q_ins_1
            = q_ins_1
                Why were there so many sleeping bags? Your head hurts.
                ...
                * [Continue] -> q_ins_2
            = q_ins_2
                You pick up one of the photos you took, a mostly spotless faded orange and white buoy. It has your name etched into it.
                ...
                * [Continue] -> q_ins_3
            = q_ins_3
                You drift off to sleep. You feel...
                ...
                Nothing.
            * [Continue] -> Day_3

=== Day_3
    It's a foggy morning, and a single boat drifts in the waves. Or, at least the latter half, the front seems to have been grounded on a small island. The island isn't very large, it's dotted with reeds, not enough to hide the ground from a bird's-eye-view, but just enough that you wouldn't mistake for a sandbar. The sand is off-brown white-ish... it's tan. It's tan. Not the well-grained type that you'd find in tourist places like certain beaches in Hawaii, more like the type where if it gets wet enough, you might mistake it for mud. There's some seashells here and there, most of them pecked open, but it looks there's a hermit crab making it's way onto the deserted island.
        There are no footprints, no one has been there for a while.
        * [Continue] -> s_1
    = s_1
    The boat, however, is arguably more interesting. It's a bit damp, shaded dark grey and a very weathered grape. It has a flag on the top, handrails, and two doors. One that opens to the main cabin, and the other that opens to the kitchen.
        * [Continue] -> s_2
    = s_2
    The cabin has a collapsable chair next to the chair in front of the controls. The windows are fogged, and a cabinet is open. There's hatch that leads down to the sleeping quarters. There are two sleeping bags, one of them is still warm, a bunkbed, a shelf of trinkets, a cabinet hidden behind a mirror. There are some photos on the ground, next to a polaroid camera. There's picture of an orange and white, spotless buoy. Another picture showing a fishing rod, with a rubber duck attached to the hook. The latter picture is different, because instead of focusing on the beautful duck, it seems to be focused behind it.
    * [Continue] -> s_3
    = s_3
    Back up above, the kitchen is well used. There's an open peanut butter jar, a jam-coated knife ruining the perfect counter, and some bread scattered across the floor. Rye Bread, to be exact. Not moldy. Yet. There's a picture of the boat on the table, it's a bit lopsided, and the name of the boat is slightly off-frame. Whoever took the picture did a lousy job.
        * [Continue] -> s_4
    = s_4
        ...
        * [Continue] -> s_5
    = s_5
        ...
        * [Continue] -> s_6
    = s_6
        ...
        My head hurts.
        * [Continue] -> s_7
    = s_7
        ...
        ...
        ...
        ...
        ...
        AN EMPTY BOAT

    -> END
