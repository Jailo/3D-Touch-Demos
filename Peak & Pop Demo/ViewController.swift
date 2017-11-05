//
//  ViewController.swift
//  Peak & Pop Demo
//
//  Created by Jaiela London on 11/4/17.
//  Copyright © 2017 Jaiela London. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if traitCollection.forceTouchCapability == UIForceTouchCapability.available {
            
            registerForPreviewing(with: self, sourceView: view)
            
            
            
        } else { //unavailibe
            
            print("Cant Even. use force touch, that is...")
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UIViewControllerPreviewingDelegate {
    
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        
    
        let peakViewController = storyboard?.instantiateViewController(withIdentifier: "peakViewController")
        
        return peakViewController
        
    
    }
    
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController) {
        
        let popViewController = storyboard?.instantiateViewController(withIdentifier: "popViewController")
        
        show(popViewController!, sender: self)
    }
    
        
}
    
