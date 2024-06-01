class_name Unit extends Node2D

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
var level;
var strength;
var dexterity;
var constitution;
var wisdom;
var intelligence; 
var charisma;
var speed;

#todo getters and setters

func getConstitution():
	return constitution

func getIntelligence():
	return intelligence

# Transient
var HP; # Health
var MP; # Magic
var SP; # Stamina

var tags = []


func getMaxHP() -> int:
	return getConstitution() + (level * (getConstitution() / 2));
	
func getMaxMp() -> int:
	return getIntelligence()

func damage(amount):
	HP -= amount;
	emit_signal("onhurt", amount);
	
func getMod(stat):
	match stat:
		"charisma":
			return 1

func save(stat, DC):
	var mod = getMod(stat);
	return false;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# Signal handlers
func _on_hurt(amount, cause = "nothing"):
	if HP < 0:
		emit_signal("on_death");

func _on_death(amount):
	if tags.has("Downable"):
		state = UnitState.DOWNED
