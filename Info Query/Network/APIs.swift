//
//  APIs.swift
//  Info Query
//
//  Created by abdallah shawky  on 3/11/20.
//  Copyright © 2020 abdallah shawky . All rights reserved.
//

import Foundation
import Moya

extension SignInEndPoint: TargetType {
   
    static let baseURLString = "http://mskwapp-001-site1.btempurl.com/"
    
        var baseURL: URL {
            return URL(string: SignInEndPoint.baseURLString)!
        }
        
        var path: String {
            switch self {
            case .signIn: return "MSService2.asmx/GetData"
            }
        }
        
        var method: Moya.Method {
            switch self {
            case.signIn: return .get
            }
        }
        
        var sampleData: Data {
            return Data()
        }
        
        var task: Task {
            switch self {
            case .signIn(let name,let password):
                return .requestParameters(parameters:
                    ["strSQLs":"select userPassword from usersAcounts where userName = '\(name)'","strTable":"usersAcounts","strCol":"\(password)"]
                    , encoding: JSONEncoding.default)
            }
        }
        
        var headers: [String : String]? {
           // let header: [String: String] = [:]
            return nil
        }
        
    }

