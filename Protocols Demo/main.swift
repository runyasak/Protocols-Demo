protocol CanFly {
    func fly()
}


class Bird {

    var isFemale = true
    
    func lazyEgg() {
        if isFemale {
            print("The bird make a new bird in a shell.")
        }
    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky.")
    }
    

    func soar() {
        print("The eagle glides in the air using air currents.")
    }
}

class Penguin: Bird {
    
    func swim() {
        print("The penguin paddles through the water.")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

class Airplane: CanFly {
    func fly() {
        print("The airplane uses its engine to lift off into the air.")
    }
}

let myEagle = Eagle()
myEagle.fly()
myEagle.lazyEgg()
myEagle.soar()

let myPenguin = Penguin()
myPenguin.lazyEgg()
myPenguin.swim()

let myPlane = Airplane()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myPlane)
