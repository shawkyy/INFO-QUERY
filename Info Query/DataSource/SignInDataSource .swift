//
//  LoginDataSource .swift
//  Info Query
//
//  Created by abdallah shawky  on 3/11/20.
//  Copyright © 2020 abdallah shawky . All rights reserved.
//

import Foundation
import RxSwift

protocol SignInDataSource {
    func signIn(email:String,password:String)->Single<SignInResponse>
}
