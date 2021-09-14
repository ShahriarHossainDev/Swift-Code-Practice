import UIKit

class Node<T>{
    var value: T
    var left: Node<T>? = nil
    var right: Node<T>? = nil
    var parent: Node<T>? = nil
    
    init(value:T) {
        self.value = value
    }
    
    init(value:T, left: Node<T>, right: Node<T>) {
        self.value = value
        self.left = left
        self.right = right
        left.parent = self
        right.parent = self
    }
}


class InOrderIterator<T>: IteratorProtocol {
    
    var current: Node<T>?
    var root: Node<T>
    var yieldedStart = false
    
    init(root: Node<T>) {
        self.root = root
        current = root
        while current?.left != nil {
            current = current?.left
        }
    }
    
    func reset()  {
        print("reset")
        current = root
        yieldedStart = false
    }
    func next() -> Node<T>?{
       // print("next")
        if !yieldedStart {
            yieldedStart = true
            return current
        }
        if current?.right != nil{
            current = current?.right
            while current?.left != nil {
                current = current?.left
            }
            return current
        }else{
            var p = current?.parent
            while p != nil && current === p?.right {
                current = p
                p = p?.parent
            }
            current = p
            return current
        }
    }
}

class BinaryTree<T> : Sequence
{
    private let root: Node<T>
    
    init(root: Node<T>)
    {
        self.root = root
    }
    
    func makeIterator() -> InOrderIterator<T>
    {
        return InOrderIterator<T>(root: root)
    }
}

//    1
//   / \
//  2   3

// in-order:   213
// pre-order:  123
// post-order: 231

let root = Node(value: 1, left: Node(value: 2), right: Node(value: 3))
//print(root.value)

let it = InOrderIterator(root: root)
while let element = it.next(){
    print(element.value, terminator: " ")
}

// feel free to stick it into a sequence
let nodes = AnySequence{InOrderIterator(root: root)}
print(nodes.map{ $0.value })

// or, if you want to make an entire class...
let tree = BinaryTree(root: root)

print(tree.map{ $0.value })

