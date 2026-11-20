import SwiftUI

@main
struct XioApp: App {
    var body: some Scene {
        WindowGroup {
            WebRootView()
                .ignoresSafeArea()
                .preferredColorScheme(.dark)
                .statusBarHidden(true)
        }
    }
}
