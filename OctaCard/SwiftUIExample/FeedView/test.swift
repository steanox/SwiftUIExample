//
//  test.swift
//  OctaCard
//
//  Created by octavianus on 28/10/20.
//  Copyright © 2020 com.octavianus. All rights reserved.
//

import SwiftUI

struct RootView: View {
    
    @State var isView2Active: Bool = false
    @State var offset: CGFloat = UIScreen.main.bounds.height
    
    var body: some View {
        VStack{
            if isView2Active{
                View2()
                .edgesIgnoringSafeArea(.all)
                .offset(x: 0, y: self.offset)
                .onAppear(perform: {
                    withAnimation(.easeIn) { ()  in
                        self.offset = 0
                        self.isView2Active = true
                    }
                })
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.offset = UIScreen.main.bounds.height
                        self.isView2Active = false
                    }
                }
                
            }else{
               View1(isView2Active: $isView2Active)
            }
        }
    }
}


struct View1: View{
    @Binding var isView2Active: Bool
    
    var body: some View{
        VStack{
            Color.blue
            Button(action: {
               self.isView2Active = true
           }) {
               Text("press me")
           }
            // Add more to view 1
        }
    }
}

struct View2: View{
    var body: some View{
        Color.green
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
