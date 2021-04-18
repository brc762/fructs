//
//  OnboardingView.swift
//  Fructs
//
//  Created by Bruno Raphael on 17/04/21.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView.init(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/,
                     content:  {
                        //MARK: CONTENT
                        
                        ForEach(0..<5) { arg in
                            
                            FruitCardView().tabItem {
                                Text("Nathany \(arg)")
                                    .accentColor(.orange)
                            }
                        }
                        

                        
                     })
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
