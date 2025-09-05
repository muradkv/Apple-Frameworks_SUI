//
//  FrameworkDetailViewListPresent.swift
//  Apple-Frameworks_SUI
//
//  Created by murad on 04.09.2025.
//

import SwiftUI

struct FrameworkDetailViewListPresent: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .padding()
            
            Spacer()
            
            Button {
                print("tapped")
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(
                url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!
            )
        }
    }
}

#Preview {
    FrameworkDetailViewListPresent(
        framework: MockData.sampleFramework,
        isShowingDetailView: .constant(false)
    )
}
