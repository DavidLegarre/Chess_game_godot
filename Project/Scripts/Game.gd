extends Node2D

# TileMap [3,0] to [10,7]
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var TILE_SIZE = 128
onready var piece = preload("res://Scenes/Piece.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	generate_pawn(Vector2.snapped(Vector2(4,1)),"black")

func generate_pawn(pos, _color):
	var pawn_i = piece.instance()
	pawn_i.scale = Vector2(1.7,1.7)
	pawn_i.position = Vector2.ONE*TILE_SIZE
	pawn_i.position += pos*(TILE_SIZE-1)
	pawn_i.position += Vector2.ONE*TILE_SIZE/2
	add_child(pawn_i)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
