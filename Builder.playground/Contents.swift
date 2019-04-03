protocol Factory {
    func produceWheel()
    func produceEngine()
    func produceChassis()
}

class SedanFactory : Factory {
    func produceEngine() {
        print("Produce enigne for sedan")
    }
    
    func produceWheel() {
        print("Produce wheel for sedan")
    }
    
    func produceChassis() {
        print("Produve chassis for sedan")
    }
}

class SuvFactory : Factory {
    func produceEngine() {
        print("Produce engine for SUV")
    }
    
    func produceWheel() {
        print("Produce wheel for SUV")
        
    }
    
    func produceChassis() {
        print("Produce chassis for SUV")
    }
}

//builder
class Builder {
    var factory : Factory
    
    init (factory : Factory) {
        self.factory = factory
    }
    
    func produce(){
        factory.produceEngine()
        factory.produceWheel()
        factory.produceChassis()
    }
}

//usage
let sedanFactory = SedanFactory()
let suvFactory = SuvFactory()

let sedanBuilder = Builder(factory : sedanFactory)
sedanBuilder.produce()
let suvBuilder = Builder(factory: suvFactory)
suvBuilder.produce()
