//
//  extensions.swift
//  Info Query
//
//  Created by abdallah shawky  on 3/16/20.
//  Copyright © 2020 abdallah shawky . All rights reserved.
//

import UIKit

fileprivate var aView: UIView?

extension UIViewController {
    func showSpinner() {
        aView = UIView(frame: self.view.bounds)
        aView?.backgroundColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        
        let activityIndicator = UIActivityIndicatorView(style: .whiteLarge)
         
        activityIndicator.center = aView!.center
        activityIndicator.startAnimating()
        aView?.addSubview(activityIndicator)
        self.view.addSubview(aView!)
    }
    
    func hideSpinner(){
        aView?.removeFromSuperview()
        aView = nil
    }
}
