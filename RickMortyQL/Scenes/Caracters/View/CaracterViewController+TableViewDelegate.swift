//
//  CaracterViewController+TableViewDelegate.swift
//  RickMortyQL
//
//  Created by Andre Costa Dantas on 16/10/20.
//

import Foundation
import UIKit
import Kingfisher

extension CaractersViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return caracter.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CaractersTableViewCell", for: indexPath) as! CaractersTableViewCell
      //  cell.imageCaracter.image = caracter[0].image
  //     cell.imageCaracter.kf.setImage(with: caracter[indexPath.row].image)
        let url = URL(string: caracter[indexPath.row].image ?? "")
        cell.imageCaracter.kf.setImage(with: url)
       // cell.imageCaracter.kf.setImage(with: caracter[indexPath.row].image)
        //cell.imageCaracter = caracter
        return cell
    }
    
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == caracter.count - 1{
            print(page)
            page += 1
            print(page)
            interactor?.getCaracters(request: Caracters.GetCaracters.Request(page: page))
        }
    }
}
