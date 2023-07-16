//
//  Story.swift
//  Spider-Man Adventure Story
//
//  Created by richard Haynes on 7/14/23.
//

import Foundation
struct Story {
    static let paths: Array = [
        // 0
        Path(storyText: #"As Spider-Man you've just gotten a nice hot cup of coffee from your favorite deli. It's a cold night and a nice hot cup of coffee does wonders to keeping the body warm. As you take a big sip your phone goes off. Your Spider-Tracer app has made an alert because it's detecting traffic on the police scanner. You listen in and here there is an armored car robbery. The location of the robbery says it's moving down main. "How can a robbery be moving?". You chug your coffee and start swinging down main street and as you do your Spider-sense goes off and you see what looks like someone in the Vulture suit carrying an armored car."#, choice1Text: "Make a giant web infront of Vulture stopping him and the armored car", choice1DestinationIndex: 1, choice2Text: "Make two web lines stopping only the Vultures wings from moving forward", choice2DestinationIndex: 2, storyImage: "vulture", endOfStory: false),
        
        // 1
        Path(storyText: #"Spider-Man: "Toomes I don't know how you got out of jail but I thought you would have been done with all this crime stuff?." Vulture:"Who ever said I was Toomes's" With a shocked look on his face Spider-Man watches as Vulture releases his claws he was using to carry the truck."#, choice1Text: "Shoot a single webline that catches the truck while you stick to the side of a near by building .", choice1DestinationIndex: 3, choice2Text: "Jump down on the top of the truck in mid-air and fire two web lines to opposing buildings to stop the truck.", choice2DestinationIndex: 2, storyImage: "vulture", endOfStory: false),
        
        // 2
        Path(storyText: #"Spider-Man secures both lines to the truck and then checks on the guards to make sure they are ok. Both confirm they are alright but as soon as they do Spider-man's spider-sense goes off. He jumps off the truck as Vulture lands on top of it with his claws. He tries to fly away with the truck again but is not able to pull the truck away from the webs. Spider-Man swings towards Vulture. Vulture gets ready to use one of his wings to cut the web and as soon as he does Spider-Man lands a punch on Vulture causing him to let go off the truck right as he cuts the web."#, choice1Text: "Swing and grab the Vulture.", choice1DestinationIndex: 3, choice2Text: "Ignore the falling Vulture and grab the other webbing keeping the truck up.", choice2DestinationIndex: 4, storyImage: "vulture", endOfStory: false),
        // 3
        Path(storyText: #"The truck slams into the side of the wall Spider-Man: "Oh no!". Vulture sees that in Spider-Mans' worry for the guards inside the truck he was vulnerable and flies in for an attack. Miniguns appear out his wings and he starts shooting at Spider-Man. Before he could even fire Spider-Man's spider-sense warned him. He pins he webline to the wall and jumps to left out of the path of fire and quickly shots out 3 webs. Two covering the guns and the last right into Vultures face causing Vulture to struggle since he's flying blind."#, choice1Text: "Jump in the air and kick Vulture.", choice1DestinationIndex: 5, choice2Text: "Jump down on to the armored truck and check on the guards.", choice2DestinationIndex: 4, storyImage: "vulture", endOfStory: false),
        // 4
        Path(storyText: #"After checking you find that both guards are hurt but still alive. Meanwhile Vultureu struggles with the webbing stuck to his helmet. His gloves even getting stuck on his helmet. He then drags his hands out of his gloves and removes his helmet. Getting angry Vulture then flies in Spider-Man's direction."#, choice1Text: "Jump in the air and kick Vulture.", choice1DestinationIndex: 5, choice2Text: "Watch as Vulture decided to run away and you leave him for the police and worry about who is later.", choice2DestinationIndex: 6, storyImage: "vulture", endOfStory: false),
        // 5
        Path(storyText: #"The kick to Vulture completely knocks the wind out of him. Spider-Man lands back on the wall of the near by building and makes a web line the grabs the out of control floating Vulture and yanks Vulture towards him. He quickly pins him to side of the wall with webbing and then rips out the circuitry that keeps Vultures wings flying having memorized the important components from his original fight. He jumps down to check on the guards. He finds both are hurt but still alive and gently gets them each out of the truck one at a time. Spider-Man then swings back up to Vulture and removes Vulture's helmet."#, choice1Text: "Try to wake up the new Vulture to find out who he is.", choice1DestinationIndex: 7, choice2Text: "Leave Vulture unconcious and leave him for the police and worry about who is later.", choice2DestinationIndex: 6, storyImage: "vulture", endOfStory: false),
        // 6
        Path(storyText: #"Spider-Man returns to his apartment and removes his costume to into normal clothes as Peter Parker. With the Vulture defeated he decides he's had enough crime fighting for one night and lays on his bed and goes to sleep. The next morning while getting some coffee again from his favorite deli he reads an article on his phone about his fight with the new Vulture. He reads his name was Raniero Drago and he was a former employee of Toomes who'm was fired and stole one of his remaining Vulture suits as payment. "#, choice1Text: "", choice1DestinationIndex: 0, choice2Text: "", choice2DestinationIndex: 0, storyImage: "vulture", endOfStory: true),
        // 7
        Path(storyText: #"Spider-Man goes back up and sees a face that isn't Adrian Toomes. He wakes up this new Vulture and asks Spider-Man: "Ok who the heck are you and how did you get this suit?". Vulture: "The name's Raniero, Raniero Drago. I used to work for Toomes but that smuck let me loose before you sent him away. He still owed me money but I decided to collect one of his back up suits instead." While Vulture is talking Spider-Man's spider-sense goes off. He quickly dodges Vulture trying to attack him with one of his wings by somersaulting to a different section of the building wall they were on. Vulture uses his wing to free himself from the webbing but hasn't realized Spider-Man disable his flight ability and starts falling. Spider-Man fires a web line and catches him and like a true spider wraps Vulture in a web cocoon and leaves Vulture for the police and swings off."#, choice1Text: "", choice1DestinationIndex: 0, choice2Text: "", choice2DestinationIndex: 0, storyImage: "vulture", endOfStory: true),
    ]
}




