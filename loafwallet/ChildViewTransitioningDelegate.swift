//
//  ChildViewTransitioningDelegate.swift
//  loafwallet
//
//  Created by Kerry Washington on 12/20/19.
//  Copyright © 2019 Litecoin Foundation. All rights reserved.
//

import UIKit

class ChildViewTransitioningDelegate: NSObject {
// TBD:
    //MARK: - Public
    override init() {
        super.init()
    }

    var shouldDismissInteractively = true 
}

extension ChildViewTransitioningDelegate : UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
//        presentedViewController = presented
//        return PresentModalAnimator(shouldCoverBottomGap: type == .regular, completion: {
//            let panGr = UIPanGestureRecognizer(target: self, action: #selector(ModalTransitionDelegate.didUpdate(gr:)))
//            UIApplication.shared.keyWindow?.addGestureRecognizer(panGr)
//            self.panGestureRecognizer = panGr
//        })
        return nil
    }

    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return nil
    }

    func interactionControllerForDismissal(using animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
        return nil
    }
}
