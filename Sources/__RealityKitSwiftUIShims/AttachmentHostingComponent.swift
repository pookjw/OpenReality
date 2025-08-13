package import SwiftUI
package import _SwiftUIPrivate
private import AttributeGraph

package struct AttachmentHostingComponent {
    private let inputs: _ViewInputs
    private let bridge: PreferenceBridge
    private let attachmentBridge: AttachmentPreferenceBridge
    private let subgraph: AGSubgraphRef
    private let graphHost: GraphHost
    private let id: _DisplayList_Identity
}
