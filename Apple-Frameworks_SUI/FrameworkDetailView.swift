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
            } label: {
                AFButton(title: "Learn More")
            }

        }
    }
}

#Preview {
    FrameworkDetailView(
        framework: MockData.sampleFramework,
        isShowingDetailView: .constant(false)
    )
}
