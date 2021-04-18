//
//  OnboardingView.swift
//  Fructs
//
//  Created by Bruno Raphael on 17/04/21.
//

import SwiftUI
struct OnboardingView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView {
                ForEach(0..<3) {
                    FruitCardView().tag($0)
                }
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        }
    }
}


struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
