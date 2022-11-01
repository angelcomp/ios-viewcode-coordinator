//
//  Coordinator.swift
//  ios-viewcode-coordinator
//
//  Created by Angelica dos Santos on 01/11/22.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}

protocol MainCoordinatorProtocol: Coordinator {
    func goToViewController()
    func goToSecondViewController()
}
