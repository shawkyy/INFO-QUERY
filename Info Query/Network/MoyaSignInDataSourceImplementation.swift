//
//  MoyaSignInDataSourceImplementation.swift
//  Info Query
//
//  Created by abdallah shawky  on 3/15/20.
//  Copyright © 2020 abdallah shawky . All rights reserved.
//

import Foundation
import RxSwift
import Moya

class MoyaSignInDataSourceImplementation:SignInDataSource {
   
    let provider = MoyaProvider<SignInEndPoint>()

    func signIn(email: String, password: String) -> Single<SignInResponse> {
        
        return provider.rx.request(SignInEndPoint.signIn(email, password)).map({
            response in
            
            let data = try JSONDecoder().decode(SignInResponse.self, from: response.data)
            return data
        })
    }
}
