package import SwiftUI
package import _SwiftUIPrivate

package struct EntityRepresentableContext<T: EntityRepresentable> {
    package private(set) var coordinator: T.Coordinator
    private var preferenceBridge: PreferenceBridge?
    package private(set) var transaction: Transaction
    package private(set) var environment: EnvironmentValues
    private var phase: _GraphInputs.Phase
    private let gestureProxy: GestureProxy?
}
