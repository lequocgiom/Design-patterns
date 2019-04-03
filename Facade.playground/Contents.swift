class Engine {
    func produceEngine() {
        print("produce engine")
    }
}

class Body {
    func produceBody() {
        print("produce body")
    }
}

class Acessories {
    func produceAccessories(){
        print("produce accessories")
    }
}
//facade
class ProductionFacade {
    let engine = Engine()
    let body = Body()
    let accessories = Acessories()
    func produceCar(){
        engine.produceEngine()
        body.produceBody()
        accessories.produceAccessories()
    }
}

//usage
let productionFacade = ProductionFacade()
productionFacade.produceCar()
