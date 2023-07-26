//
//  main.swift
//  UnknownNumberMacOS
//
//  Created by Валерия Дементьева on 26.07.2023.
//

import Foundation
// генерация случайного положительного числа
let randomNumber = UInt8.random(in: 1...250)
// в переменную будет записываться число с консоли
var myNumber: String?
//преобразовывает полученную строку в число
func transformationStrInUint(_ str: String?) -> UInt8{
    var result = UInt8()
    if let str = str {
        if UInt8(str) != nil {
            result = UInt8(str)!
        } else {
            return 0
        }
    } else {
        return 0
    }
    return result
}
print("Компьютер случайным образом загадал число от 1 до 250. Вам требуется отгадать его.")
// цикл с постпроверкой условия
repeat {
    print("Введите ваш вариант и нажмите Enter!")
    // получение значения с клавиатуры пользователя
    myNumber = readLine()
    //преобразование полученной строки в число
    let transformationNamder = transformationStrInUint(myNumber)
    // сравнение введенного и сгенерированного чисел
    if transformationNamder == 0 {
        print("Значение введено не корректно, начните игру сначала!")
        break
    } else if transformationNamder == randomNumber{
        print("Вы угадали!")
    } else if transformationNamder < randomNumber{
        print("Ваше число меньше загаданного, попробуйте еще раз.")
    } else if transformationNamder > randomNumber{
        print("Ваше число больше загаданного, попробуйте еще раз.")
    }
} while randomNumber != UInt8(myNumber!)



