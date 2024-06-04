//
//  Coordinators.swift
//  dp_architecture_mvc
//
//  Created by Cristian Peña Barrios on 03/06/24.
//

import UIKit

protocol Coordinator {
    var viewController: UIViewController? { get }
    var navigationController: UINavigationController? { get }
    
    func start()
}

extension Coordinator {
    var viewController: UIViewController? { nil }
    var navigationController: UINavigationController? { nil }
}
