//
//  RecordInteractor.swift
//  Recody
//
//  Created by 마경미 on 2022/08/30.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol RecordBusinessLogic {
  func doSomething(request: Record.Something.Request)
}

protocol RecordDataStore {
  // var name: String { get set }
}

class RecordInteractor: RecordBusinessLogic, RecordDataStore {
  var presenter: RecordPresentationLogic?
  var worker: RecordWorker?
  // var name: String = ""

  // MARK: Do something

  func doSomething(request: Record.Something.Request) {
    worker = RecordWorker()
    worker?.doSomeWork()

    let response = Record.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
