//
//  User.swift
//  LoginView
//
//  Created by Alexandr Barabash on 12.03.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(login: "User", password: "Password", person: Person.getInfoPerson())
    }
}

struct Person {
    let name: String
    let age : Int
    let city: String
    let hobby: String
    
    static func getInfoPerson() -> Person {
        Person(
            name: "Александр Барабаш",
            age: 35,
            city: "Москва",
            hobby: "С 2005 года профессионально занимаюсь DJ-ингом. Играю в таких направлениях как: Melodic House, Organic House, Deep house, Minimal techno. Был резидентом клуба Amnesia(Новосибирск),радиостанции Pulse FM , -40 (Новосибирск). Гость клубов: Rock city, Атмосфера, Галерея кофе, Арт Дача, Discoteque, Щука, Beach club (Moscow),club Pravda(Новосибирск) и т д. В 2020 году прошел курсы сведения и мастеринга у Константина Матафонова и стал создавать музыку сам. Послушать мои работы можно здесь soundcloud.com/alexandrbarabash 😉"
        )
    }
    
}
