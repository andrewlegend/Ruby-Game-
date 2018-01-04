class Scene
    
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
    exit(1)
  end
  
end

class End < Scene
    
  @@quips = [
    "Hopefully you are happy with your grade so far...",
    "There is still 5 months left",
    "Plenty of time left right ...?",
    "Your grade is not final. That's in June. Better watch out!",
  ]

  def enter()
    puts @@quips[rand(0..(@@quips.length - 1))]
    exit(1)
  end
end


class Class_Selection < Scene

  def enter()
    puts "Choices need to be written out in full sentences."
    puts "The choice are indicated with *surrounding*."
    puts "\n"
    puts "After getting into the Browning School"
    puts "You get to choose what classes to take."
    puts "Very successful students have went to Browning including:"
    puts "Jamie Dimon, John D Rockefeller Jr, and other people who I don't know their names"
    puts "All of these alumni are great but you can be even greater than them"
    puts "\n"
    puts "The potential class are *AP_CompSci*, *Advanced_Topics*"
    print "> "

    action = $stdin.gets.chomp

    if action == "AP_CompSci" || action == "AP_Compsci"
      puts "\n"
      puts "Computer-Science at Browning is very serious because you get to learn important life skills like Ruby "
      puts "But you like your teacher very very much"
      puts "If you work hard and not fall asleep you should get a decent grade"
      return 'AP_CompSci_0'
    
    
    elsif action == "Advanced_Topics" || action == "advanced_Topics"
      puts "\n"
      puts"This class is very unique"
      puts "It was easy, then hard, then easy, then hard again"
      puts "You don't know what to expect"
      return 'Advanced_Topics_0'
    
    else
      puts "DOES NOT COMPUTE!"
      return 'Class_Selection'
    end
  end
end

class AP_CompSci_0 < Scene

  def enter()
    puts "\n"
    puts "You arrive with many students"
    puts "Some of them are asleep..."
    puts "After listening to your favorite teacher talk about a computer science related event, class finally starts"
    puts "You are fatigued due to insomnia or playing League of Legends at level 30"
    puts "In class, you consider *sleeping*, *playing League of Legends*, or *paying attention*."
    print "> "

    action = $stdin.gets.chomp

    if action == "Sleeping" || action == "sleeping"
      puts "\n"
      puts "You lack attention and you are reprimanded by the teacher"
      puts "You get a detention but you suck it up and take it"
      puts "You now learn to sleep in the front row and not let the teacher notice"
      return 'AP_CompSci_00'
      
    elsif action == "playing League of Legends" || action == "Playing League of Legends" 
      puts "\n"    
      puts "Your amazing skill playing games while doing work is amazing"
      puts "The teacher doesn't notice and you are successful"
      return 'AP_CompSci_21'
      
    elsif action == "paying attention" || action == "Paying attention"
      puts "\n"    
      puts "You choose to be a studious student and the teacher notices your great effort"
      puts "You earn good comments from the teacher"
      return 'AP_CompSci_01'
      
    else
      puts "DOES NOT COMPUTE!"
      return 'AP_CompSci_0'
    end
  end
end

class Advanced_Topics_0 < Scene
  
  def enter()
    puts "\n"  
    puts "You don't know what to make of the first day of class"
    puts "The teacher describes the class as very hard but you don't get work"
    puts "\n"
    puts "After the first month, work starts being handed out in swarms"
    puts "Over the weekend, hours upon hours are assigned"
    puts "You can either *do it*, *binge* the trendy thing on Netflix, or *tour a rock concert* with your friends."
    print "> "

    action = $stdin.gets.chomp

    if action == "Do it" || action == "do it"
      puts "\n"
      puts "You are the only person who did the work"
      puts "You are efforts are complimented by the teacher"
      puts "You become the try hard who pretend that he doesn't do any work"
      puts "in class that is hard that was seen as easy"
      return 'Advanced_Topics_00'

    elsif action == "Binge" || action == "binge"
      puts "\n"
      puts "After binging Game of Thrones"
      puts "Your life completely changes as you find out Jon Snow is alive."
      puts "Although you come into class not having done the homework,"
      puts "lucky, you are in the marjority of the class"
      return 'Advanced_Topics_22'
      
    elsif action == "tour a rock concert" || "Tour a rock concert"
      puts "\n"
      puts "Your rock concert of Maroon 5 is awesome"
      puts "You go home not wanting to do the homework at all"
      puts "All night you try getting yourself to do a shred of work"
      puts "That fails and you go to bed at 12:30 am procrastinated on all of your 2 page assignment"
      puts "\n"
      puts "Your come to class with nothing done at all."
      return 'Advanced_Topics_00'
      
    else
      puts "DOES NOT COMPUTE!"
      return 'Advanced_Topics_0'
    end
  end
