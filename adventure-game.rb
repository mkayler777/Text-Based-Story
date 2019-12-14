def anim (str)
    str.each_char do |n|
        print n
        slt = rand(0.01..0.04)
        sleep(slt)
    end
    print "\n"
    sltime
end

def sltime
    time = rand(0.1..0.3)
    sleep(time)
end

anim('With the moon high in the sky, and your last dime spent, the angry bartender demands you pay your tab. You refuse slurring every word begging for another drink. You get thrown out of the tavern, and in a drunken state you stumble to your feet. What is your name adventurer?')
user = gets.chomp
anim("Hello #{user}, welcome to your ADVENTUREEEE!!!")
anim('You walk up to a weathered poster and in big bold letters you see REWARD!! Underneath is a familiar sight and you are astonished to see...')
user_goal = gets.chomp
anim("Being broke, drunk, and maybe not the brightest you decide to take on this adventure now. Choose your path, 1 or 2")
anim("1. Walk")
anim("2. Get a companion")
travel_options = gets.chomp


def ending user_goal
    puts ""
    anim("After a long and trecherous journey you are at the brink of exhaustion and fatigue. You are hungry and crave a cold beverage. As you weep, regretting the pursuit of this reward you hear a hollering in the distance. As you walk closer you notice a decrepit barn with a dim light peering from through its shattered windows. You approach slowly and open the creaking door. Low and behold, there they are, #{user_goal} next to her Holiness, the Queen jamming out to punk rock. You are amazed by this sight and as you approach them to ask questions you are snapped out of your vivid dream as the sun hits your face. You find that you had never left the steps of the tavern and walk back inside to drink again...")
end

def forest_option user_goal
    anim('As you push your way through shrubbery and bushes you make your way into the Magical Forest where two distinct paths stand before you. Do you follow the clearing through the trees, or the sparkling fairy dust?')
    forest_travel = gets.chomp.downcase
    if forest_travel == 'trees'
        anim('You arrive at a raging river uncrossable by any sane person. As you contemplate your decisions a River Spirit appears spinning herself into existance from the waters! She envelops you in water and exclaims loudly: "To leave this place alive you must answer this riddle, and answer it correctly." You are absoultely terrified and know a decision must be made.')
        anim('The River speaks and says "I am the beginning of the end, and the end of time and space. I am essential to creation, and I surround every place. What am I?"')
        riddle_answer = gets.chomp.downcase
            if riddle_answer == 'e'
                anim('"You have completed my riddle, and I will allow you to pass" exclaims the River Spirit as you see the trees of the forest bend across the river allowing passage across the frothy waters below.')
            ending user_goal
            else
                anim('"Your journey ends here adventurer!" Proclaims the River Spirit as you are crushed by the enveloping water.')
            end
    elsif forest_travel == 'fairy'
        anim('The sparkles and light of the Magical Forest fairy dust compel you to follow. As you chase them through the trees, your vision begins to fade, and you start to feel exhausted. You awaken where you had previously stood, staring at what you know to be the Magical Forest realising that the fairy dust was all an illusion.')
        forest_option user_goal
    end
end

def boat_option user_goal
    boat_path = gets.chomp.downcase
    if boat_path == 'bow'
        anim('You grab hold of the bow and realize that only a couple arrows lay beside it. You sense time running out and quickly fire off the first arrow, missing the monster completely. You take a deep breath and grab the second arrow loading it onto the bow. Knowing this is your last shot you aim, hold steady, then release driving the arrow straight into the monster. You hear him let out a bellowing roar as he slowly sinks back into the crimsoning waters. Shaken, you continue...')
        ending user_goal
    elsif boat_path == 'passive'
        anim('You let out a squeal, only comparable to a boiled tea kettle as you surely wet your pants. You being to cry and beg for your life as the monster makes their way alongside the boat. Things go quiet. You look up and realize you had been pushed ashore. As you look back in disbelief you see a shadowy firgure retreating back into the depths of the lake.. Shaken, you continue...')
        ending user_goal
    else
        anim('Please choose bow or passive.')
        boat_option user_goal
    end
end


# def desert_option user_goal
#     puts ""
#     anim('As you approach the pyramid, you push on the heavy metal door and make your way inside. You spot a door on the other side of the room with the intent to head towards it. Right as you are taking the first step, you realize the middle of the room is littered with traps. You decide to choose a path: left or right')
#     desert_path = gets.chomp
#     if desert_path == 'left'
#         anim('As you follow the left path along the wall to avoid the trap, you proceed with caution. As you get partly through the room, a scarab climbs on your shoulder startling you, making you lose your footing and fall on a trap. As you try to get up, you feel your body deteriorating. The pyramid has now claimed another body.')
#     elsif desert_path == 'right'
#         anim('')
#     end
#
# end

def lake_option user_goal
    anim('You stumble upon a foggy lake and progress towards a dock where before you sits a lonely boat. Do you choose to ride the boat across the lake, or swim?')
    lake_path = gets.chomp.downcase
    if lake_path == 'boat'
        anim('You hop on the boat and begin slowly sailing across the quiet water. You cross half of the lake when a thunderous rumbling begins to sound under the water. As you hold on to the shaking boat you see a giant lake monster apear from below, when you look down you notice a bow and arrow on floor of the boat. Do you choose to stay passive or attack the monster.')
        boat_option user_goal
    elsif lake_path == 'swim'
        anim('You start swimming and quickly realize you are no match for the frigid waters of the lake. You start feeling your body being pulled into the depths, as you try to kick to avoid this sensation you are dragged down into the dead quiet of the dark waters. As you struggle holding your last breath, another tug yanks you through a dark hole at the bottom. You close your eyes out of fear and before you know it the water is gone. You look around only to notice youre now in the middle of a blazing desert, and realise you are trapped.')
        # desert_option user_goal

    else
        anim('Please choose boat or swim.')
        lake_option user_goal
    end
end



def paths user_goal
    anim("Choose one of the below, enter lake , forest or land")
    anim("Crystal Lake")
    anim("Magical Forest")
    anim("Candy Land")
    path_option = gets.chomp.downcase
    if path_option == 'lake'
        anim("You make the hasty decision to cross the Crystal Lake.")
        lake_option user_goal
    elsif path_option == 'forest'
        anim('You feel safer on land, and decide to take your chances with the Magical Forest.')
        forest_option user_goal
    elsif path_option == 'land'
        anim('Your love for candy has rotted your brain and you follow the path as you nibble your way through Candyland. You quickly become overwhelmed by all the candy, sending you into a severe, fatal sugar coma.')
    else
        anim("Choose the valid options lake , forest or land.")
        paths user_goal
    end
end


def validate_companion_option user_goal
    #  getting a partner
    # choose the companion dog, cat or horse
    anim("choose the companion from the below options")
    anim("Horse")
    anim("Dog")
    anim("Cat")
    companion = gets.chomp.downcase
    if (companion == 'horse' || companion == 'dog'|| companion == 'cat')
        anim("You are not willing to take this journey alone and insist on taking your trusty #{companion.capitalize} with you.")
        paths user_goal
    else
        anim("Choose the valid options horse,dog or cat.")
        validate_companion_option user_goal

    end
end

def  validate_travel_option travel_options,user_goal
    if travel_options == '1'
        # walkinhg alone
        anim('Bravely, or just drunkenly you decide to travel alone...')
        paths user_goal

    elsif travel_options == '2'
        validate_companion_option user_goal
    else
        anim("Choose the valid options 1 or 2")
        travel_options = gets.chomp
        validate_travel_option travel_options,user_goal
    end

end

validate_travel_option travel_options,user_goal
