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
  var path: [PushDestination] = []
  var sheet: SheetDestination?
  var fullScreenCover: FullScreenCoverDestination?

  public init() {}

  func push(_ destination: PushDestination) {
    path.append(destination)
  }

  func pushOrPopIfNeeded(_ destination: PushDestination) {
    if path.contains(destination) {
      path.removeAll(where: { $0 != destination })
    } else {
      push(destination)
    }
  }

  func present(_ sheet: SheetDestination) {
    self.sheet = sheet
  }

  func cover(_ fullScreenCover: FullScreenCoverDestination) {
    self.fullScreenCover = fullScreenCover
  }

  func back() {
    path.popLast()
  }

  func popToRoot() {
    path.removeAll()
  }

  func closeSheet() {
    sheet = nil
  }

  func closeCover() {
    fullScreenCover = nil
  }
}
