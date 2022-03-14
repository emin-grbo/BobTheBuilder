import Foundation

public enum AppType: String {
    case accessibilityAssistant
}

public struct Analytics {
    public static func logOpen(for app: AppType) {
        Task {
            guard let url = URL(string: "https://api.countapi.xyz/hit/\(app.rawValue)/appOpen") else { return }
            let session = URLSession.shared
            guard let (_, _) = try? await session.data(from: url) else { return }
        }
    }
    
    public static func reset(for app: AppType) {
        Task {
            guard let url = URL(string: "https://api.countapi.xyz/set/\(app.rawValue)/appOpen?value=0") else { return }
            let session = URLSession.shared
            guard let (_, _) = try? await session.data(from: url) else { return }
        }
    }
}

//https://api.countapi.xyz/create?key=appOpen&namespace=a11y
