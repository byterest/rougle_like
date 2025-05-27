extends CharacterBody2D

const MAX_SPEED = 300

func _process(delta: float) -> void:
	var move_vector = get_movement_vector()
	var norm = move_vector.normalized()
	if move_vector.x<0:
		$Sprite2D.flip_v
	velocity = norm*MAX_SPEED
	move_and_slide()

func get_movement_vector():
	var y = Input.get_action_strength("move_down")-Input.get_action_strength("move_up")
	var x = Input.get_action_strength("move_right")-Input.get_action_strength("move_left")
	
	return Vector2(x, y)
