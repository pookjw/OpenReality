package import Foundation
package import OpenRealityFoundation
package import MRUIKit
package import SwiftUI
package import _SwiftUIPrivate
package import UIKit

@objc package class HostedEntityGraphBridge: NSObject {
    package weak var entity: OpenRealityFoundation.Entity?
    package var traitEnvironment: MRUIEntityTraitEnvironment?
    package var preferenceImporter: MRUIPreferenceImporter
    package var overrideEnvironment: EnvironmentValues?
    package var viewPhase: _GraphInputs.Phase
    
    @inlinable package init(
        entity: OpenRealityFoundation.Entity?,
        traitEnvironment: MRUIEntityTraitEnvironment?,
        preferenceImporter: MRUIPreferenceImporter,
        overrideEnvironment: EnvironmentValues?,
        viewPhase: _GraphInputs.Phase
    ) {
        self.entity = entity
        self.traitEnvironment = traitEnvironment
        self.preferenceImporter = preferenceImporter
        self.overrideEnvironment = overrideEnvironment
        self.viewPhase = viewPhase
    }
    
    @objc(overrideTraitCollectionForChildEntity:ofEntity:)
    @inlinable package func overrideTraitCollection(forChildEntity childEntity: OpaquePointer, of entity: OpaquePointer) -> UITraitCollection? {
        let hostPhase = ViewGraphHost.Phase(base: viewPhase)
        let version = DisplayList.Version()
        
    }
}
