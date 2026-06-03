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
	
	if Gamee.timestwo:
		if randf_range(0.0,1.0)<Gamee.goldenPercent:
			Gamee.score+=Gamee.add*10*Gamee.multi*2
		else:
			Gamee.score+=Gamee.add*Gamee.multi*2
	elif randf_range(0.0,1.0)<Gamee.goldenPercent:
		Gamee.score+=Gamee.add*10*Gamee.multi
	else:
		Gamee.score+=Gamee.add*Gamee.multi
	scoreText.text = "Cookies: "+ str(Gamee.score)  


func _on_timer_timeout() -> void:
	if Gamee.timestwo and Gamee.i<61:
		
		Gamee.score+=Gamee.autoAmount*Gamee.multi*2
		Gamee.i+=1
	elif Gamee.i==61:
		Gamee.i=1
		Gamee.timestwo=false
	else:
		Gamee.score+=Gamee.autoAmount*Gamee.multi
	
