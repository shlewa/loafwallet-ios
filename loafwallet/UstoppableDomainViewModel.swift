//
//  UstoppableDomainViewModel.swift
//  loafwallet
//
//  Created by Kerry Washington on 11/18/20.
//  Copyright © 2020 Litecoin Foundation. All rights reserved.
//

import Foundation
import SwiftUI
import Combine
import UnstoppableDomainsResolution

class UnstoppableDomainViewModel: ObservableObject {
    
    @Published
    var searchString: String = ""
    
    @Published
    var placeholderString: String = S.Send.UnstoppableDomains.placeholder
    
    init() { 
    }
}
//
//
//import Foundation
//import SwiftUI
//import Combine
//
//
//class SupportLitecoinFoundationViewModel: ObservableObject {
//    
//    //MARK: - Combine Variables
//    @Published
//    var supportLTCAddress: String = ""
//    
//    //MARK: - Public Variables
//    var didGetLTCAddress: ((String) -> Void)?
//    
//    init() {}
//    
//    func updateAddressString(address: String) {
//        didGetLTCAddress?(address)
//    }
//}
