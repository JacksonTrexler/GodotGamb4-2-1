extends Resource

class_name Tile

var id: int
var effects: Dictionary = {}
var tags: Dictionary = {}
var environment: String

func _init(_id: int = 0, _effects: Dictionary = {}, _tags: Dictionary = {"Material" : "basicMaterial",}, _environment = "basic"):
	id = _id
	effects = _effects
	tags = _tags
	environment = _environment

func trigger(effect_key: String):
	if effects.has(effect_key):
		for effect in effects[effect_key]:
			effect.apply(self) # self should always be the unit triggering... for now
		
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
