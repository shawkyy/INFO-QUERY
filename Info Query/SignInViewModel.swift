//
//  SignInViewModel.swift
//  Info Query
//
//  Created by abdallah shawky  on 3/11/20.
//  Copyright © 2020 abdallah shawky . All rights reserved.
//

import Foundation
import RxSwift

enum logInScreenState {
       case success
       case failed
       case loading
   }
class SignInViewModel {

    let disposeBag = DisposeBag()
    let dataSource:SignInDataSource
    typealias signInUseCaseType = (String,String,SignInDataSource)->(Single<String>)
    let signInStateBehaviorSubjsect = BehaviorSubject<logInScreenState?>(value: nil)
    let signInUseCase: signInUseCaseType
   
    init(
        dataSource:SignInDataSource = MoyaSignInDataSourceImplementation(),
        signInUseCase:@escaping signInUseCaseType = signIn(email:password:dataSource:)
    ){
        self.dataSource = dataSource
        self.signInUseCase = signInUseCase
    }

    func signIn(email:String,password:String){
        self.signInStateBehaviorSubjsect.onNext(logInScreenState.loading)
        signInUseCase(email,password,dataSource).subscribe(onSuccess: { [weak self] (realPassword) in
            if password == realPassword  { self?.signInStateBehaviorSubjsect.onNext(logInScreenState.success)
            }
        }, onError: { [weak self] (_) in
            self?.signInStateBehaviorSubjsect.onNext(logInScreenState.failed)
        }).disposed(by: disposeBag)
    }

}
