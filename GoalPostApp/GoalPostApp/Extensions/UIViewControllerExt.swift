//
//  UIViewControllerExt.swift
//  GoalPostApp
//
//  Created by Mac on 3/20/18.
//  Copyright © 2018 UICollectionView. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func presentDetails(_ viewControllerToPresent: UIViewController) {
        let transtion = CATransition()
        transtion.duration = 0.3
        transtion.type = kCATransitionPush
        transtion.subtype = kCATransitionFromRight
        self.view.window?.layer.add(transtion, forKey: kCATransition)
        
        present(viewControllerToPresent, animated: false, completion: nil)
    }
    
    func presentSecondaryDetail(_ viewControllerToPresent: UIViewController) {
        let transtion = CATransition()
        transtion.duration = 0.3
        transtion.type = kCATransitionPush
        transtion.subtype = kCATransitionFromRight
        guard let presentedViewController = presentedViewController else { return }
        presentedViewController.dismiss(animated: false) {
            self.view.window?.layer.add(transtion, forKey: kCATransition)
            self.present(viewControllerToPresent, animated: false, completion: nil)
        }
    }
    
    func dissmissDetails() {
        let transtion = CATransition()
        transtion.duration = 0.3
        transtion.type = kCATransitionPush
        transtion.subtype = kCATransitionFromLeft
        self.view.window?.layer.add(transtion, forKey: kCATransition)
        dismiss(animated: false, completion: nil)
    }
}
