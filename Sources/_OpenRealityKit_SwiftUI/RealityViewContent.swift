public import SwiftUI

#warning("TODO")

public struct RealityViewContent: RealityViewContentProtocol {
    
}

extension RealityViewContent {
    public struct Body<Placeholder> : View where Placeholder : View {
        let placeholder: Placeholder
//        @MainActor @preconcurrency public var body: some SwiftUICore.View
        
    }
}
