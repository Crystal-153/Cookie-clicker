extends Node
@onready var scoreText=$score
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	scoreText.text = "Cookies: "+ str(Gamee.score) 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	scoreText.text = "Cookies: "+ str(Gamee.score) 
	pass

func _on_shop_pressed() -> void:
	get_tree().change_scene_to_file("res://shop.tscn")

func _on_cookie_pressed() -> void:
	Gamee.score+=Gamee.add
	scoreText.text = "Cookies: "+ str(Gamee.score)  


func _on_timer_timeout() -> void:
	Gamee.score+=Gamee.autoAmount
