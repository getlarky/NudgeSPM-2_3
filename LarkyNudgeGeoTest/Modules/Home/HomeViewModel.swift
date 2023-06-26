//
//  HomeViewModel.swift
//  LarkyNudgeGeoTest
//
//  Created by Juan Rodriguez on 25/6/23.
//

import Foundation
import nudgeGeo

class HomeViewModel: ObservableObject {
    
    private var myNudge: NudgeGeo!
    private let apiKey: String = "NVE_UaN87VhvGeonBnph2Q"
    private let federationId: String = "testUserIdIphone"
    
    init() {
        setupNudgeGeo()
    }
}

// MARK: - Setup Notifications

 extension HomeViewModel {
    func setupNudgeGeo() {
        myNudge = NudgeGeo(
            options: [
                "apiKey": self.apiKey,
                "enabled": true,
                "showLocationDialog": true,
                "federationId": self.federationId
            ]
        );
    }
}
