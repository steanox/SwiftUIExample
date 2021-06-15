//
//  SwiftUIView.swift
//  OctaCard
//
//  Created by octavianus on 21/07/20.
//  Copyright © 2020 com.octavianus. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    
    let mentors = MentorData.defaultData()
    
    var body: some View {
        List(mentors.indices){ i in
            Text("\(i)")
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
