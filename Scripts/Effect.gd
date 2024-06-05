extends Resource

#Requires Unit
class_name Effect

var intensity : int
var rounds : int

var icon : Sprite2D 
var animation : AnimatedSprite2D
var sound #What is this?

func apply(target: Unit):
	applyEffect(target) #Electively implemented
	#Play sound?
	rounds -= 1;
	
func applyEffect(target: Unit):
	print("Effect applied") #This should be implemented
	
# Effect Components
func heal(target: Unit, amount: int):
	target.HP += amount

