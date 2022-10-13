import Foundation

public extension Date {
    func formattedToString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YY/MM/dd HH:mm"
        return dateFormatter.string(from: self)
    }
  
  func formattedMonthDay() -> String {
      let dateFormatter = DateFormatter()
      dateFormatter.dateFormat = "MMM dd"
      return dateFormatter.string(from: self)
  }
}
