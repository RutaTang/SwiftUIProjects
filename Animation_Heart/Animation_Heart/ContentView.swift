//
//  ContentView.swift
//  Animation_Heart
//
//  Created by 唐伟智 on 4/3/21.
//

import SwiftUI

struct ContentView: View {
    @State private var autoAnimate = false
    var body: some View {
        VStack{
            Image(systemName: "suit.heart.fill")
                .font(.system(size: 90))
                .foregroundColor(.pink)
                .scaleEffect(autoAnimate ? 1.02:0.98)
                .animation(Animation.easeInOut(duration: 0.6).repeatForever())
        }
        .onAppear{
            autoAnimate = true
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
