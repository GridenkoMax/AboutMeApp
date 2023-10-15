//
//  UserModel.swift
//  AboutMeApp
//
//  Created by Maxim Gridenko on 15.10.2023.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    static func person() -> User {
        User(login: "1", password: "1", person: Person(name: "Tim", surname: "Cook", company: "Apple", departament: "Management", jobTitle: "CEO"))
    }
}

struct Person {
    let name: String
    let surname: String
    let company: String
    let departament: String
    let jobTitle: String
    
    var fullName: String {"\(name) \(surname)"}
    
    }
