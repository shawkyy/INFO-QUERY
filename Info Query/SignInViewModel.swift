//
//  SignInViewModel.swift
//  Info Query
//
//  Created by abdallah shawky  on 3/11/20.
//  Copyright © 2020 abdallah shawky . All rights reserved.
//

import Foundation
import RxSwift

class SignInViewModel {

    enum SignedInState {
        case success
        case failed
    }
    let disposeBag = DisposeBag()
    let dataSource:SignInDataSource
    typealias signInUseCaseType = (String,String,SignInDataSource)->(Single<SignInResponse>)
    let signInStateBehaviorSubjsect = BehaviorSubject<SignedInState>(value: SignedInState.failed)
    let signInUseCase: signInUseCaseType
   
    init(
        dataSource:SignInDataSource = MoyaSignInDataSourceImplementation(),
        signInUseCase:@escaping signInUseCaseType = signIn(email:password:dataSource:)
    ){
        self.dataSource = dataSource
        self.signInUseCase = signInUseCase
    }

    func signIn(email:String,password:String){
        signInUseCase(email,password,dataSource).subscribe(onSuccess: { [weak self] (response) in
            if response.isTrue { self?.signInStateBehaviorSubjsect.onNext(SignedInState.success)
            }
        }, onError: { (_) in
            self.signInStateBehaviorSubjsect.onNext(SignedInState.failed)
            }).disposed(by: disposeBag)
    }

}
