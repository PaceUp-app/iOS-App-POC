//
//  PaceUp_POCApp.swift
//  PaceUp-POC
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import SwiftUI

@main
struct PaceUp_POCApp: App {
  var body: some Scene {
    WindowGroup {
      TestView()
    }
  }
}

import Routing
import Model
import Run
import Account
struct TestView: View {
  @State private var router = Router()
  @State private var accountViewModel = AccountViewModel()
  @State private var runViewModel = RunViewModel()

  var body: some View {
    NavigationStack(path: $router.path) {
      VStack(spacing: 12) {
        Button("Push to Account view") {
          router.push(.account(Account()))
        }
        Button("Push to Run view") {
          router.push(.run(Run()))
        }
        Button("Push dummy View") {
          router.push(.dummy)
        }
      }
      .withPushRouter()
    }
    .withSheetRouter(destination: $router.sheet)
    .withFullScreenCoverRouter(destination: $router.fullScreenCover)
    .environment(router)
    .environment(accountViewModel)
    .environment(runViewModel)
  }
}

struct DummyView: View {
  @Environment(Router.self) private var router

  var body: some View {
    VStack(spacing: 12) {
      Text("Run View")
        .font(.title)
      Button("Push to Account view") {
        router.push(.account(Account()))
      }
      Button("Push or pop to Account view") {
        router.pushOrPopIfNeeded(.account(Account()))
      }
      Button("Push to Run view") {
        router.push(.run(Run()))
      }
      Button("Push or pop to Run view") {
        router.pushOrPopIfNeeded(.run(Run()))
      }
      Button("Push dummy View") {
        router.push(.dummy)
      }
      Button("Pop to root view") {
        router.popToRoot()
      }
    }
  }
}
