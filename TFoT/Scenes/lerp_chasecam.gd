extends Camera2D

export(NodePath) var target 
export(float) var factor = 3
export(int) var offset_x = 0
export(int) var offset_y = 0
var target_node



func _ready():
	target_node = get_node(target)
func _process(delta):
	position.x = lerp(position.x, target_node.position.x + offset_x, delta * factor)
	position.y = lerp(position.y, target_node.position.y + offset_y, delta * factor)
