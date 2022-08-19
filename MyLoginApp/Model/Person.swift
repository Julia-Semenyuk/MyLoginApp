//
//  Person.swift
//  MyLoginApp
//
//  Created by Юлия on 19.08.2022.
//


struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "1",
            password: "1",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let hobby: Rest
    let movie: FavoriteMovie
//favoriteMovie: Movie
    
    var fullname: String {
        "\(name)\(surname)"
    }
    static func getPerson() -> Person {
        Person(
            name: "Юлия",
            surname: "Семенюк",
            photo: "ЮлияСеменюк",
            hobby: Rest.getRest(),
            movie: FavoriteMovie.getMovie()
        )
    }
}

struct Rest {
    let title: Hobby
    let pleasure: String
    
    static func getRest() -> Rest {
        Rest(title: .one, pleasure: "Нравится")
    }
    
}

struct FavoriteMovie {
    let title: Movie
    let genre: String
    
    var myFavoriteMovie: String {
        "\(title)\(genre)"
    }
    
    static func getMovie() -> FavoriteMovie {
        FavoriteMovie(title: .one, genre: "Очень нравится")
    }
}

enum Hobby: String {
    case one = "swimming"
    case two = "drawing"
    case three = "reading"
    case four = "cooking"
}

enum Movie: String {
    case one = "Начало"
    case two = "2:22"
    case three = "Семь жизней"
    case four = "Иллюзия обмана"
}


