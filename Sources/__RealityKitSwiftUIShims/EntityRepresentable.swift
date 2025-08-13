package import _SwiftUIPrivate
package import SwiftUI
package import MRUIKit
package import OpenRealityFoundation

package protocol EntityRepresentable: View {
    associatedtype Coordinator
    associatedtype EntityType
    
    func makeEntity(context: EntityRepresentableContext<Self>) -> EntityType
    func updateEntity(_ entity: EntityType, context: EntityRepresentableContext<Self>)
    static func dismantleEntity(_ entity: EntityType, _ coordinator: Coordinator)
    func makeCoordinator() -> Coordinator
    func _sizeThatFits(in proposedSize: _ProposedSize3D, entity: EntityType) -> MRUIKit.SPSize3D
    func _identifiedViewTree(in entity: EntityType) -> _IdentifiedViewTree
    func _gatherEntitiesWithGesture(from: Entity) -> [any EntityWithGesture]
}

extension EntityRepresentable {
    package static func dismantleEntity(_ entity: EntityType, _ coordinator: Coordinator) {
        return
    }
    
    package func _sizeThatFits(in proposedSize: _ProposedSize3D, entity: EntityType) -> MRUIKit.SPSize3D {
        return proposedSize.fixingUnspecifiedDimensions(at: SPSize3D(width: 0, height: 0, depth: 0))
    }
    
    package func _gatherEntitiesWithGesture(from: Entity) -> [any EntityWithGesture] {
        return []
    }
    
    package static func _makeView(view: _GraphValue<Self>, inputs: _ViewInputs) -> _ViewOutputs {
        fatalError()
    }
    
    package static func _makeViewList(view: _GraphValue<Self>, inputs: _ViewListInputs) -> _ViewListOutputs {
        fatalError()
    }
}
