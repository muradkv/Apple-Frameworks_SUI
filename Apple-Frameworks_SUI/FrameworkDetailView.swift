//
//  FrameworkDetailView.swift
//  Apple-Frameworks_SUI
//
//  Created by murad on 30.08.2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button {
                    isShowingDetailView = false 
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
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
    FrameworkDetailView(
        framework: MockData.sampleFramework,
        isShowingDetailView: .constant(false)
    )
}
