//
//  UseCases.swift
//  Info Query
//
//  Created by abdallah shawky  on 3/11/20.
//  Copyright © 2020 abdallah shawky . All rights reserved.
//

import Foundation
import RxSwift

func signIn(email:String,password:String,dataSource:SignInDataSource)->Single<String> {
    return dataSource.signIn(email: email, password: password)
}



