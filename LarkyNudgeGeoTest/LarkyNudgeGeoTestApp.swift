//
//  LarkyNudgeGeoTestApp.swift
//  LarkyNudgeGeoTest
//
//  Created by Juan Rodriguez on 21/6/23.
//

import SwiftUI

@main
struct LarkyNudgeGeoTestApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    @StateObject private var router = Router()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.path) {
                LoginView()
                    .navigationDestination(for: Router.Destination.self) { destination in
                        switch destination {
                        case .home:
                            HomeView()
                            
                        case .login:
                            LoginView()
                            
                        }
                    }
            }
            .environmentObject(router)
        }
        
    }
}
