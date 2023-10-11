//
//  scence.swift
//  AboutMeApp
//
//  Created by Maxim Gridenko on 11.10.2023.
//

import Foundation

struct Scence {
    let title: String
    let name: String
    let surname: String
    let company: String
    let departament: String
    let jobTitle: String
    let photo: String
    
   static func getUser() -> User{
        User(nameUser: "1", password: "2")
    }
    static func getInfoScence() -> Scence{
        Scence(title: "Tim Cook", name: "Tim", surname: "Cook", company: "Apple", departament: "management", jobTitle: "CEO", photo: "xxx")
    }
    }

struct User{
    let nameUser: String
    let password: String
}

struct Bio{
    let biography: String
}

let bio = Bio.init(biography: "Тим Кук родился в 1960 году в городе Мобил, штат Алабама, но детство провел в городке Робертсдейл. Мать будущего предпринимателя была фармацевтом, а отец - рабочим верфи. Кук мало рассказывал о своем детстве. Известна история о том, как он увидел расправу Ку-клукс-клана над негритянской семьей.Испугавшись, Тим крикнул, чтобы они остановились, но, приглядевшись, узнал в одном из участников действа местного священника и сбежал. Эта история, по словам предпринимателя, серьезно повлияла на его взгляды.")




