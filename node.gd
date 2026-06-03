extends Node
class_name Gamee
static var score=0
static var add=1
static var autoAmount=0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass




func _on_main_cookie_press() -> void:
	score+=add


func _on_timer_timeout() -> void:
	score+=autoAmount
	
