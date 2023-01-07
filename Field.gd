extends TileMap


var width = 10
var height = 5

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