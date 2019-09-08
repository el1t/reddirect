//
//  SafariExtensionViewController.swift
//  reddirect Extension
//
//  Created by Ellis Tsung on 9/7/19.
//  Copyright © 2019 Ellis Tsung. All rights reserved.
//

import SafariServices

class SafariExtensionViewController: SFSafariExtensionViewController {
    
    static let shared: SafariExtensionViewController = {
        let shared = SafariExtensionViewController()
        shared.preferredContentSize = NSSize(width:320, height:240)
        return shared
    }()

}
