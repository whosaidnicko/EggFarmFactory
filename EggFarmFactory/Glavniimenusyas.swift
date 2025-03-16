//
//  Glavniimenusyas.swift
//  EggFarmFactory
//
//  Created by Nicolae Chivriga on 15/03/2025.
//

import SwiftUI
import Lottie


struct Glavniimenusyas: View {
    @State var mkusqzbr: Bool = false
    var body: some View {
        ZStack {
            Image("bazadnikfone")
                .resizable()
                .ignoresSafeArea()
            
            
            LottieView(animation: .named("zolotisheeg"))
                .playing(loopMode: .playOnce)
                .animationDidFinish { _ in
                   
                    
                    withAnimation {
                        mkusqzbr = true
                    }
                    
                }
                .resizable()
                .frame(width: 165, height: 165)
                .scaleEffect(mkusqzbr ? 0 : 1)
            
            VStack {
               
                    Image("culizta")
                        .resizable()
                        .scaledToFit()
                        .padding(10.2)
                    .offset(y: mkusqzbr ? 0 : -UIScreen.main.bounds.height)
                    
                

         
                HStack(spacing: 33.3) {
                    NavigationLink {
                        Ohnadosledovatipravilam()
                    } label: {
                        Image("stinuza")
                            .resizable()
                            .scaledToFit()
                            .padding(8.5)
                    }
                        .scaleEffect(mkusqzbr ? 1 : 0)
                    
                    NavigationLink {
                        Nawairushka()
                    } label: {
                        Image("gme")
                        
                            .resizable()
                            .scaledToFit()
                            .padding(8.5)
                    }

                  
                        .scaleEffect(mkusqzbr ? 1 : 0)
                    
                    NavigationLink {
                        Setbizswqas()
                    } label: {
                        Image("infoazib")
                            .resizable()
                            .scaledToFit()
                            .padding(8.5)
                            .scaleEffect(mkusqzbr ? 1 : 0)
                    }
                }
            }
            
                
                  
                
        }
        .navigationBarBackButtonHidden()
        .onAppear() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                if !mkusqzbr {
                    let sqerra = UIImpactFeedbackGenerator(style: .heavy)
                    sqerra.impactOccurred()
                }
            }
        }
    }
}
