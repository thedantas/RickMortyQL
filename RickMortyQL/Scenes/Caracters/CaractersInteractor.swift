//
//  CaractersInteractor.swift
//  RickMortyQL
//
//  Created by Andre Costa Dantas on 15/10/20.
//


import UIKit
import Apollo

protocol CaractersBusinessLogic {
    func getCaracters(request: Caracters.GetCaracters.Request)
}

protocol CaractersDataStore {
    var caractersId: String? { get set }
}

class CaractersInteractor: CaractersBusinessLogic, CaractersDataStore {

    // Var's
    var presenter: CaractersPresentationLogic?
    var worker = CaractersWorker()
    var caractersId: String?

    func getCaracters(request: Caracters.GetCaracters.Request) {
        print(request.page)
        
        let caracterQuery = CharacterQuery(page: request.page).self
        
        Network.shared.apollo.fetch(query: caracterQuery){ [self] result in
            switch result {
            case .success(let successResult):
                presenter?.presentCaracters(response: Caracters.GetCaracters.Response.Success(caracter: (successResult.data?.characters?.results) as! [CharacterQuery.Data.Character.Result]))
            case .failure(_):
                print("error")
            }
        }
    }

}
