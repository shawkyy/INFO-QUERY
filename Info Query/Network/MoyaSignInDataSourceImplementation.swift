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
//import SWXMLHash


class MoyaSignInDataSourceImplementation: SignInDataSource {
    let provider = MoyaProvider<SignInEndPoint>()

    func signIn(email: String, password: String) -> Single<String> {
        return provider.rx.request(SignInEndPoint.signIn(email, password)).map({
            response in
            
            // h3ml 7aga zy l try 3shan lw 7asal fail my7slsh crash 
        //use swxmlhash here to parse from data to string
            let data = response.data as! String
            return data // zy 123
        })
    }
}
