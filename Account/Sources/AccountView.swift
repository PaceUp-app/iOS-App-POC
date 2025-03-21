//
//  File.swift
//  Account
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import SwiftUI

public struct AccountView: View {
  @State private var viewModel = AccountViewModel()

  public init() {}

  public var body: some View {
    Spacer()
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
