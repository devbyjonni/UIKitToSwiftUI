//
//  ViewController.swift
//  UIKitToSwiftUI
//
//  Created by Jonni Akesson on 2022-05-15.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        extractView()
    }

    func extractView() {
        let hostView = UIHostingController(rootView: SwiftUIView())
        hostView.view.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(hostView.view)
        
        let constraints = [
            hostView.view.topAnchor.constraint(equalTo: view.topAnchor),
            hostView.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            hostView.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hostView.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            hostView.view.widthAnchor.constraint(equalTo: view.widthAnchor),
            hostView.view.heightAnchor.constraint(equalTo: view.heightAnchor)
        ]
        self.view.addConstraints(constraints)
    }
}

