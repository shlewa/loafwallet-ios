//
//  SupportLitecoinFoundationView.swift
//  loafwallet
//
//  Created by Kerry Washington on 11/9/20.
//  Copyright © 2020 Litecoin Foundation. All rights reserved.
//

import SwiftUI
import UIKit
import Foundation

struct SupportLitecoinFoundationView: View {
    
    @ObservedObject
    var viewModel: SupportLitecoinFoundationViewModel
    
    @State
    var didShowWebView: Bool = false


    //MARK: - Public
    var didCopyLFAddress: (() -> Void)?
    
    init(viewModel: SupportLitecoinFoundationViewModel) {
        self.viewModel = viewModel
    }
    var body: some View {
        VStack {
            Spacer()
 
            Button(action: {
///
                      }) {
                Text(S.SupportLitecoinFoundation.title)
            }
            Spacer()
            Divider()
        }
    }
}

struct SupportLitecoinFoundationView_Previews: PreviewProvider {
    static var previews: some View {
        SupportLitecoinFoundationView(viewModel: SupportLitecoinFoundationViewModel())
    }
}
