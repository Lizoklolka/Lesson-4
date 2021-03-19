//
//  main.swift
//  Lesson 4
//
//  Created by Елизавета Разувайкина on 17.03.2021.
//

import Foundation

enum Window: String {
    case open = "открыто"
    case close = "закрыто"
}

enum Engine: String{
    case on = "включен"
    case off = "выключен"
}

enum Door: String{
    case open = "открыта"
    case close = "закрыта"
}

enum Luke: String{
    case open = "открыт"
    case close = "закрыт"
}


func print (car: TrunkCar){
    print("Окно: \(car.window.rawValue)")
    print("Двигатель: \(car.engine.rawValue)")
    print("Дверь: \(car.door.rawValue)")
    print("====================")
}
func print (car: SportСar){
    print("Окно: \(car.window.rawValue)")
    print("Двигатель: \(car.engine.rawValue)")
    print("====================")
}


class Car {
    let mark: String
    let year: Int
    var km: Double
    var window: Window
    var engine: Engine
    
    init(mark: String, year: Int, km: Double, window: Window, engine: Engine) {
        self.mark = mark
        self.year = year
        self.km = km
        self.window = window
        self.engine = engine
    }
    
    func changeWindow(to: Window){}
    func changeEngine(to: Engine){}
}

class TrunkCar: Car{
    
    var door: Door
    
    init (mark: String, year: Int, km: Double, window: Window, engine: Engine, door: Door) {
        
        self.door = door
        
        super.init(mark: mark, year: year, km: km, window: window, engine: engine)
    }
    func changeDoor (to : Door) {
        door = to
    }
    
    func ON(){
        window = .open
        engine = .on
    }
    
    func OFF(){
        window = .close
        engine = .off
    }
    override func changeWindow(to: Window){
        window = to
    }
    override func changeEngine(to: Engine){
        engine = to
    }
}

class SportСar: Car{
    
    var luke: Luke
    
    init(mark: String, year: Int, km: Double, window: Window, engine: Engine, luke: Luke) {
        
        self.luke = luke
        
        super.init(mark: mark, year: year, km: km, window: window, engine: engine)
    }
    
    func changeLuke (to : Luke) {
        luke = to
    }
    override func changeWindow(to: Window){
        window = to
    }
    override func changeEngine(to: Engine){
        engine = to
    }
}
    

let car1 = TrunkCar(mark: "Audi", year: 2000, km: 00, window: .close, engine: .on, door: .close)

let car2 = TrunkCar(mark: "Chevrolet", year: 2012, km: 120, window: .open, engine: .on, door: .open)

let car3 = SportСar(mark: "Honda", year: 2020, km: 200, window: .close, engine: .off, luke: .close)

let car4 = SportСar(mark: "Hyndai", year: 2015, km: 150, window: .open, engine: .off, luke: .open)


car1.ON()
car1.changeDoor(to: .open)

car2.OFF()

car3.window.rawValue
car3.changeEngine(to: .on)

car4.km = 500


print(car: car1)
print(car: car2)
print(car: car3)
print("Пробег: \(car4.km)")
