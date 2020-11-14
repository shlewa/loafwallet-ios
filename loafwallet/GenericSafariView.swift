//
//  GenericSafariView.swift
//  loafwallet
//
//  Created by Kerry Washington on 11/13/20.
//  Copyright © 2020 Litecoin Foundation. All rights reserved.
//

import SwiftUI
import WebKit

struct GenericSafariView: UIViewRepresentable {
    
    let url: URL
    
    @ObservedObject
    var viewModel: GenericSafariViewModel
    
    init(url: URL, viewModel: GenericSafariViewModel) {
        self.viewModel = viewModel
        self.url = url
    }
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView(frame: .zero)
    }
    
    func updateUIView(_ view: WKWebView, context: Context) {
            view.load(URLRequest(url: self.url))
    }
}


struct GenericSafariView_Previews: PreviewProvider {
    static let viewModel = GenericSafariViewModel()
    static var previews: some View {
        GenericSafariView(url: FoundationSupport.url, viewModel: viewModel)
    }
}


