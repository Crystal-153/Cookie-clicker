extends Node
@onready var priceText1=$timestwoPrice
static var price1=2500
@onready var ownedText1=$timestwoAmount
static var owned1=0

@onready var priceText2=$goldPrice
static var price2=10000000
@onready var ownedText2=$goldAmount
static var owned2=0

@onready var priceText3=$resetprogPrice
static var price3=150000000000000
@onready var ownedText3=$resetprogAmount
static var owned3=0

signal reset
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	priceText1.text="Cost: "+str(price1)
	ownedText1.text="Owned: "+str(owned1)
	priceText2.text="Cost: "+str(price2)
	ownedText2.text="Owned: "+str(owned2)
	priceText3.text="Cost: "+str(price3)
	ownedText3.text="Owned: "+str(owned3)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://main.tscn")


func _on_timestwo_buy_pressed() -> void:
	if price1<=Gamee.score:
		Gamee.score-=price1
		Gamee.timestwo=true
		price1*=2
		owned1+=1
		priceText1.text="Cost: "+str(price1)
		ownedText1.text="Owned: "+str(owned1)

func _on_backpage_pressed() -> void:
	get_tree().change_scene_to_file("res://shop.tscn")


func _on_resetprog_buy_pressed() -> void:
	if price3<=Gamee.score:
		Gamee.score-=price3
		Gamee.multi+=.5
		price3*=2
		owned3+=1
		Gamee.add=1
		Gamee.autoAmount=0
		Gamee.goldenPercent=0
		Gamee.score=0
		price1=2500
		price2=10000000 
		owned1=0
		owned2=0
		priceText1.text="Cost: "+str(price1)
		ownedText1.text="Owned: "+str(owned1)
		priceText2.text="Cost: "+str(price2)
		ownedText2.text="Owned: "+str(owned2)
		priceText3.text="Cost: "+str(price3)
		ownedText3.text="Owned: "+str(owned3)
		reset.emit()
func _on_gold_buy_pressed() -> void:
	if price2<=Gamee.score:
		Gamee.score-=price2
		price2*=2
		owned2+=1
		Gamee.gold=true
		priceText2.text="Cost: "+str(price2)
		ownedText2.text="Owned: "+str(owned2)
