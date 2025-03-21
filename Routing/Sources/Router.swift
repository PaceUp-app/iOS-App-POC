//
//  Router.swift
//  Routing
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import Observation

@MainActor
@Observable
public final class Router {
  public var path: [PushDestination] = []
  public var sheet: SheetDestination?
  public var fullScreenCover: FullScreenCoverDestination?

  public init() {}

  public func push(_ destination: PushDestination) {
    path.append(destination)
  }

  public func pushOrPopIfNeeded(_ destination: PushDestination) {
    if path.contains(destination) {
      path.removeAll(where: { $0 != destination })
    } else {
      push(destination)
    }
  }

  public func present(_ sheet: SheetDestination) {
    self.sheet = sheet
  }

  public func cover(_ fullScreenCover: FullScreenCoverDestination) {
    self.fullScreenCover = fullScreenCover
  }

  public func back() {
    path.popLast()
  }

  public func popToRoot() {
    path.removeAll()
  }

  public func closeSheet() {
    sheet = nil
  }

  public func closeCover() {
    fullScreenCover = nil
  }
}
