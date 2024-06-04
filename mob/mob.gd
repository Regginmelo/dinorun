extends Area2D

signal hit
func _ready():
	GHUD.mob_counter = GHUD.mob_counter +1
	
	var collisions = [$BluecCollision, $RedcCollision,$obscol,$ratuit]
	var sprites =[$BluecSprite, $RedcSprite,$Obstaculo,$rat]
	var random_int = randi() % collisions.size()
	var selected_collision = sprites[random_int]
	selected_collision.disabled = false
	selected_collision.visible = true
	selected_collision.visible = true

func _on_visible_on_screen_notifier_2d_screen_exited():
	if GHUD.mob_counter > 0:
		GHUD.mob_counter = GHUD.mob_counter - 1
	queue_free()


func _on_body_entered(body):
	if body.is_in_group("dinoplayer"):
		hit.emit()
