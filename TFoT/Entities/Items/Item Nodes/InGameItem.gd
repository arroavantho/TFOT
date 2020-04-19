tool
extends Node2D

onready var sprite := $Sprite
var item
func _ready():
	item = get_node("ItemNode")
	if item == null :
		print("Could not find item data.")
	else : 
		sprite.texture = item.texture
