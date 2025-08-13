package import UIKit
package import OpenRealityFoundation
package import _SwiftUIPrivate

package class EntityHostingView<T: Entity>: UIView {
    package init(contentEntity: T, hostingComponent: AttachmentHostingComponent) {
        fatalError("TODO")
    }
    
    package required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    package override init(frame: CGRect) {
        fatalError("init(coder:) has not been implemented")
    }
}
