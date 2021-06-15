//
//  test.swift
//
//
//  Created by octavianus on 23/10/20.
//

import Foundation
import SwiftUI

 
 
struct ViewA: View{
    
    @State var isViewBShown = false
    
    var body: some View{
        Button(action: {
            self.isViewBShown.toggle()
        }) {
            Text("Show View B")
        }.sheet(isPresented: $isViewBShown) {
            ViewB()
        }
    }
}

struct ViewB: View{
    
    @State var isViewCShown = false
    
    var body: some View{
        Button(action: {
            self.isViewCShown.toggle()
        }) {
            Text("Show View C")
        }.sheet(isPresented: $isViewCShown) {
            ViewC()
        }
    }
}


struct ViewC: View{
    
    @State var isViewDShown = false
    
    var body: some View{
        Button(action: {
            self.isViewDShown.toggle()
        }) {
            Text("Show View D")
        }.sheet(isPresented: $isViewDShown) {
            ViewD()
        }
    }
}

struct ViewD: View{
    
    var body: some View{
        Text("View D")
    }
}




struct preview: PreviewProvider{
    static var previews: some View{
        ViewA()
    }
}


