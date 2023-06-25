//
//  CustomButton.swift
//  LarkyNudgeGeoTest
//
//  Created by Juan Rodriguez on 25/6/23.
//

import SwiftUI

struct CustomButton: View {
    
    @Binding var loading: Bool
    let title: String
    let action: (() -> Void)
    
    var body: some View {
        HStack {
            Spacer()
            
            if loading {
                ProgressView()
                    .padding(10)
                    .tint(.white)
            } else {
                Text(title)
                    .font(.body)
                    .padding(10)
                    .foregroundColor(.white)
            }

            Spacer()
        }
        .background(Color.blue)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .onTapGesture {
            action()
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(loading: .constant(false), title: "Login", action: {})
    }
}
