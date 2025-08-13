package import AttributeGraph
package import _SwiftUIPrivate

package class AttachmentPreferenceBridge {
    package var displayListCombiner: AttributeGraph.OptionalAttribute<DisplayList>
    package var hostPreferencesCombiner: AttributeGraph.OptionalAttribute<PreferenceValues>
    package var respondersCombiner: AttributeGraph.OptionalAttribute<[ViewResponder]>
    
    @inlinable
    package init(displayListCombiner: AttributeGraph.OptionalAttribute<DisplayList>, hostPreferencesCombiner: AttributeGraph.OptionalAttribute<PreferenceValues>, respondersCombiner: AttributeGraph.OptionalAttribute<[ViewResponder]>) {
        self.displayListCombiner = displayListCombiner
        self.hostPreferencesCombiner = hostPreferencesCombiner
        self.respondersCombiner = respondersCombiner
    }
}
