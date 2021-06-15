//
//  MentolDetailView.swift
//  OctaCard
//
//  Created by octavianus on 14/07/20.
//  Copyright © 2020 com.octavianus. All rights reserved.
//

import SwiftUI
import UIKit

struct MentolDetailView: View {
    
    var mentor: GOPMentor
    
    var body: some View {
        VStack{
            Image("\(mentor.imageName)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: UIScreen.main.bounds.height / 4)
                .clipShape(Circle())
            Text("\(mentor.name)".capitalized)
                .font(.system(size: 36, weight: .bold, design: .rounded))
        }
    }
    
    
    func onSuccess(){
        Router.showMain()
        
    }
}

struct MentolDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MentolDetailView(mentor: GOPMentor(id: 1, name: "octa", role: "Tech Mentor", imageName: "octa"))
    }
}


struct GOPMentor: Identifiable{
    var id: Int
    var name: String
    var role: String
    var imageName:String
    
}



import Foundation
import UIKit
import SwiftUI

class Router {
    
    class var window: UIWindow? {
        if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            if let sceneDelegate = scene.delegate as? SceneDelegate {
                let window = UIWindow(windowScene: scene)
                sceneDelegate.window = window
                window.makeKeyAndVisible()
                return window
            }
        }
        return nil
    }
    
    static func showMain() {
        window?.rootViewController = UIHostingController(rootView: HomeView())
    }
    
    static func showLogin(){
        window?.rootViewController = UIHostingController(rootView: SignInView())
    }
    
}


struct HomeView: View{
    var body: some View {
        VStack{
            Text("HomeView")
            Button(action: {
                Router.showLogin()
            }) {
                Text("Return to sign in")
            }
        }
    }
}

struct SignInView: View{
    var body: some View {
        VStack{
            Text("SignIn")
            Button(action: {
                Router.showMain()
            }) {
                Text("Go to Home")
            }
        }
    }
}


