extends Node
@onready var priceText1=$plusonePrice
static var price1=25
@onready var ownedText1=$plusoneAmount
static var owned1=0

@onready var priceText2=$ovenPrice
static var price2=100
@onready var ownedText2=$ovenAmount
static var owned2=0

@onready var priceText3=$goldenPrice
static var price3=150
@onready var ownedText3=$goldenAmount
static var owned3=0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	priceText1.text="Cost: "+str(price1)
	ownedText1.text="Owned: "+str(owned1)
	priceText2.text="Cost: "+str(price2)
	ownedText2.text="Owned: "+str(owned2)
	priceText3.text="Cost: "+str(price3)
	ownedText3.text="Owned: "+str(owned3)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_plusone_buy_pressed() -> void:
	if price1<=Gamee.score:
		Gamee.score-=price1
		Gamee.add+=1
		price1*=2
		owned1+=1
		priceText1.text="Cost: "+str(price1)
		ownedText1.text="Owned: "+str(owned1)
		
	
	
	


func _on_oven_buy_pressed() -> void:
	if price2<=Gamee.score:
		Gamee.score-=price2
		price2*=1.5
		owned2+=1
		Gamee.autoAmount+=1
		priceText2.text="Cost: "+str(price2)
		ownedText2.text="Owned: "+str(owned2)
	


func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://main.tscn")


func _on_golden_buy_pressed() -> void:
	if price3<=Gamee.score:
		Gamee.score-=price3 
		price3*=1.5
		owned3+=1
		Gamee.goldenPercent+=0.01
		priceText3.text="Cost: "+str(price3)
		ownedText3.text="Owned: "+str(owned3)


func _on_more_pressed() -> void:
	get_tree().change_scene_to_file("res://shop2.tscn")


func _on_shop_2_reset() -> void:
	price1=25
	price2=100
	price3=150
	owned1=0
	owned2=0
	owned3=0
	priceText1.text="Cost: "+str(price1)
	ownedText1.text="Owned: "+str(owned1)
	priceText2.text="Cost: "+str(price2)
	ownedText2.text="Owned: "+str(owned2)
	priceText3.text="Cost: "+str(price3)
	ownedText3.text="Owned: "+str(owned3)
