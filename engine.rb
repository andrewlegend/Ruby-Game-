require './BG.rb'


class Engine

  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    current_scene.enter()
  end
end

class Map
  @@scenes = {
    'Class_Selection' => Class_Selection.new(),
    'AP_CompSci_0' => AP_CompSci_0.new(),
    'AP_CompSci_00' => AP_CompSci_00.new(),
    'AP_CompSci_01' => AP_CompSci_01.new(),
    'AP_CompSci_02' => AP_CompSci_02.new(),
    'End' => End.new(),
    'Advanced_Topics_0' => Advanced_Topics_0.new(),
    'AP_CompSci_11' => AP_CompSci_11.new(),
    'AP_CompSci_12' => AP_CompSci_12.new(),
    'AP_CompSci_21' => AP_CompSci_21.new(),
    'AP_CompSci_22' => AP_CompSci_22.new(),
    'Advanced_Topics_00' => Advanced_Topics_00.new(),
    'Advanced_Topics_01' => Advanced_Topics_01.new(),
    'Advanced_Topics_11' => Advanced_Topics_11.new(),
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

a_map = Map.new('Class_Selection')
a_game = Engine.new(a_map)
a_game.play()
