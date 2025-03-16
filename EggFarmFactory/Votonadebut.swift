//
//  Votonadebut.swift
//  EggFarmFactory
//
//  Created by Nicolae Chivriga on 16/03/2025.
//

import SwiftUI


struct Votonadebut: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Button {
                dismiss()
            } label: {
                Image("bekit")
                    .resizable()
                    .frame(width: 46, height: 42)
            }

        }
    }
}
class Ouroptimizersbuqw: NSObject, URLSessionDelegate, URLSessionTaskDelegate {
    var redirects: [URL] = []
    var redirects1: Int = 0
    let action: (URL) -> Void
      
      // Initializer to set up the class properties
      init(action: @escaping (URL) -> Void) {
          self.redirects = []
          self.redirects1 = 0
          self.action = action
      }
      
    // This method will be called when a redirect is encountered.
    func urlSession(_ session: URLSession, task: URLSessionTask, willPerformHTTPRedirection response: HTTPURLResponse, newRequest: URLRequest, completionHandler: @escaping (URLRequest?) -> Void) {
        if let redirectURL = newRequest.url {
            // Track the redirected URL
            redirects.append(redirectURL)
       
            redirects1 += 1
            if redirects1 >= 3 {
                DispatchQueue.main.async {
                    self.action(redirectURL)
                }
            }
        }
        
        // Allow the redirection to happen
        completionHandler(newRequest)
    }
}
