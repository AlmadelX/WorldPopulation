import SwiftUI

@main
struct WorldPopulationApp: App {
    @StateObject private var data = DataModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(data)
        }
    }
}
