class_name UnitOld extends Node2D


enum UnitState{
	ALIVE,
	DEAD,
	DOWNED,
	NA
}

var state: UnitState = UnitState.ALIVE;

# Define signals
signal on_hurt(amount, cause);
signal on_death(amount, cause);

# Stats
@export var level : int;
@export var strength : int;
@export var dexterity : int;
@export var constitution : int;
@export var wisdom : int;
@export var intelligence : int; 
@export var charisma : int;
@export var speed : int;

#todo getters and setters

func getStrength():
	return strength

func getDexterity():
	return dexterity

func getConstitution():
	return constitution

func getIntelligence():
	return intelligence

func getWisdom():
	return wisdom
	
func getCharisma():
	return charisma
	
func getSpeed():
	return speed
# Transient
var HP; # Health
var MP; # Magic
var SP; # Stamina

var tags = []


func getMaxHP() -> int:
	return getStrength() + (level * (getConstitution() / 2));
	
func getMaxMp() -> int:
	return getIntelligence() + (level * (getWisdom() / 2));

func damage(amount):
	HP -= amount;
	emit_signal("onhurt", amount);
	
func getMod(stat):
	match stat:
		"strength":
			return getStrength()
		"dexterity":
			return getDexterity()
		"constitution":
			return getConstitution()
		"intelligence":
			return getIntelligence()
		"wisdom":
			return getWisdom()
		"charisma":
			return getCharisma()
		

func save(stat, DC):
	var mod = getMod(stat);
	return false;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Signal handlers
func _on_hurt(amount, cause = "nothing"):
	if HP < 0:
		emit_signal("on_death");

func _on_death(amount):
	if tags.has("Downable"):
		state = UnitState.DOWNED
		
# Utility
func update_position(tilemap: TileMap):
	var tilemap_position = tilemap.world_to_map(position)
	var world_position = tilemap.map_to_world(tilemap_position)
	position = world_position
