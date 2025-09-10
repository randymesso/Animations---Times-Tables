import SwiftUI

struct GameIntro: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack {
//            Button("Play") {
//                path.append("Settings")
//            }
//            .navigationDestination(for: String.self) { value in
//                if value == "Settings" {
//                    SettingsView()
//                }
//            }
            NavigationLink("Play", destination: SettingsView())
        }
    }
}