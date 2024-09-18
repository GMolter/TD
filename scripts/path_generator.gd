extends Object
class_name PathGenerator

var _grid_length:int = 16
var _grid_height:int = 9

var _path: Array[Vector2i]

func _init(length:int, height:int):
    _grid_length = length
    _grid_height = height

func generate_path():
    _path.clear()

    var x = 0
    var y = int(_grid_height/2)

    while x < _grid_length:
        if not _path.has(Vector2i(x,y)):
            _path.append(Vector2i(x, y))

        var choice:int = randi_range(0,2)

        if choice == 0 or x %  2 == 0:
            x += 1 
        elif choice == 1 and y < _grid_height:
            y += 1
        elif choice == 2 and y > 0:
            y -= 1


    return _path