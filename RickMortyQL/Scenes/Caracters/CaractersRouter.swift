//
//  CaractersRouter.swift
//  RickMortyQL
//
//  Created by Andre Costa Dantas on 15/10/20.
//

import UIKit

@objc protocol CaractersRoutingLogic {

}

protocol CaractersDataPassing {
    var dataStore: CaractersDataStore? { get }
}

class CaractersRouter: NSObject, CaractersRoutingLogic, CaractersDataPassing {

    // Var's
    weak var viewController: CaractersViewController?
    var dataStore: CaractersDataStore?

}
