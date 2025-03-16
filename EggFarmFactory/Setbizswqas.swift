//
//  Setbizswqas.swift
//  EggFarmFactory
//
//  Created by Nicolae Chivriga on 16/03/2025.
//

import SwiftUI
import StoreKit


struct Setbizswqas: View {
    var body: some View {
        ZStack {
            Image("bazadnikfone")
                .resizable()
                .ignoresSafeArea()
            Button {
                if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                         SKStoreReviewController.requestReview(in: windowScene)
                     }
                 
            } label: {
                Image("ratuq")
            }

        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: Votonadebut())
    }
}
