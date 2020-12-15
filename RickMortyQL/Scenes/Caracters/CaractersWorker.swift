//
//  CaractersWorker.swift
//  RickMortyQL
//
//  Created by Andre Costa Dantas on 15/10/20.
//

import UIKit
import Apollo

class CaractersWorker {
    
    func getCaracter(page: Int, completion: @escaping (_ success: Bool, _ films: [CharacterQuery.Data.Character.Result]?) -> Void) {
        let listCreateMutation = CharacterQuery(page: page).self
       
        Network.shared.apollo.fetch(query: listCreateMutation) { result in
                switch result{
                case .success(let graphQLResult):
                    //completion(true, graphQLResult.data?.characters)
                    completion(true, (graphQLResult.data?.characters?.results) as? [CharacterQuery.Data.Character.Result])
                    
                case .failure( _):
                     print("erro")
                     completion(false, nil)
                }

            }
    }
}
