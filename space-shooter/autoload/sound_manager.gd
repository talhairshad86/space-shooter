extends Node

@onready var bullet_sound: AudioStreamPlayer = $BulletSound
@onready var explosion_sound = $ExplosionSound
@onready var metal_hit_sound: AudioStreamPlayer = $MetalHitSound
@onready var rock_hit_sound = [$RockHit1Sound, $RockHit2Sound, $RockHit3Sound]

func fire_bullet():
	bullet_sound.play()

func explode():
	explosion_sound.play()

func metal_hit_effect():
	metal_hit_sound.play()

func rock_hit_effect():
	var sound = rock_hit_sound.pick_random()
	sound.pitch_scale = randf_range(0.8, 1.2)
	sound.play()
