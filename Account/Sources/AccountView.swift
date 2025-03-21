//
//  File.swift
//  Account
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import SwiftUI
import Routing
import Model

public struct AccountView: View {
  @Environment(Router.self) private var router
  @State private var viewModel = AccountViewModel()
  let account: Account

  public init(account: Account) {
    self.account = account
  }

  public var body: some View {
    VStack(spacing: 12) {
      Text("Account View")
        .font(.title)
      Button("Push to Run view") {
        router.push(.run(Run()))
      }
      Button("Push or pop to Run view") {
        router.pushOrPopIfNeeded(.run(Run()))
      }
      Button("Pop to root view") {
        router.popToRoot()
      }
    }
    .task {
      await viewModel.fetch()
    }
  }
}

import Factory
@Observable
@MainActor
final class AccountViewModel {
  @ObservationIgnored
  @Injected(\.accountWorker) private var accountWorker

  func fetch() async {
    let account = try! await accountWorker.fetch()
    print(account)
  }
}
