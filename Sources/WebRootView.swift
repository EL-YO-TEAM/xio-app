import SwiftUI
import WebKit

struct WebRootView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let cfg = WKWebViewConfiguration()
        cfg.allowsInlineMediaPlayback = true
        cfg.mediaTypesRequiringUserActionForPlayback = []
        cfg.allowsPictureInPictureMediaPlayback = true

        let wv = WKWebView(frame: .zero, configuration: cfg)
        wv.isOpaque = false
        wv.backgroundColor = UIColor(red: 5/255, green: 5/255, blue: 6/255, alpha: 1)
        wv.scrollView.backgroundColor = wv.backgroundColor
        wv.scrollView.bounces = false
        wv.allowsBackForwardNavigationGestures = false

        // Carga la app empaquetada dentro de la .ipa (funciona sin internet)
        if let url = Bundle.main.url(forResource: "index", withExtension: "html", subdirectory: "www") {
            wv.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent())
        }
        return wv
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
