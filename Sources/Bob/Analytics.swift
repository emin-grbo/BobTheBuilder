import Foundation

enum App: String {
    case a11y
}

struct Analytics {
    func logOpen(for app: App) {
        guard let url = URL(string: "https://api.countapi.xyz/hit/\(app.rawValue)/open") else { return }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { _, _, _ in }.resume()
    }
}
