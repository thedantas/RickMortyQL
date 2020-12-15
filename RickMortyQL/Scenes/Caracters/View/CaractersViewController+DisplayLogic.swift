//
//  CaractersViewController+DisplayLogic.swift
//  RickMortyQL
//
//  Created by Andre Costa Dantas on 15/10/20.
//

import Foundation
import UIKit

protocol CaractersDisplayLogic: class {
    func displayCaracters(viewModel: Caracters.GetCaracters.ViewModel.Success)
    func displayFailureCaracters(viewModel: Caracters.GetCaracters.ViewModel.Failure)

}


extension CaractersViewController: CaractersDisplayLogic {
    func displayCaracters(viewModel: Caracters.GetCaracters.ViewModel.Success) {
        self.caracter.append(contentsOf: viewModel.caracter) ///= viewModel.caracter
      //  print(self.caracter)
        //print(viewModel.caract)
        tableView.reloadData()
        
    }
    func displayFailureCaracters(viewModel: Caracters.GetCaracters.ViewModel.Failure) {
     
    }

}
