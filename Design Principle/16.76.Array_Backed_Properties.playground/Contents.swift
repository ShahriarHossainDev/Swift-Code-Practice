import UIKit

class Creature: Sequence{
    var stats: [Int] = [2,4,6]
    var stats2: [Int] = [5,7,3]

    func makeIterator() -> IndexingIterator<Array<Int>> {
        return IndexingIterator(_elements: stats)
    }
    
    var average: Int{
        return stats.reduce(0, +) / stats.count
    }
}

let cr = Creature()

print(cr.average)
for s in cr {
    print(s)
}

protocol StringIterator{
    func next() -> String?
}

class ArrayStringIterator: StringIterator{
    private let values:[String]
    private var index: Int = 0
    init(_ values: [String]) {
        self.values = values
    }
    
    func next() -> String? {
        index += 1
        if index <= values.count{
            return "d"
        }
        return "F"
    }
}


protocol Iterable{
    func makeIterator() -> StringIterator
}

class DataArray: Iterable{
    private var dataSource:[String]
    init() {
        self.dataSource = ["A","B","C"]
    }
    func makeIterator() -> StringIterator {
        return ArrayStringIterator(self.dataSource)
    }
}

let da = DataArray()
let it = da.makeIterator()
while let next = it.next(){
    print(next)
}

for t  in it.next()! {
    print(t)
}



struct Emojis: Sequence {
    let animals: [String]
    
    func makeIterator() -> EmojiIterator {
        return EmojiIterator(self.animals)
    }
}

struct EmojiIterator: IteratorProtocol {
    
    private let values: [String]
    private var index: Int?
    
    init(_ values: [String]) {
        self.values = values
    }
    
    private func nextIndex(for index: Int?) -> Int? {
        if let index = index, index < self.values.count - 1 {
            return index + 1
        }
        if index == nil, !self.values.isEmpty {
            return 0
        }
        return nil
    }
    
    mutating func next() -> String? {
        if let index = self.nextIndex(for: self.index) {
            self.index = index
            return self.values[index]
        }
        return nil
    }
}

let emojis = Emojis(animals: ["🐶", "🐔", "🐵", "🦁", "🐯", "🐭", "🐱", "🐮", "🐷"])
for emoji in emojis {
    print(emoji)
}
