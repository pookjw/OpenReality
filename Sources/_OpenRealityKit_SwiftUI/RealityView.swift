public import SwiftUI

public struct RealityView<Content>: View where Content : View {
    @State private var viewModel: _RealityViewModel
    private var _body: Content
    
    public nonisolated init<P>(
        make: @escaping @MainActor @Sendable (inout RealityViewContent) async -> Void,
        update: (@MainActor (inout RealityViewContent) -> Void)? = nil,
        @ViewBuilder placeholder: () -> P
    ) where Content == RealityViewContent.Body<P>, P : View {
        
    }
    
    public nonisolated init(
        make: @escaping @MainActor @Sendable (inout RealityViewContent) async -> Void,
        update: (@MainActor (inout RealityViewContent) -> Void)? = nil
    ) where Content == RealityViewContent.Body<RealityViewDefaultPlaceholder> {
        
    }
    
    public nonisolated init<A>(
        make: @escaping @MainActor @Sendable (inout RealityViewContent, RealityViewAttachments) async -> Void,
        update: (@MainActor (inout RealityViewContent, RealityViewAttachments) -> Void)? = nil,
        @AttachmentContentBuilder attachments: @escaping () -> A
    ) where Content == RealityViewAttachmentBuilderContent<A, RealityViewContent.Body<RealityViewDefaultPlaceholder>>, A : AttachmentContent {
        
    }
    
    public nonisolated init<A, P>(
        make: @escaping @MainActor @Sendable (inout RealityViewContent, RealityViewAttachments) async -> Void,
        update: (@MainActor (inout RealityViewContent, RealityViewAttachments) -> Void)? = nil,
        @ViewBuilder placeholder: () -> P, @AttachmentContentBuilder attachments: @escaping () -> A
    ) where Content == RealityViewAttachmentBuilderContent<A, RealityViewContent.Body<P>>, A : AttachmentContent, P : View {
        
    }
    
    public var body: some View {
        EmptyView()
    }
}

extension RealityView: Sendable {}
