//
//  main.swift
//  Aufgabe_02
//
//  Created by Simon Herzog on 06.03.21.
//

import Foundation

//leeres Array vom Typ Int erstellen
var numbers = [Int]()

//Funktion um die Zahlen einzulesen
func readNumbers() {
    //Variable, die die aktuelle Zahl hält, als Int Optional, da sie zu Anfang keinen Wert halten soll
    var currentNumber: Int?
    //repeat-while-Schleife, damit es mindestens einen Durchlauf der Schleife zum Einlesen einer Zahl gibt
    //Schleife läuft solange, bis 0 eingegeben wird
     repeat {
        //Einlesen der Zahl als Int
        print("Bitte geben Sie eine Zahl ein: ", terminator: "")
        currentNumber = Int(readLine()!)!
        //und gleich anhängen an das Array
        numbers.append(currentNumber!)
    }while currentNumber != 0
}

//Funktion zur Berechnung der Summe, liefert einen Int-Wert
func calcSum() -> Int{
    //Variable für die summe
    var sum = 0
    
    //for-schleife die das Array durchgeht
    for index in 0..<numbers.count{
        //und für jeden Index die entsprechende Zahl in der Konstanten number speichert
        let number = numbers[index]
        //sum und number werden addiert und sum zugewiesen
        sum = sum + number
    }
    //Summe ausgeben
    print("Summe: \(sum)")
    //es wird die Summe zurückgegeben
    return sum
}

//Funktion zur Berechung des Mittelwerts, nimmt Argument vom Typ Int entgegen
func calcAverage(sum: Int) {
    //Mittelwert direkt berechnen, dabei wird Summe durch die Anzahl der eingegebenen Werte, ohne 0 (deshalb -1), geteilt
    print("Mittelwert: \(Double(sum) / Double(numbers.count - 1))")
}

//Aufruf der Funktion readNumbers() um die Zahlen einzulesen
readNumbers()
//Aufruf der Funktion calcSum() als Argument der Funktion calcAverage()
calcAverage(sum: calcSum())
