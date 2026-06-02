extends Node
@onready var score=0
@onready var scoreText=$score
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_cookie_pressed() -> void:
	score+=1 
	scoreText.text = "Score: "+ str(score)


func _on_shop_pressed() -> void:
	pass # Replace with function body.
