import Foundation

public enum AppType: String {
    case a11y
}

public struct Analytics {
    public static func logOpen(for app: AppType) {
        guard let url = URL(string: "https://api.countapi.xyz/hit/\(app.rawValue)/open") else { return }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { _, _, _ in }.resume()
    }
}
