//
//  TemplateModuleView.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import SwiftUI
import ComposableArchitecture

// MARK: - TemplateModuleView

public struct TemplateModuleView: View {
    
    // MARK: - Properties

    /// The store powering the `TemplateModule` reducer
    public let store: StoreOf<TemplateModule>
    
    // MARK: - View
    
    public var body: some View {
        VStack {
            Spacer()
            Text("This is TemplateModule")
                .font(.title)
                .padding()
            Spacer()
        }
    }
}

// MARK: - Preview

#Preview {
    TemplateModuleView(
        store: Store(
            initialState: TemplateModuleState(),
            reducer: { TemplateModule() }
        )
    )
}
