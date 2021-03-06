//
//  WebView.swift
//  CulturMixPageEvent
//
//  Created by Elodie Skotnicki on 30/01/2020.
//  Copyright © 2020 Elodie Skotnicki. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct Webview: UIViewRepresentable {
    
    var url: String
    
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.url) else {
            
            return WKWebView()
        }
        
        let request = URLRequest(url: url)
        let wkWebview = WKWebView()
        wkWebview.load(request)
        return wkWebview

            
        
        
    }
    
    func updateUIView(_ uiView:WKWebView, context: UIViewRepresentableContext<Webview>) {
        
    }
    
    
}

