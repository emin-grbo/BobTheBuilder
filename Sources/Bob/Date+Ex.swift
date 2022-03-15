import Foundation

extension Date {
    func formatedToString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YY/MM/dd HH:mm"
        return dateFormatter.string(from: self)
    }
}
