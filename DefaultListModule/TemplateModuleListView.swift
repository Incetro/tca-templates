//
//  TemplateModuleListView.swift
//  TCATemplate
//
//  Created by Dmitry Savinov on 19.10.2023.
//  Copyright © 2023 Incetro Inc. All rights reserved.
//

import SwiftUI
import TCA

// MARK: - TemplateModuleListView

public struct TemplateModuleListView: View {
    
    // MARK: - Properties
    
    /// The store powering the `TemplateModuleList` reducer
    public let store: StoreOf<TemplateModuleListReducer>
    
    // MARK: - View
    
    public var body: some View {
        WithViewStore(store) { viewStore in
            VStack(spacing: 0) {
                ForEachStore(
                    store.scope(
                        state: \.templateModuleItems,
                        action: TemplateModuleListAction.templateModuleItem(id:action:)
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

private struct TemplateModuleList_Previews: PreviewProvider {
    static var previews: some View {
        TemplateModuleListView(
            store: Store(
                initialState: TemplateModuleListState(),
                reducer: TemplateModuleListReducer()
            )
        )
    }
}
