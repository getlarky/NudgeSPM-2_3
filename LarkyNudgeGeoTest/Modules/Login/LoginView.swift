//
//  ContentView.swift
//  LarkyNudgeGeoTest
//
//  Created by Juan Rodriguez on 21/6/23.
//

import SwiftUI
import MapKit

struct LoginView: View {
    
    // MARK: - Properties
    
    @EnvironmentObject private var router: Router
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Text("Login")
                    .font(.system(size: 50))
                
                Spacer()
            }
            .padding(.top, 50)
            
            Spacer()
            
            VStack(spacing: 20) {
                TextField("Email", text: $viewModel.userEmail)
                    .textFieldStyle(.roundedBorder)
                
                SecureField("Password", text: $viewModel.userPassword)
                    .textFieldStyle(.roundedBorder)
                
                CustomButton(loading: $viewModel.loading, title: "Login") {
                    viewModel.login()
                }
                
                HStack {
                    Text(viewModel.error)
                        .font(.body)
                        .foregroundColor(.red)
                    
                    Spacer()
                }
            }
            Spacer()
        }
        .padding(20)
        .onChange(of: viewModel.navigationStatus, perform: navigate)
    }
}

// MARK: - Methods

private extension LoginView {
    func navigate(to destination: LoginViewModel.NavigationStatus) {
        switch destination {
        case .navigateHome:
            router.navigateTo(to: .home)
            
        default:
            break
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
