//
//  ContentView.swift
//  PinchAppMasterclassSwiftUIExample
//
//  Created by Erge Gevher Akova on 8.09.2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY
    @State private var isAnimating: Bool = false
    @State private var imageScale: CGFloat = 1
    
    var body: some View {
        NavigationView{
            ZStack{
                //: MARK: - PAGE IMAGE
                Image("magazine-front-cover")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 12, x: 2, y: 2)
                    .opacity(isAnimating ? 1 : 0)
                    .scaleEffect(imageScale)
                // MARK: - 1.TAP GESTURE
                    .onTapGesture(count: 2) {
                        if imageScale == 1 {
                            withAnimation(.spring()){
                                imageScale = 5
                            }
                        }else{
                            withAnimation(.spring()){
                                imageScale = 1
                            }
                        }
                    }
            }//: ZSTACK
            .navigationTitle("Pinh & Zoom")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear(perform: {
                withAnimation(.linear(duration: 1.5)) {
                    isAnimating = true
                }
            })
        } //: NAVIGATION
        .navigationViewStyle(.stack)
    }
}

// MARK: PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
