puts " You are sent to prison for a crime you are not responsible for... 
        
        Do you choose: 
        
        A. Try to break out of prison
        B. Talk with the lawyers
        C. Befriend your inmates ass they give you valuable advice to survive prison"
        
print ">"

class scene
        def(enter)
        puts "You are sent to prison for a crime you are not responsible for... 
        
        Do you choose:" 
        puts "A. Try to break out of prison"
        puts "Talk with the lawyers"
        puts " Befriend your inmates ass they give you valuable advice to survive prison"
        exit (1)
    end 
end 

class lawyers < class scene
        def(initialize)
          @scene_map = scene_map
        end 
        
        def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    # be sure to print out the last scene
    current_scene.enter()
  end
end
end

class CentralCorridor < Scene

  def enter()
    puts " The attemp is successful but now you are a fugitive from the law "
    puts "Do you choose to hide in a foreign country"
    puts "Get plastic surgery and hide your identity"
    puts "\n"
    print "> "

    action = $stdin.gets.chomp

    if action == " Hide in a foreign country"
      puts "Quick on the draw you yank out your blaster and fire it at the Gothon."
      puts "His clown costume is flowing and moving around his body, which throws"
      puts "off your aim.  Your laser hits his costume but misses him entirely.  This"
      puts "completely ruins his brand new costume his mother bought him, which"
      puts "makes him fly into an insane rage and blast you repeatedly in the face until"
      puts "you are dead.  Then he eats you."
      return 'death'

    elsif action == "plastic surgery"
      puts "Like a world class boxer you dodge, weave, slip and slide right"
      puts "as the Gothon's blaster cranks a laser past your head."
      puts "In the middle of your artful dodge your foot slips and you"
      puts "bang your head on the metal wall and pass out."
      puts "You wake up shortly after only to die as the Gothon stomps on"
      puts "your head and eats you."
      return 'death'

    elsif action == ""
      puts "Lucky for you they made you learn Gothon insults in the academy."
      puts "You tell the one Gothon joke you know:"
      puts "Lbhe zbgure vf fb sng, jura fur fvgf nebhaq gur ubhfr, fur fvgf nebhaq gur ubhfr."
      puts "The Gothon stops, tries not to laugh, then busts out laughing and can't move."
      puts "While he's laughing you run up and shoot him square in the head"
      puts "putting him down, then jump through the Weapon Armory door."
      return 'laser_weapon_armory'

    else
      puts "DOES NOT COMPUTE!"
      return 'central_corridor'
    end
  end
end

if choice == A 
        puts " The attempt is successful but now you are a fugitive from the law ... 
        
        Do you choose:" 
        
        puts "1. To hide in a foreign country"
                "They catch you and you go back to prison. The end"
        puts"2. To get plastic surgery to hide your identity"
                "Surgery is successful and you live free for the rest of your life!"

        
        print ">"
        
end
        
        if choice == B 
                puts " The lawyers are having trouble with your case... 
                        The judge is issuing a preliminary hearing and a court case is likely
                        Do you choose:"
                puts "1. Do you choose to give the bail of 5 million dollars and relinquish your passport?"
                        You stay under house arrest for 1 year and become free!

                puts "2. Plead not guilty?"
                        You become free but must pay $10 billion in legal fees!

                
        print ">"
end
        
        elsif choice == C
                puts " The inmate you befriend turns out to be innocent as well.They lied to protect one of
                their family members. When you are done serving your five years they have a task for you ... 
                
                Do you choose:"
                
                puts " 1. Accept the task "
                The task turns out to be money laundering and you go to prison for the rest of your life! 

                puts "2. Reject the task"
                You are a free man!

        end 
        
        
