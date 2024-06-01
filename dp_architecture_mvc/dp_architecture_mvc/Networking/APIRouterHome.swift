//
//  APIRouter.swift
//  dp_architecture_mvc
//
//  Created by Cristian Peña Barrios on 31/05/24.
//

import Foundation

enum APIRouterHome {
    static let baseURL = "https://api.ejemplo.com"

    case getLogin
    case getUserDetails(userID: String)
    case createUser

    var path: String {
        switch self {
        case .getLogin:
            return "/login"
        case .getUserDetails(let userID):
            return "/users/\(userID)"
        case .createUser:
            return "/users"
        }
    }

    var url: String {
        return APIRouterHome.baseURL + path
    }
}
