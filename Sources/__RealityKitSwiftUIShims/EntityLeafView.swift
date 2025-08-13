internal import SwiftUI

struct EntityLeafView<Content: View>: View {
    private let content: Content
    private let hostingComponent: AttachmentHostingComponent?
    private var platformHost: EntityHost<Content>
    private let context: EntityRepresentableContext<Content>
}
