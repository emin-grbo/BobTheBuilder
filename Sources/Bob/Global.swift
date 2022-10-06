import SwiftUI

public func withReduceMotionAnimation<Result>(_ animation: Animation? = .default, _ body: () throws -> Result) rethrows -> Result {
  if UIAccessibility.isReduceMotionEnabled {
    return try body()
  } else {
    return try withAnimation(animation, body)
  }
}

struct AnimationWithReduceMotion<V: Equatable>: ViewModifier {
  
  @Environment(\.accessibilityReduceMotion)
  private var reduceMotion
  
  var animation: Animation?
  let value: V
  
  func body(content: Content) -> some View {
    content
      .animation(reduceMotion ? nil : animation, value: value)
  }
}

public extension View {
  func animationWithReducedMotion<V>(_ animation: Animation?,
                                     value: V) -> some View where V : Equatable {
    modifier(AnimationWithReduceMotion(animation: animation, value: value))
  }
}
