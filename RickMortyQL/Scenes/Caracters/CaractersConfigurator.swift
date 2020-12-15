//
//  CaractersConfigurator.swift
//  RickMortyQL
//
//  Created by Andre Costa Dantas on 15/10/20.
//

import UIKit

extension CaractersViewController {

    // Setup
    func setup() {

        let viewController          = self
        let interactor              = CaractersInteractor()
        let presenter               = CaractersPresenter()
        let router                  = CaractersRouter()

        viewController.interactor   = interactor
        viewController.router       = router
        interactor.presenter        = presenter
        presenter.viewController    = viewController
        router.viewController       = viewController
        router.dataStore            = interactor
    }

    // Routing
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }

}
