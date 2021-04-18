//
//  FruitStartButton.swift
//  Fructs
//
//  Created by Bruno Raphael on 12/04/21.
//

import SwiftUI

struct FruitStartButton: View {
    
    //MARK: PROPERTIES
    var body: some View {
        
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5, content: {
            Button.init("Start") {
                
            }.font(.body)
            .accentColor(.white)
            
            
            Image.init(systemName: "arrow.right.circle")
                .fixedSize()
                .colorInvert()
        })
        .padding(EdgeInsets.init(top: 8, leading: 8, bottom: 8, trailing: 8))
        .border(Color.white, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
        .background(LinearGradient.init(gradient: Gradient(colors: [Color("ColorBlueBerryLight"), Color("ColorBlueBerryDark")]), startPoint: .top, endPoint: .bottom))
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
      
        
    }
}

struct FruitStartButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FruitStartButton().preferredColorScheme(.dark).previewLayout(.sizeThatFits)
           
          
        }
    }
}
