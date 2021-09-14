import UIKit

protocol ICanFly
{
    func fly()
}

protocol ICanCrawl
{
    func crawl()
}

class Bird: ICanFly
{
    func fly(){
        print("Birds fly")
    }
}

class Lizard: ICanCrawl
{
    func crawl(){
        print("Lizard crawl")

    }
}

class Dragon: ICanFly, ICanCrawl
{
    private let bird = Bird()
    private let lizard = Lizard()
    
    func fly() {
        bird.fly() // delegation
    }
    
    func crawl() {
        lizard.crawl()
    }
}

let dr = Dragon()
dr.fly()
