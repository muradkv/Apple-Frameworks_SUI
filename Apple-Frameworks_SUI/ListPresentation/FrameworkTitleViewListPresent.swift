//
//  FrameworkTitleViewListPresent.swift
//  Apple-Frameworks_SUI
//
//  Created by murad on 04.09.2025.
//

import SwiftUI

struct FrameworkTitleViewListPresent: View {
    let framework: Framework
    
    var body: some View {
        HStack  {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}

#Preview {
    FrameworkTitleViewListPresent(framework: MockData.sampleFramework)
}
