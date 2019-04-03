enum CarType: String {
    case Sedan = "sedan"
    case SUV = "SUV"
}
protocol Car {
    var type: CarType{ get }
    func drive()
}
class Sedan: Car {
    var type: CarType = .Sedan
    func drive() {
        print("drive a " + type.rawValue)
    }
}

class SUV: Car {
    var type: CarType = .SUV
    func drive(){
        print("drive a " + type.rawValue)
    }
}

//decorator

class Decorator: Car {
    var car: Car
    var type: CarType {
        return car.type
    }
    init(car: Car) {
        self.car = car
    }
    func drive() {
        car.drive()
    }
}
class AutonomousCar: Decorator {
    override func drive() {
        print("automatically drive a " + type.rawValue)
    }
}

//usage

let sedan = Sedan()
let suv = SUV()
let autonomousSedan = AutonomousCar(car: sedan)
autonomousSedan.drive()
let autonomousSuv = AutonomousCar(car: suv)
autonomousSuv.drive()
