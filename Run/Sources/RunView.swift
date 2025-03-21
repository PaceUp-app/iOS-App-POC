//
//  File.swift
//  Run
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import SwiftUI

public struct RunView: View {
  @State private var viewModel = RunViewModel()

  public init() {}

  public var body: some View {
    Spacer()
      .task {
        await viewModel.fetch()
      }
  }
}

@Observable
@MainActor
final class RunViewModel {
  @ObservationIgnored
  @Injected(\.runWorker) private var runWorker: RunWorker

  func fetch() async {
    let run = try! await runWorker.fetch()
    print(run)
  }
}

import Factory
import Core
#warning("Solve this")
extension Container {
  var runWorker: Factory<RunWorker> {
    self { DefaultRunWorker(runService: self.runService.resolve()!, accountService: self.accountService.resolve()!)} // not ideal
  }
}
