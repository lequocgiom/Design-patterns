//observer

protocol Observer {
    func update()
}
class ConcreteObserver: Observer {
    var id: String
    init(id: String) {
        self.id = id
    }
    func update() {
        print(id + " observered the subject's state was changed.")
    }
}

class Subject {
    var observers: [Observer] = []
    var state: String {
        didSet {
            notify()
        }
    }
    init(state: String) {
        self.state = state
    }
    func attach(observer: Observer) {
        observers.append(observer)
    }
    func notify() {
        for observer in observers {
            observer.update()
        }
    }
}

//usage
let subject = Subject(state: "initial state")
let observerA = ConcreteObserver(id: "A")
let observerB = ConcreteObserver(id: "B")
subject.attach(observer: observerA)
subject.attach(observer: observerB)
subject.state = "new state"
