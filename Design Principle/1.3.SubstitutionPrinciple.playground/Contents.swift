import UIKit

class Rectangle: CustomStringConvertible {
    var description: String{
        return "width: \(width), height:\(height)"
    }
    
    public var _width: Int = 0
    public var _height: Int = 0
    
    
    var width:Int {
        get {return _width }
        set(value){ _width = value }
    }
    
    var height: Int {
        get { return _height }
        set (value) { _height = value}
    }
    
    init() {}
    
    init(_ width:Int, _ height: Int) {
        _width = width
        _height = height
    }
    
    func area() -> Int {
        return _width * _height
    }
    var areaP: Int {
        return _width * _height
    }
}

class Square: Rectangle {
    override var width: Int{
        get { return _width }
        set (value){
            _width = value
            _height = value
        }
    }
    
    override var height: Int{
        get { return _height }
        set (value){
            _width = value
            _height = value
        }
    }
}

var rect = Rectangle(10, 6)
let area1 = rect.area()
print(area1)
rect.description

rect.width = 30
let area2 = rect.area()
print(area2)
rect.description

var rect2 = Rectangle()
rect2.description

rect2.width = 20
rect2.height = 10
let area3 = rect2.area()
print(area3)
rect2.description

func setAndMessure(_ rc: Rectangle)
{
    rc.width = 12
    rc.height = 3
    print("messure area: \(rc.area())")
    
}

let rect4 = Rectangle()
setAndMessure(rect4)

let sqr = Square()
setAndMessure(sqr)

