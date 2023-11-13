//
//  TemplateModuleItemView.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import SwiftUI
import ComposableArchitecture

// MARK: - TemplateModuleItemView

public struct TemplateModuleItemView: View {
    
    // MARK: - Properties
    
    /// The store powering the `TemplateModuleItem` reducer
    public let store: StoreOf<TemplateModuleItemReducer>
    
    // MARK: - View
    
    public var body: some View {
        WithViewStore(store) { viewStore in
            Text("This is TemplateModuleItem \(viewStore.id)")
                .font(.title)
                .padding()
                .onAppear {
                    viewStore.send(.onAppear)
                }
                .onDisappear {
                    viewStore.send(.onDisappear)
                }
        }
    }
}

// MARK: - Preview

private struct TemplateModuleItem_Previews: PreviewProvider {
    static var previews: some View {
        TemplateModuleItemView(
            store: Store(
                initialState: TemplateModuleItemState(),
                reducer: TemplateModuleItemReducer()
            )
        )
    }
}
