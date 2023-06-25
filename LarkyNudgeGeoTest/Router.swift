//
//  Router.swift
//  LarkyNudgeGeoTest
//
//  Created by Juan Rodriguez on 25/6/23.
//

import Foundation

final class Router: ObservableObject {
    
    public enum Destination {
        case login
        case home
    }
    
    @Published var path = [Destination]()
    
    func navigateTo(to destination: Destination) {
        switch destination {
        case .login:
            path.append(.login)
        case .home:
            path.append(.home)
        }
    }
    
    func popToRoot() {
        path = []
    }
    
    func pop() {
        path.removeLast()
    }
}
