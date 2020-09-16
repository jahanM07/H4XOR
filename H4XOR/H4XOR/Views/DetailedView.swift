//
//  DetailedView.swift
//  H4XOR
//
//  Created by Jahan Miah on 16/09/2020.
//  Copyright © 2020 Jahan Miah. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailedView: View {
    
    let url : String?
    
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(url: "https://www.google.com")
    }
}


