//
//  File.swift
//  Run
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import SwiftUI
import Routing
import Model

public struct RunView: View {
  @Environment(Router.self) private var router
  @Environment(RunViewModel.self) private var runViewModel
  let run: Run

  public init(run: Run) {
    self.run = run
  }

  public var body: some View {
    VStack(spacing: 12) {
      Text("Run View")
        .font(.title)
      Button("Push to Account view") {
        router.push(.account(Account()))
      }
      Button("Push or pop to Account view") {
        router.pushOrPopIfNeeded(.account(Account()))
      }
      Button("Pop to root view") {
        router.popToRoot()
      }
    }
    .task {
      await runViewModel.fetch()
    }
  }
}

import Factory
@Observable
@MainActor
public final class RunViewModel {
  @ObservationIgnored
  @Injected(\.runWorker) private var runWorker

  public init() {}

  func fetch() async {
    let run = try! await runWorker.fetch()
    print(run)
  }
}
