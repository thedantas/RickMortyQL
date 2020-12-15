//
//  UIViewControllerExtension+Segue.swift
//  RickMortyQL
//
//  Created by Andre Costa Dantas on 15/10/20.
//

import Foundation
import UIKit

public protocol SegueHandler {
    associatedtype SegueIdentifiers: RawRepresentable
}

public extension SegueHandler where Self: UIViewController, SegueIdentifiers.RawValue == String {
    public func performSegue(segue: SegueIdentifiers) {
        self.performSegue(withIdentifier: segue.rawValue, sender: nil)
    }
}
