class Scene
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
    exit(1)
  end
end
class Engine

  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    next_scene_name = current_scene.enter()
    last_scene = @scene_map.next_scene('finished')

    while current_scene != last_scene
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    # be sure to print out the last scene
    current_scene.enter()
  end
end
class Death < Scene

  @@quips = [
    "You kinda suck at this.",
     "Your mom would be proud...if she were smarter.",
     "Such a loser.",
     "I have a small puppy that's better at this."
  ]

  def enter()
    puts @@quips[rand(0..(@@quips.length - 1))]
    exit(1)
  end
end
class CentralCorridor < Scene

  def enter()
    puts "Welcome to game"
    puts "Possible responses are in * *"
    puts "*Like This*"
    puts "Please answer in lower case"
    puts " _________________________________________________"
    puts "You are sent to prison for a crime you are not responsible for..."
    puts "They handcuff you and you are sent to a cold room"
    puts "You need to make a decision"
    puts "Do you choose ..."
    puts "A. Try to *break out* of prison"
    puts "B. Talk with the *lawyers*"
    puts "C. Befriend your *inmate* as they give you valuable advice to survive prison"
    puts ""
    puts "\n"
    puts "Be careful with your choice ..."
    puts " It could mean the difference between freedom and imprisonment"
    puts " Each choice has its own pros and cons "
    puts "Weigh them accordingly!"
    print "> "

    action = $stdin.gets.chomp

    if action == "break out"
      puts "It was difficult to break out"
      puts "But you were patient and waited for your opportunity"
      puts "When that opportunity arrived you seized the day"
      puts "But alas you are one man running away from an army"
      puts "they eventually catch up to you"
      puts "You get caught and sent back to prison!"
      puts "Game over!"
      return 'Death'
      
    elsif action == "lawyers"
      puts "You chose to consult with your lawyers"
      puts "Their fee is $10,000,000 "
      puts "Do you choose to *pay* or *not pay*"
      return 'lawyers'

    elsif action == "inmate"
      puts "The inmate you befriend is nice"
      puts "You learn tricks to survive prison"
      puts "You are Oliver Twist to the artful dodger"
      puts "He has a task for you"
      puts "Do you choose *yes* or *no*"
      return 'death'
    else
      puts "DOES NOT COMPUTE!"
      return 'court'
    end
  end
end



class Court < Scene

  def enter()
    puts "You sit in the court room waiting ..."
    puts "You hear the sounds of the court room as the judge enters"
    puts "You stand up "
    puts "You hear the gavel bang"
    puts "The judge says the court is now in session"
    puts "They start to let the witnesses speak"
    print ">"
    
     action = $stdin.gets.chomp

    if action == "wife"
      puts "She gets up and testify"
      puts "She recounts the story"
      puts "The story does not goes in your favor"
      puts "You eventually get to cross examine"
      puts "the cross examine fails"
      puts "Court goes wrong"
      return 'death'
      
    elsif action == "son"
      puts " He does not say good things about you"
      puts " Your lawyer gets to cross examine him"
      puts "The cross examine goes wrong"
      puts " You remain in prison"

    elsif action == "neighbor"
      puts "The neighbor is impartial"
      puts "You start to feel hope"
      puts "His statement is in your favor"
      puts "The judge finds you not guilty"
      puts "You are a free man"
      return 'Result'
    else
      puts "DOES NOT COMPUTE!"
      return "the_judge"
    end
  end


end


class TheJudge < Scene

  def enter()
    puts ""
    puts "under your arm and surprise 5 Gothons who are trying to"
    puts "take control of the ship.  Each of them has an even uglier"
    puts "clown costume than the last.  They haven't pulled their"
    puts "weapons out yet, as they see the active bomb under your"
    puts "arm and don't want to set it off."
    print "> "

    action = $stdin.gets.chomp

    if action == "wife"
      puts "She gets up and testify"
      puts "She recounts the story"
      puts "The story does not goes in your favor"
      puts "As you die you see another Gothon frantically try to disarm"
      puts "the bomb. You die knowing they will probably blow up when"
      puts "it goes off."
      return 'death'
      
    elsif action == "son"
      puts " He does not say good things about you"

    elsif action == "neighbor"
      puts "You point your blaster at the bomb under your arm"
      puts "and the Gothons put their hands up and start to sweat."
      puts "You inch backward to the door, open it, and then carefully"
      puts "place the bomb on the floor, pointing your blaster at it."
      puts "You then jump back through the door, punch the close button"
      puts "and blast the lock so the Gothons can't get out."
      puts "Now that the bomb is placed you run to the escape pod to"
      puts "get off this tin can."
      return 'Result'
    else
      puts "DOES NOT COMPUTE!"
      return "the_judge"
    end
  end
end


class Result < Scene

  def enter()
    puts "You rush through the ship desperately trying to make it to"
    puts "the escape pod before the whole ship explodes.  It seems like"
    puts "hardly any Gothons are on the ship, so your run is clear of"
    puts "interference.  You get to the chamber with the escape pods, and"
    puts "now need to pick one to take.  Some of them could be damaged"
    puts "but you don't have time to look.  There's 5 pods, which one"
    puts "do you take?"

    good_pod = rand(1..5)
    print "[pod #]> "
    guess = $stdin.gets.chomp.to_i

    if guess != good_pod
      puts "You jump into pod %s and hit the eject button." % guess
      puts "The pod escapes out into the void of space, then"
      puts "implodes as the hull ruptures, crushing your body"
      puts "into jam jelly."
      return 'death'
    else
      puts "You jump into pod %s and hit the eject button." % guess
      puts "The pod easily slides out into space heading to"
      puts "the planet below.  As it flies to the planet, you look"
      puts "back and see your ship implode then explode like a"
      puts "bright star, taking out the Gothon ship at the same"
      puts "time.  You won!"


      return 'finished'
    end
  end
end

class Finished < Scene
  def enter()
    puts "You won! Good job."
  end
end

class Map
  @@scenes = {
    'central_corridor' => CentralCorridor.new(),
    'court' => Court.new(),
    'the_judge' => TheJudge.new(),
    'result' => Result.new(),
    'death' => Death.new(),
    'finished' => Finished.new(),
  }


  def initialize(start_scene)
    @start_scene = start_scene
  end


  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end
end
a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()