end


class Advanced_Topics_22 < Scene
    
  def enter()
    puts "\n"
    puts "Not doing the work seriously affects your grade"
    puts "You get a poor grade from your teacher"
    puts "The class is ridiculously hard"
    puts "It is like an advanced comp sci class with science instead of comp sci"
    puts "This will tremendously affect your GPA."
    puts "\n"
    puts "You have a questions about how to improve your GPA."
    puts "Do you *approach* the teacher about how to better it or *brush it off*"
    
    action = $stdin.gets.chomp

    if action == "approach" || action == "Approach"
      puts "\n"
      puts "You try to talk to the teacher after school"
      puts "She leaves for faculty meaning before you notice"
      puts "Kind of like batman disappearing in the mist"
      return 'Advanced_Topics_11'
      
    elsif action == "brush it off" || action == "Brush it off"
      puts "\n"
      puts "You lie to yourself that the teacher won't fail you"
      puts "The teacher has tremendous power and can fail the entire class if so she chooses"
      return 'Advanced_Topics_11'    
    
    else
      puts "DOES NOT COMPUTE!"
      return 'Advanced_Topics_22'
    end
  end
end

class Advanced_Topics_00 < Scene
  
  def enter()
    puts "\n"
    puts "Not doing the work seriously affects your grade"
    puts "It will result in bad consequences"
    puts "The class has become ridiculously hard"
    puts "like an Advanced Comp sci with science instrad of comp sci"
    puts "This will tremendously affect your GPA."
    puts "\n"
    puts "You have a questions about how to improve your GPA."
    puts "Do you *approach* the teacher about how to better or *brush it off*"
    
    action = $stdin.gets.chomp

    if action == "approach" || action == "Approach"
      puts "\n"
      puts "You try to talk to the teacher after class"
      puts "She leaves for the faculty meeting before you notice"
      puts "Kind of like batman disappearing in the mist"
      return 'Advanced_Topics_01'
      
    elsif action == "brush it off" || action == "Brush it off"
      puts "\n"
      puts "You lie to yourself that she can't fail you"
      puts "The teacher has tremendous power and can fail the entire class if she chooses"
      return 'Advanced_Topics_01'    
    
    else
      puts "DOES NOT COMPUTE!"
      return 'Advanced_Topics_00'
    end
  end
end

class Advanced_Topics_01 < Scene
  
  def enter()
    puts "\n"
    puts "Your recieve an A"
    puts "Hardwork has lead to this moment"
    puts "it is the most wonderful feeling in the world"
    puts "Nothing in your 17 year old life is like this"
    puts "\n"
    return 'End'
  end
end


class Advanced_Topics_11 < Scene
  
  def enter()
    puts "\n"   
    puts "Your recieve an F"
    puts "You almost fainted and went to the emergency room"
    puts "This grade turned you into a McDonald's cashier"
    puts "Not really, you either drop or talked with the teacher"
    return 'Class_Selection'
  end
end


class AP_CompSci_00 < Scene
  
  def enter()
    puts "\n"  
    puts "You speak to the teacher about detention"
    puts "The teacher says you can't drop"
    puts "You suck it up and go clean the chem lab and bio lab"
    puts "\n"
    puts "You kind of consider dropping or staying"
    puts "Are you *dropping* or *staying* in the class"
    print "> "

    action = $stdin.gets.chomp

    if action == "dropping" || action == "Dropping"
      puts "\n"
      puts "You can't drop"
      puts "The drop period is over"
      puts "You stay and learn till the end"
      puts "You're glad you stayed because you learned important life skills"
      return 'Class_Selection'

    elsif action == "staying" || action == "Staying"
      puts "\n"
      puts "You decide to suck it up and clean the labs"
      puts "You are applauded by your committment and ability to now sleep and not get noticed"
      puts "You continue to work"
      return 'AP_CompSci_11'
      
    else
      puts "DOES NOT COMPUTE!"
      return 'AP_CompSci_0'
    end
  end
