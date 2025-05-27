extends CharacterBody2D

var MAX_SPEED = 75
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	velocity = MAX_SPEED*direction_to_player()
	move_and_slide()
	
func direction_to_player():
	var play_node = get_tree().get_first_node_in_group("player") as Node2D
	if play_node:
		return (play_node.position - position).normalized()
