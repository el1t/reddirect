//
//  ViewController.swift
//  reddirect
//
//  Created by Ellis Tsung on 9/7/19.
//  Copyright © 2019 Ellis Tsung. All rights reserved.
//

import Cocoa
import SafariServices.SFSafariApplication

class ViewController: NSViewController {

    @IBOutlet var appNameLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appNameLabel.stringValue = "One-liner script that redirects www.reddit.com to old.reddit.com"
    }

	@IBAction func openGithub(_ sender: AnyObject?) {
		guard let url = URL(string: "https://github.com/el1t/reddirect") else { return }
		NSWorkspace.shared.open(
			[url],
			withAppBundleIdentifier: "com.apple.Safari",
			options: [],
			additionalEventParamDescriptor: nil,
			launchIdentifiers: nil
		)
	}
    
    @IBAction func openSafariExtensionPreferences(_ sender: AnyObject?) {
        SFSafariApplication.showPreferencesForExtension(withIdentifier: "co.tsung.reddirect-Extension") { error in
            if let _ = error {
                // Insert code to inform the user that something went wrong.

            }
        }
    }

}
