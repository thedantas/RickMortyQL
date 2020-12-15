//
//  CaractersPresenter.swift
//  RickMortyQL
//
//  Created by Andre Costa Dantas on 15/10/20.
//

import UIKit

protocol CaractersPresentationLogic {
    func presentCaracters(response: Caracters.GetCaracters.Response.Success)
    func presentFailureCaracters(response: Caracters.GetCaracters.Response.Failure)

}

class CaractersPresenter: CaractersPresentationLogic {

    // Var's
    weak var viewController: CaractersDisplayLogic?

    func presentCaracters(response: Caracters.GetCaracters.Response.Success) {
        viewController?.displayCaracters(viewModel: Caracters.GetCaracters.ViewModel.Success(caracter: response.caracter))
    }
    func presentFailureCaracters(response: Caracters.GetCaracters.Response.Failure) {
        viewController?.displayFailureCaracters(viewModel: Caracters.GetCaracters.ViewModel.Failure(error: response.error))
    }

}
