extends Node2D

@export var _scroll_speed: float = -10.0
@export var _width: float = 67.53
@onready var _big_cloud_1: Sprite2D = $BigClouds1
@onready var _big_cloud_2: Sprite2D = $BigClouds2
@onready var _small_cloud_1: Sprite2D = $SmallCloud1
@onready var _small_cloud_2: Sprite2D = $SmallCloud2
@onready var _small_cloud_3: Sprite2D = $SmallCloud3


func _process(delta: float) -> void:
	_scroll(_big_cloud_1, _scroll_speed * delta)
	_scroll(_big_cloud_2, _scroll_speed * delta)
	_scroll(_small_cloud_1, _scroll_speed * delta / 7)
	_scroll(_small_cloud_2, _scroll_speed * delta / 5)
	_scroll(_small_cloud_3, _scroll_speed * delta / 3)

func _scroll(cloud: Node2D, distance: float):
	cloud.position.x += distance
	if cloud.position.x < _width * -1:
		cloud.position.x += _width * 2
