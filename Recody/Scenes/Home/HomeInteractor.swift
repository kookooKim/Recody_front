//
//  HomeInteractor.swift
//  Recody
//
//  Created by 마경미 on 2022/08/04.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol HomeBusinessLogic {
    func doTestCategory(request: Home.TestCategory.Request)
    func doTestWork(request: Home.TestWork.Request)
}

protocol HomeDataStore {
  // var name: String { get set }
}

class HomeInteractor: HomeBusinessLogic, HomeDataStore {
    var presenter: HomePresentationLogic?
    var worker: HomeWorker?
    // var name: String = ""

    var categoryLists: [Category]?
    var worksLists: [Work]?

    func doTestCategory(request: Home.TestCategory.Request) {
        worker = HomeWorker()
        worker?.doSomeWork()

        let response = Home.TestCategory.Response(categoryList: categoryLists!)
        presenter?.presentCategory(response: response)
    }

    func doTestWork(request: Home.TestWork.Request) {
        worker = HomeWorker()
        worker?.doSomeWork()

        let response = Home.TestWork.Response(workList: worksLists!)
        presenter?.presentWork(response: response)
    }
}
