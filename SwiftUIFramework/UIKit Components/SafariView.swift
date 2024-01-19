//
//  SafariView.swift
//  SwiftUIFramework
//
//  Created by Kapil Kumar on 18/01/24.
//

import Foundation
import SwiftUI
import SafariServices


struct SafariView: UIViewControllerRepresentable {
    typealias UIViewControllerType = SFSafariViewController
    let url: URL
    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        
    }
}
