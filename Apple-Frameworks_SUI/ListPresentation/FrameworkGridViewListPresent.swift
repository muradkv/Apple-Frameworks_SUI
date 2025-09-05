//
//  FrameworkGridViewListPresent.swift
//  Apple-Frameworks_SUI
//
//  Created by murad on 04.09.2025.
//

import SwiftUI

struct FrameworkGridViewListPresent: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(
                        destination: FrameworkDetailViewListPresent(
                            framework: framework,
                            isShowingDetailView: $viewModel.isShowingDetailView
                        )
                    ) {
                        FrameworkTitleViewListPresent(framework: framework)
                    }
                }
            }
            .navigationTitle("Frameworks")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridViewListPresent()
}
