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
import SafariServices
import WebKit


struct SupportLitecoinFoundationView: View {
    
    @ObservedObject
    var viewModel: SupportLitecoinFoundationViewModel
     
    @State
    private var showSupportLFPage: Bool = false
     

    //MARK: - Public
    var didCopyLFAddress: (() -> Void)?
    
    init(viewModel: SupportLitecoinFoundationViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Spacer()
            Button(action: {
                self.showSupportLFPage = true
            }) {
                
                Text(S.SupportLitecoinFoundation.title)
                    .padding(.all,10)
                    .font(Font(UIFont.customMedium(size: 16.0)))
                    .foregroundColor(Color(UIColor.grayTextTint))
                    .background(Color(UIColor.secondaryButton))
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color(UIColor.secondaryBorder))
                    )
            }
            .sheet(
                isPresented: self.$showSupportLFPage,
                onDismiss: {
                    // Copy address to clipboard
                    // Dismiss Popover
                }
            ) {
                VStack {
                    GenericSafariView(url: FoundationSupport.url,
                                      viewModel: GenericSafariViewModel())
                }
            }
            Spacer()
            Rectangle()
                .fill(Color(UIColor.secondaryBorder))
                .frame(height: 1.0)
        }
    }
}
  
