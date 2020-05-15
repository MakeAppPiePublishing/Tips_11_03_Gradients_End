//
//  ContentView.swift
//  GradientHAL
//
//  Created by Steven Lipton on 5/14/20.
//  Copyright © 2020 Steven Lipton. All rights reserved.
//
// An exercise file for iOS Development Tips Weekly
// A weekly course on LinkedIn Learning for iOS developers
//  Season 11 (Q3 2020) video 3
//  by Steven Lipton (C)2020, All rights reserved
// Learn more at https://linkedin-learning.pxf.io/YxZgj
//This Week:  Learn how to use gradients in SwiftUI
//  For more code, go to http://bit.ly/AppPieGithub

import SwiftUI

//Color Constants
//This is to make typing easier and faster for the lesson. I suggest using Color Assets in the assets folder and standard color names in real life.
let w = Color.white
let b = Color.blue
let r = Color.red
let y = Color.yellow
let k = Color.black



struct ContentView:View{
    // Gradients go here
    let gBackground = Gradient(colors: [w,b])
    let gBezel = Gradient(stops:[
        .init(color: k, location: 0.0),
        .init(color: r, location: 0.22),
        .init(color: r, location: 0.28),
        .init(color: k, location: 1.0)
    ])
    let gLight = Gradient(colors:[y,r,k])
    var body:some View{
        ZStack{
            Rectangle()
                .fill(
                    LinearGradient(gradient: gBackground, startPoint: .topLeading, endPoint: .bottom)
            )
                .edgesIgnoringSafeArea(.all)
            Circle()
                .fill(RadialGradient(gradient: gLight, center: .center, startRadius: 0, endRadius: 200))
            Circle()
                .stroke(AngularGradient(gradient: gBezel, center: .center), lineWidth: 20)
        }//zstack
        
    }//body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
