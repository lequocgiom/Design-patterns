//factory
protocol Car {
    var name:String {get}
}

class BMW:Car{
    var name:String {return "BMW"}
}

class Mercedes:Car{
    var name:String {return "Mercedes"}
}

class Ferrari:Car{
    var name:String {return "Ferrari"}
    
}

//factory
class CarFactory{
    enum CarType{
        case BMW
        case Mercedes
        case Ferrari
    }
    
    func create (_ type: CarType) -> Car{
        switch type {
        case .BMW:
            return BMW()
        case .Mercedes:
            return Mercedes()
        case .Ferrari:
            return Ferrari()
        }
    }
}

//usage
let factory = CarFactory()
var new_car = factory.create(.Ferrari)
print(new_car)
