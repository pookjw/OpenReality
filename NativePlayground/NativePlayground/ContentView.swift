//
//  ContentView.swift
//  NativePlayground
//
//  Created by Jinwoo Kim on 8/12/25.
//

import SwiftUI
import RealityKit

struct ContentView: View {
    @State private var entity = ModelEntity()
    @State private var isRed = false
    
    var body: some View {
        VStack {
            RealityView { content in
                content.add(entity)
                
                let component = ModelComponent(
                    mesh: .generateSphere(radius: 0.1),
                    materials: [
                        SimpleMaterial(color: .blue, isMetallic: true)
                    ]
                )
                
                entity.components.set(component)
            } update: { content in
                let component = ModelComponent(
                    mesh: .generateSphere(radius: 0.1),
                    materials: [
                        SimpleMaterial(color: isRed ? .red : .blue, isMetallic: true)
                    ]
                )
                
                entity.components.set(component)
            }
            
            Toggle("", isOn: $isRed)
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
