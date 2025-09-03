//
//  FrameworkGridViewModel .swift
//  Apple-Frameworks_SUI
//
//  Created by murad on 01.09.2025.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true 
        }
    }
    
    @Published var isShowingDetailView = false 
}
