//
//  FruiCardView.swift
//  Fructs
//
//  Created by Bruno Raphael on 12/04/21.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: PROPERTIES
    @State private var isOnAppear: Bool = true
    
    //MARK: BODY
    var body: some View {
        ZStack {
            VStack(alignment: .center, spacing: 20, content: {
                //IMAGE
                Image.init("blueberry").resizable()
                    .scaledToFit()
                    .shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
                    .opacity(1)
                    .scaleEffect(isOnAppear ? 0.3 : 1)
                
                //TITLE
                Text("BlueBerry")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                //HEADLINE
               
                Text("is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                //BUTTON START
                FruitStartButton()
            })// VSTACK
        }// ZStack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                self.isOnAppear = false
            }
        })
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(LinearGradient.init(gradient: Gradient(colors: [Color("ColorBlueBerryLight"), Color("ColorBlueBerryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(EdgeInsets.init(top: 16, leading: 16, bottom: 16, trailing: 16))
    }
    
    
}


//MARK: PREVIEWS
struct FruiCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView().previewLayout(.fixed(width: 320, height: 640))
    }
}
