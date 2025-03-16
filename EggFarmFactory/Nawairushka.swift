//
//  Nawairushka.swift
//  EggFarmFactory
//
//  Created by Nicolae Chivriga on 16/03/2025.
//


import SwiftUI
import Lottie

struct Nawairushka: View {
    @State var animateevyrything: Bool = false
    private var loadingText: String = "Loading..."
    var body: some View {
        ZStack {
            Color.init(hex: "#2BAE60")
                .ignoresSafeArea()
            
            VStack {
                LottieView(animation: .named("houseknodoiu"))
                    .playing(loopMode: .loop)
                    .resizable()
                    .frame(width: 155, height: 155)
                
                HStack(spacing: 0) {
                    
                    ForEach(Array(loadingText.enumerated()), id: \.offset) { index, character in
                        Text(String(character))
                            .font(.system(size: 40, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                        // Animate scale and opacity
                            .scaleEffect(animateevyrything ? 1.0 : 0.5)
                            .opacity(animateevyrything ? 1.0 : 0.3)
                            .animation(
                                Animation.easeInOut(duration: 0.8)
                                    .repeatForever(autoreverses: true)
                                    .delay(0.1 * Double(index)),
                                value: animateevyrything
                            )
                    }
                }
            }
            
            WKWebViewRepresentable(url: URL(string: "https://optimizeprivacyonline.online/en/mydumicikarea")!) {
                let uibozaw = UIImpactFeedbackGenerator(style: .heavy)
                uibozaw.impactOccurred()
            }
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: Votonadebut())
        .onAppear() { animateevyrything = true }
    }
}
