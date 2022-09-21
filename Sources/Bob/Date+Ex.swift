import Foundation

public extension Date {
    func formattedToString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YY/MM/dd HH:mm"
        return dateFormatter.string(from: self)
    }
}
