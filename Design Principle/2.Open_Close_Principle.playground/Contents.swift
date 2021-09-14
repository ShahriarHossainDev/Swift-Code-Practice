import UIKit

enum Color
{
    case red
    case green
    case blue
}

enum Size{
    case small
    case medium
    case large
    case extralarge
}

class Product{
    var name: String
    var color: Color
    var size: Size
    
    init(name: String, color: Color, size: Size) {
        self.name = name
        self.color = color
        self.size = size
    }
}


class ProductFilter{
    
    func filterByColor(_ products: [Product], _ color: Color) -> [Product]{
        var result:[Product] = []
        for p in products {
            if p.color == color{
                result.append(p)
            }
        }
        return result
    }
    func filterBySize(_ products: [Product], _ size: Size) -> [Product] {
        var result: [Product] = []
        for p in products{
            if p.size == size {
                result.append(p)
            }
        }
        return result
    }
    
    func filterByColorAndSize(_ products: [Product], _ color: Color, _ size: Size) -> [Product]{
        var result: [Product] = []
        for p in products {
            if p.color == color && p.size == size {
                result.append(p)
            }
        }
        return result
    }
    
}
/// Specification

protocol Specification{
    associatedtype T
    func isSatisfied(_ item: T) -> Bool
}

protocol Filter{
    associatedtype T
    func filter<Spec: Specification>(_ items: [T], _ spec: Spec) -> [T] where Spec.T == T
}


class ColorSpecification: Specification {
    
    let color: Color
    func isSatisfied(_ item: Product) -> Bool {
        return item.color == color
    }
    
    typealias T = Product
    init(color: Color) {
        self.color = color
    }
}

class SizeSpecification: Specification {
    typealias T = Product
    let size: Size
    init(size:Size) {
        self.size = size
    }
    func isSatisfied(_ item: Product) -> Bool {
        return item.size == size
    }
}

class AndSpecification<T,
SpecA: Specification,
SpecB: Specification> : Specification
where SpecA.T == SpecB.T, T == SpecA.T{
    let first: SpecA
    let second : SpecB
    init(first: SpecA, second: SpecB) {
        self.first = first
        self.second = second
    }
    func isSatisfied(_ item: T) -> Bool {
        return first.isSatisfied(item) && second.isSatisfied(item)
    }
}

class BestFilter: Filter{
    
    typealias T = Product
    
    func filter<Spec>(_ items: [Product], _ spec: Spec) -> [T] where Spec.T == T,  Spec : Specification {
        var result:[Product] = [Product]()
        for i in items
        {
            if spec.isSatisfied(i){
                result.append(i)
            }
        }
        return result
    }
}

let apple: Product = Product(name: "Apple", color: .green, size: .small)
let tree : Product = Product(name: "Tree", color: .green, size: .large)
let house: Product = Product(name: "House", color: .blue, size: .large)

let products = [apple, tree, house]
let pf = ProductFilter()
print("Green Products (old):")
for p in pf.filterByColor(products, .green){
    print("- \(p.name) is green")
}

let bestFilter = BestFilter()

let colorSpecification = ColorSpecification(color: .blue)
let sizeSpecification = SizeSpecification(size: .large)

let combineSpecification = AndSpecification.init(first: colorSpecification, second: sizeSpecification)

let bestfilterProducts = bestFilter.filter(products, colorSpecification)

for prod in bestfilterProducts{
    print("- \(prod.name) is \(colorSpecification.color)")
}

let csfp = bestFilter.filter(products, combineSpecification)
for p in csfp {
    print(" - \(p.name) is \(sizeSpecification.size) and \(colorSpecification.color)")
}
