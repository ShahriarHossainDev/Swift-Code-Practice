import UIKit

class GraphicObject : CustomStringConvertible
{
    var name: String = "Group"
    var color: String = ""
    
    var children = [GraphicObject]()
    
    init()
    {
        
    }
    
    init(name: String)
    {
        self.name = name
    }
    
    private func print(buffer: inout String, depth: Int)
    {
        buffer.append(String(repeating: "*", count: depth))
        buffer.append(color.isEmpty ? "" : "\(color) ")
        buffer.append("\(name)\n")
        
        for child in children
        {
            child.print(buffer: &buffer, depth: depth+1)
        }
    }
    
    var description: String
    {
        var buffer = ""
        print(buffer: &buffer, depth: 0)
        return buffer
    }
}

class Circle : GraphicObject
{
    init(color: String)
    {
        super.init(name: "Circle")
        self.color = color
    }
}

class Square : GraphicObject
{
    init(color: String)
    {
        super.init(name: "Square")
        self.color = color
    }
}

let drawing = GraphicObject(name: "My Drawing")
drawing.children.append(Square(color: "Red"))
drawing.children.append(Circle(color: "Yellow"))

let group = GraphicObject()
group.children.append(Circle(color: "Blue"))
group.children.append(Square(color: "Blue"))

drawing.children.append(group)

print(drawing.description)



protocol Component {
    
    func foo()
}

class Composite: Component {
    
    var children: [Component] = []
    
    func foo() {
        for child in children {
            child.foo()
        }
    }
}

class LeafA: Component {
    
    func foo() {
        print("Hi, I'm Leaf A")
    }
}

class LeafB: Component {
    
    func foo() {
        print("Hi, I'm Leaf B")
    }
}


let composite = Composite()
composite.children = [ LeafA(), LeafB() ]
composite.foo()

