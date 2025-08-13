package import SwiftUI

package protocol EntityWithGesture: Identifiable {
    var gesture: any Gesture { get }
    var gestureResponder: AnyObject? { get set }
}
