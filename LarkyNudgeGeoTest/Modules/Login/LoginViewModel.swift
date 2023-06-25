//
//  ViewModel.swift
//  LarkyNudgeGeoTest
//
//  Created by Juan Rodriguez on 23/6/23.
//

import Foundation
import nudgeGeo

class LoginViewModel: ObservableObject {
    
    enum NavigationStatus {
        case navigateHome
        case none
    }
    
    // MARK: - Properties
    
    @Published var userEmail: String = ""
    @Published var userPassword: String = ""
    @Published var loading: Bool = false
    @Published var error: String = ""
    @Published var navigationStatus: NavigationStatus = .none
    
}

// MARK: - Public methods

extension LoginViewModel {
    func login() {
        loading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            if self.userEmail.lowercased() == "user" && self.userPassword == "123" {
                self.error = ""
                self.navigationStatus = .navigateHome
            } else {
                self.error = "User or password incorrect"
            }
            
            self.loading = false
        }
    }
}
