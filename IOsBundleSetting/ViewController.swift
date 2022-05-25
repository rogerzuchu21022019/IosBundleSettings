//
//  ViewController.swift
//  IOsBundleSetting
//
//  Created by Vu Thanh Nam on 18/05/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UserDefaults.standard.register(defaults: [String : Any]())
    }

    override func viewWillAppear(_ animated: Bool) {
        let userDefault:UserDefaults = UserDefaults.standard
        var fullname = userDefault.string(forKey: "fullname")
        let email = userDefault.string(forKey: "email")
        let phone = userDefault.string(forKey: "phone")
        let address = userDefault.string(forKey: "address")
        let isUserEnabled = userDefault.bool(forKey: "notification")
        
        
         userDefault.setValue("NamZuChu", forKey: "fullname")
        userDefault.setValue("vu.nam@hitachivantara.com", forKey: "email")
        userDefault.synchronize()
       
        print("\(fullname!)")
        print("\(email!)")
        print("\(phone!)")
        print("\(address!)")
        print("\(isUserEnabled)")
    }

}

