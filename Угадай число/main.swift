//
//  main.swift
//  Угадай число
//
//  Created by Дмитрий Гусев on 01.08.2022.
//
import Foundation


var randonNumber = UInt8.random(in: 1...250)
print("Компьютер случайным образом загадал число до 250. Вам потребуется отгадать его!")

var myNumber: String?
var conti: String?

repeat {
    randonNumber = UInt8.random(in: 1...250)
    repeat {
    print("Введите Ваш вариант и нажмите Enter")
    myNumber = readLine()
    if Int(myNumber!) == nil {
        print("Введите корректные данные")
        continue
    }
    let unwrapMyNumber = Int(myNumber!)!
    
    if unwrapMyNumber > 250 {
        print("Введите корректные данные")
        continue
    }
    
    if (UInt8(myNumber!) == randonNumber) {
        print("Вы угадали!")
    } else if (UInt8(myNumber!)! < randonNumber) {
        print("Ваш вариант меньше загаданного числа")
    } else if (UInt8(myNumber!)! > randonNumber) {
                print("Ваш вариант больше загаданного числа")
    }
    } while randonNumber != UInt8(myNumber!)
    
    print("Повторим? yes or no?")
    conti = readLine()
    switch conti {
    case "yes":
        break
    case "no":
        break
    default:
        print("Введите yes or no")
        continue
    }
    
} while conti != "no"



