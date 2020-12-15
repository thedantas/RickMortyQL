//
//  CaractersViewController.swift
//  RickMortyQL
//
//  Created by Andre Costa Dantas on 15/10/20.
//

import UIKit

class CaractersViewController: UIViewController, SegueHandler {
    
    @IBOutlet weak var tableView: UITableView!{
        didSet{
            tableView.delegate = self
            tableView.dataSource = self
            tableView.register(UINib(nibName: "CaractersTableViewCell", bundle: nil), forCellReuseIdentifier: "CaractersTableViewCell")
        }
    }
    enum SegueIdentifiers: String {
        case proposalSent = "ProposalSent"
    }
    // Var's
    var caracter = [CharacterQuery.Data.Character.Result]()
    var interactor: CaractersBusinessLogic?
    var router: (NSObjectProtocol & CaractersRoutingLogic & CaractersDataPassing)?
    var page:Int = 1

    // Constructor
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    // Load
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor?.getCaracters(request: Caracters.GetCaracters.Request.init(page: 1))
    }

    // Appear
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
  
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

}
