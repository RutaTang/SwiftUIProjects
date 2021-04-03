//
//  ContentView.swift
//  Animation_DraggableImage
//
//  Created by 唐伟智 on 4/3/21.
//

import SwiftUI

struct ContentView: View {
    @State var offset:CGSize = .zero
    @State var position:CGSize = .zero
    var body: some View {
        VStack{
            Image(systemName: "sun.min")
                .foregroundColor(.blue)
                .font(.system(size: 90))
                .offset(x: offset.width+position.width, y: offset.height+position.height)
                .gesture(
                    DragGesture()
                        .onChanged({ (value) in
                            let translation = value.translation
                            offset = translation
                        })
                        .onEnded({ (value) in
                            
                            position.width += offset.width
                            position.height += offset.height
                            offset = .zero
                        })
                )
        }
        .animation(.spring())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
