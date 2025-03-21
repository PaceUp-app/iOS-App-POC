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
  @Environment(AccountViewModel.self) private var accountViewModel
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
      await accountViewModel.fetch()
    }
  }
}

import Factory
@Observable
@MainActor
public final class AccountViewModel {
  @ObservationIgnored
  @Injected(\.accountWorker) private var accountWorker

  public init() {}

  func fetch() async {
    let account = try! await accountWorker.fetch()
    print(account)
  }
}
