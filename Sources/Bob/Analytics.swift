import Foundation

public enum AppType: String {
    case a11y
}

public struct Analytics {
    public static func logOpen(for app: AppType) {
        Task {
            guard let url = URL(string: "https://api.countapi.xyz/hit/\(app.rawValue)/open") else { return }
            let session = URLSession.shared
            guard let (_, _) = try? await session.data(from: url) else { return }
        }
    }
}
