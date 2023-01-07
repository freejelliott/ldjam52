extends TileMap


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var width = 10
var height = 5

# Called when the node enters the scene tree for the first time.
func _ready():
    self.cell_size = self.tile_set.tile_get_texture(0).get_size()
    var tile_idx
    for i in width:
        for j in height:
            tile_idx = 0
            if i == 0 or i == width-1:
                tile_idx = 1
            if j == 0 or j == height-1:
                tile_idx = 2
            self.set_cell(i, j, tile_idx)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#    pass
