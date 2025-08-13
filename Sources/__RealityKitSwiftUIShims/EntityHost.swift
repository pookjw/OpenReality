private import SwiftUI
private import _SwiftUIPrivate
private import OpenRealityFoundation

package class EntityHost<T: EntityRepresentable> {
    private var environment: EnvironmentValues
    private var viewPhase: _GraphInputs.Phase
    private var hoverEffectConfigured: Bool
    private var modifiedInputTargetComponents: Set<UInt64>
    private let hoverEffectGroupID: OpenRealityFoundation.HoverEffectComponent.GroupID
    private let representedEntity: T.EntityType
    private let graphBridge: HostedEntityGraphBridge
    
    // TODO: Init
//    package init<T: EntityRepresentable>(
//        _ entity: T.EntityType,
//        environment: EnvironmentValues,
//        graphBridge: HostedEntityGraphBridge,
//        
//    )
}
