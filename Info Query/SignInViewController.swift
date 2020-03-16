//
//  ViewController.swift
//  Info Query
//
//  Created by abdallah shawky  on 2/13/20.
//  Copyright © 2020 abdallah shawky . All rights reserved.
//

import UIKit
import RxSwift

class SignInViewController: UIViewController {
    
    let viewModel = SignInViewModel()
    let disposeBag = DisposeBag()
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        self.showSpinner()
        viewModel.signIn(email: emailTextField.text ?? "", password: passwordTextField.text ?? "")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setSubscribers()
    }
    func setSubscribers(){
        viewModel.signInStateBehaviorSubjsect.subscribe(onNext:{
            [weak self]  (state) in
            self?.handleScreenStates(screenState: state ?? logInScreenState.failed )
        }).disposed(by: disposeBag)
    }
    
    func handleSuccessState () {
        navigationController?.performSegue(withIdentifier: "loggedIn", sender: self)
        self.hideSpinner()
    }
    func handleLoadingState(){
        //show spinner
    }
    func handleFailedState() {
        //alert controller
    }
    func handleScreenStates(screenState: logInScreenState){
        switch screenState {
        case .loading:
            handleLoadingState()
        case .success:
            handleSuccessState()
            
        case .failed:
            handleFailedState()
        }
        
    }
    
}








//
//class SpinnerViewController: UIViewController {
//
//    var spinner = UIActivityIndicatorView(style: .whiteLarge)
//
//    override func loadView() {
//        view = UIView()
//        view.backgroundColor = UIColor(white: 0, alpha: 0.7)
//
//        spinner.translatesAutoresizingMaskIntoConstraints = false
//        spinner.startAnimating()
//        view.addSubview(spinner)
//
//        spinner.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        spinner.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//    }
//
//
//    func showLoadingIndicator() {
//
//        let child = SpinnerViewController()
//        // add the spinner view controller
//        addChild(child)
//        child.view.frame = view.frame
//        view.addSubview(child.view)
//        child.didMove(toParent: self)
//
//        // wait two seconds to simulate some work happening
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            // then remove the spinner view controller
//            child.willMove(toParent: nil)
//            child.view.removeFromSuperview()
//            child.removeFromParent()
//        }
//    }
//
//}
