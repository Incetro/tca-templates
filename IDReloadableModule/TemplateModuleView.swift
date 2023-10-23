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
            IDReloadableView(
                store: store.scope(
                    state: \.reloadableTemplateModule,
                    action: TemplateModuleAction.reloadableTemplateModule
                ),
                loader: {
                    ProgressView()
                }
            ) {
                VStack {
                    Spacer()
                    Text("This is TemplateModule")
                        .font(.title)
                        .padding()
                    Spacer()
                }
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