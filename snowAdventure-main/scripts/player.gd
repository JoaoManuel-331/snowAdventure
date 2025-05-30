extends CharacterBody2D #Player

const SPEED = 50

# Limites de movimento
const MIN_X = 0
const MAX_X = -10
const MIN_Y = 0
const MAX_Y = -10

# Variável para armazenar a referência ao AnimatedSprite2D
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
	animated_sprite = get_node("AnimatedSprite2D")



func _physics_process(delta: float) -> void:
	var moving = false  # Variável para controlar se o personagem está se movendo
	
	# Movimentação horizontal
	var direction_horizontal := Input.get_axis("ui_left", "ui_right")
	if direction_horizontal != 0:
		velocity.x = direction_horizontal * SPEED
		if direction_horizontal < 0:
			animated_sprite.flip_h = false
			animated_sprite.animation = "esquerda_andando"  # Andando para a esquerda
		else:
			
			animated_sprite.animation = "direita_andando"  # Andando para a direita
			animated_sprite.flip_h = true
		moving = true  # Marcamos que há movimento horizontal
			
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	# Movimentação vertical
	var direction_vertical := Input.get_axis("ui_up", "ui_down")
	if direction_vertical != 0:
		velocity.y = direction_vertical * SPEED
		if direction_vertical < 0:
			animated_sprite.animation = "cima_andando"  # Andando para cima
		else:
			animated_sprite.animation = "baixo_andando"  # Andando para baixo
		moving = true  # Marcamos que há movimento vertical
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	
	# Se não houver movimento em nenhuma direção, coloca a animação "parado"
	#diagonal superior direita
	
	if not moving:
		animated_sprite.play("parado")
	
	# Atualizar a posição do personagem
	move_and_slide()
