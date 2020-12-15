//
//  CaractersModels.swift
//  RickMortyQL
//
//  Created by Andre Costa Dantas on 15/10/20.
//

import UIKit

enum Caracters {
    enum GetCaracters {
        struct Request {
            var page: Int
        }
        enum Response {
            struct Failure {
                var error: Error
            }
            struct Success {
                var caracter: [CharacterQuery.Data.Character.Result]
            }
        }
        enum ViewModel {
            struct Failure {
                var error: Error
            }
            struct Success {
                var caracter: [CharacterQuery.Data.Character.Result]
            }
        }
    }
}

import Foundation

// MARK: - Caracter
class Caracter {
    let data: DataClass

    init(data: DataClass) {
        self.data = data
    }
}

// MARK: - DataClass
class DataClass {
    let characters: Characters

    init(characters: Characters) {
        self.characters = characters
    }
}

// MARK: - Characters
class Characters {
    let results: [Result]

    init(results: [Result]) {
        self.results = results
    }
}

// MARK: - Result
class Result {
    let id, name: String
    let status: Status
    let species, type: String
    let gender: Gender
    let origin, location: Location
    let image: String
    let created: String

    init(id: String, name: String, status: Status, species: String, type: String, gender: Gender, origin: Location, location: Location, image: String, created: String) {
        self.id = id
        self.name = name
        self.status = status
        self.species = species
        self.type = type
        self.gender = gender
        self.origin = origin
        self.location = location
        self.image = image
        self.created = created
    }
}

enum Gender {
    case female
    case male
    case unknown
}

// MARK: - Location
class Location {
    let name: String

    init(name: String) {
        self.name = name
    }
}

enum Status {
    case alive
    case dead
    case unknown
}
