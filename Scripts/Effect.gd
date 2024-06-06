extends Resource

#Requires Unit
class_name Effect

var intensity : int
var rounds : int

var icon : Sprite2D 
var animation : AnimatedSprite2D
var sound #What is this?

func _init(_intensity : int = 1, _rounds : int = 0):
	intensity = _intensity;
	rounds = _rounds;
	
func _initFull(_intensity : int, _rounds : int, _icon : Sprite2D, _animation : AnimatedSprite2D, sound):
	intensity = _intensity;
	rounds = _rounds;
	icon = _icon;
	animation = _animation;

func apply(target: Unit):
	applyEffect(target) #Electively implemented
	#Play sound?
	rounds -= 1;
	
func applyEffect(target: Unit):
	print("Effect applied") #This should be implemented
	
# Effect Components
func heal(target: Unit, amount: int, mod = 0):
	target.HP += amount;
	
func hurt(target: Unit, amount: int, mod = 0):
	target.HP += amount;

