extends Node2D

const MOVE_SPEED = 200

func _process(delta: float) -> void:
	var move_x = Input.get_axis("MOVE_LEFT", "MOVE_RIGHT")
	var move_y = Input.get_axis("MOVE_UP", "MOVE_DOWN")
	$Icon.position += Vector2(move_x, move_y).normalized() * MOVE_SPEED * delta
	
