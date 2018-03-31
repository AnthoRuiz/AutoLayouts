//
//  ViewController.swift
//  AutoLayouts
//
//  Created by Anthony Ruiz on 3/30/18.
//  Copyright © 2018 Jakaboy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   override func viewDidLoad() {
      super.viewDidLoad()
      
      //red
      let redView = UIView()
      redView.backgroundColor = .red
      
      //blue
      let blueView = UIView()
      blueView.backgroundColor = .blue
      
      //green
      let greenView = UIView()
      greenView.backgroundColor = .green
      
      [redView, blueView, greenView].forEach {
         view.addSubview($0)
      }
      
      redView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: nil, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 12), size: .init(width: 100, height: 0))
      redView.heightAnchor.constraint(equalTo: redView.widthAnchor).isActive = true
      
      blueView.anchor(top: redView.bottomAnchor, leading: nil, bottom: nil, trailing: redView.trailingAnchor, padding: .init(top: 12, left: 0, bottom: 0, right: 0))
      blueView.anchorSize(to: redView)
      
      greenView.anchor(top: redView.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: blueView.bottomAnchor, trailing: redView.leadingAnchor, padding: .init(top: 0, left: 12, bottom: 0, right: 12))
      
      //purple
//      let purpleView = UIView()
//      purpleView.backgroundColor = .purple
//      view.addSubview(purpleView)
//      purpleView.fillSuperView()
   }
}

