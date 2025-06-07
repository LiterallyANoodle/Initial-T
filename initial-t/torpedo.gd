extends Node3D

var direction:Vector3 = Vector3(1,0,0)
func _process(delta: float) -> void:
	self.position = self.position + move()

func move () -> Vector3:
	var positions: Array = [Vector3(1,0,0), Vector3(-1,0,0)]
	if self.position.x >= positions[0].x:
		direction=Vector3(-1,0,0)
	if self.position.x <= positions[1].x:
		direction=Vector3(1,0,0)
	return direction * (0.01)

func choose_direction () -> Vector3: 
	var possible_directions: Array = [Vector3(1,0,0), Vector3(0,1,0), Vector3(0,0,1), Vector3(-1,0,0), Vector3(0,-1,0), Vector3(0,0,-1)]
	return possible_directions.pick_random()
	
