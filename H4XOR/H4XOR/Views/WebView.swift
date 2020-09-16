//
//  WebView.swift
//  H4XOR
//
//  Created by Jahan Miah on 16/09/2020.
//  Copyright © 2020 Jahan Miah. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let  urlString : String?
    
    func makeUIView(context: Context) -> WebView.UIViewType{
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}



 