end

class AP_CompSci_01 < Scene

  def enter()
    puts "\n"
    puts "Class is pretty well"
    puts "Report cards are due in two weeks."
    puts "You still have not done your work"
    puts "Do you *do it*, *kind of do it*, or *do nothing*?"
    print "> "

    action = $stdin.gets.chomp

    if action == "do it" || action == "Do it"
      puts "\n"
      puts "You recieve full credit for your hard work."
      puts "You expect a fantastic grade for your midterm."
      return 'AP_CompSci_02'

    elsif action == "kind of do it" || action == "Kind of do it"
      puts "\n"
      puts "You recieve partial credit"
      puts "You still have time to fix it"
      return 'AP_CompSci_02'
      
    elsif action == "do nothing" || action == "Do nothing"
      puts "\n"     
      puts "You recieve a 0 which will tremendously affect your grade."
      puts "But you handed in other work"
      puts "You still have some time"
      return 'AP_CompSci_01'
      
    else
      puts "DOES NOT COMPUTE!"
      return 'AP_CompSci_01'
    end
  end
end

class AP_CompSci_11 < Scene

  def enter()
    puts "\n"
    puts "Class is going pretty well"
    puts "Report cards are due in two weeks."
    puts "You still have not done it"
    puts "Do you *do it*, *kind of do it*, or *do nothing*?"
    print "> "

    action = $stdin.gets.chomp

    if action == "do it" || action == "Do it"
      puts "\n"
      puts "You recieve full credit for your hard work."
      puts "You expect a fantastic grade for your midterm."
      return 'AP_CompSci_12'

    elsif action == "kind of do it" || action == "Kind of do it"
      puts "\n"
      puts "You recieve partial credit for your hard work."
      puts "You still have some time"
      return 'AP_CompSci_12'
      
    elsif action == "do nothing" || action == "Do nothing"
      puts "\n"     
      puts "You recieve a 0 which will tremendously influence your GPA"
      puts "But you handed in other work"
      puts "You still have some time"
      return 'AP_CompSci_01'
      
    else
      puts "DOES NOT COMPUTE!"
      return 'AP_CompSci_01'
    end
  end
end

class AP_CompSci_21 < Scene

  def enter()
    puts "\n"
    puts "Class is pretty well"
    puts "Report cards are due in two weeks."
    puts "You still have not done it"
    puts "Do you *do it*, *kind of do it*, or *do nothing*?"
    print "> "

    action = $stdin.gets.chomp

    if action == "do it" || action == "Do it"
      puts "\n"
      puts "You recieve full credit for your hard work."
      puts "You expect a fantastic grade for your midterm."
      return 'AP_CompSci_22'

    elsif action == "kind of do it" || action == "Kind of do it"
      puts "\n"
      puts "You recieve partial credit for your hard work."
      puts "You still have time"
      return 'AP_CompSci_22'
      
    elsif action == "do nothing" || action == "Do nothing"
      puts "\n"     
      puts "You recieve a 0 which tremendously affects your GPA"
      puts "But you handed in other work"
      puts "You can still have a little bit of time"
      return 'AP_CompSci_01'
      
    else
      puts "DOES NOT COMPUTE!"
      return 'AP_CompSci_01'
    end
  end
end

class AP_CompSci_22 < Scene
  def enter()
    puts "\n"    
    puts "Report cards come back and it reads reads" 
    puts "After two weeks, you recieve an A."
    puts "\n"
    puts "Considering your effort, you are quite content"
    puts "The fact that hours and hours of work and it pay of it such a monumental way is extremly satifying."
    puts "\n"
    return 'End'

  end
end

class AP_CompSci_02 < Scene
  def enter()
    puts "\n"    
    puts "Report cards come back and it reads reads" 
    puts "After two weeks, you recieve an A."
    puts "\n"
    puts "Considering your effort, you are satisfied"
    puts "The fact that hours and hours of work and it pay of it such a monumental way is extremly satifying."
    puts "\n"
    return 'End'

  end
end


class AP_CompSci_12 < Scene
  def enter()
    puts "\n"    
    puts "Report cards come back and it reads" 
    puts "After two weeks, you recieve an A."
    puts "\n"
    puts "Considering your effort, you are content"
    puts "However, the comments are there"
    puts "The comment reads you lack focus"
    puts "\n"
    return 'End' 
  end
end

