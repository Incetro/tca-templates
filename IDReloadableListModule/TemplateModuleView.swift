//
//  TemplateModuleView.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import SwiftUI
import TCA

// MARK: - TemplateModuleView

public struct TemplateModuleView: View {
    
    // MARK: - Properties
    
    /// The store powering the `TemplateModule` reducer
    public let store: StoreOf<TemplateModuleReducer>
    
    // MARK: - View
    
    public var body: some View {
        WithViewStore(store) { viewStore in
            VStack(spacing: 0) {
                ForEachStore(
                    store.scope(
                        state: \.templateModuleItems,
                        action: TemplateModuleAction.templateModuleItem(id:action:)
                    ),
                    content: TemplateModuleItemView.init
                )
            }
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

private struct TemplateModule_Previews: PreviewProvider {
    static var previews: some View {
        TemplateModuleView(
            store: Store(
                initialState: TemplateModuleState(),
                reducer: TemplateModuleReducer()
            )
        )
    }
}
