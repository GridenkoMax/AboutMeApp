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
    static func user() -> User {
        User(login: "1",
             password: "1",
             person: Person.userInfo()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let company: String
    let departament: String
    let jobTitle: String
    let photo:String
    let bio:String
    
    
    var fullName: String {"\(name) \(surname)"}
    
    static func userInfo() -> Person{
        Person(
            name: "Tim",
            surname: "Cook",
            company: "Apple",
            departament: "Menager",
            jobTitle: "CEO",
            photo: "Tim",
            bio: "Timothy Donald Cook (born November 1, 1960) is an American business executive who has been the chief executive officer of Apple Inc. since 2011. Cook previously served as the company's chief operating officer under its co-founder Steve Jobs.Cook joined Apple in March 1998 as a senior vice president for worldwide operations, and then served as the executive vice president for worldwide sales and operations. He was made the chief executive on August 24, 2011, prior to Jobs' death in October of that year. During his tenure as the chief executive, he has advocated for the political reformation of international and domestic surveillance, cybersecurity, American manufacturing, and environmental preservation. Since 2011 when he took over Apple, to 2020, Cook doubled the company's revenue and profit, and the company's market value increased from $348 billion to $1.9 trillion."
        )
    }
    
    }
