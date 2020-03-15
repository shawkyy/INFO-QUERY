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
   
    static let baseURLString = "https://reqres.in/"
    
        var baseURL: URL {
            return URL(string: SignInEndPoint.baseURLString)!
        }
        
        var path: String {
            switch self {
            case .signIn: return "api/login"
            }
        }
        
        var method: Moya.Method {
            switch self {
            case.signIn: return .post
            }
        }
        
        var sampleData: Data {
            return Data()
        }
        
        var task: Task {
            switch self {
            case .signIn(let name,let password):
                return .requestParameters(parameters: ["email":name,"password":password], encoding: JSONEncoding.default)
            }
        }
        
        var headers: [String : String]? {
           // let header: [String: String] = [:]
            return nil
        }
        
    }

