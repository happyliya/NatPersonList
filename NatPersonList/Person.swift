//
//  Person.swift
//  NatPersonList
//
//  Created by HappyLiya on 28.02.2021.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
       "\(name) \(surname)"
    }
}

extension Person {
    
    static func getContactList() -> [Person] {
        
        var persons:[Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phoneNumbers = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        //если в массивах разное количество элементов, то количество персон должно генериться
        //по минимальному массиву
        //для этого определяем это количество и уже его передаем в цикл:
        
//        let iterationCount = min(
//            names.count,
//            surnames.count,
//            phoneNumbers.count,
//            emails.count
//        )
        
        for index in 0..<names.count{
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
}
