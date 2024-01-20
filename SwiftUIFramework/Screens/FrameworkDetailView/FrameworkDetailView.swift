//
//  FrameworkDetailView.swift
//  SwiftUIFramework
//
//  Created by Kapil Kumar on 17/01/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    //@Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack
        {
//            XDismissButton(isShowingDetailView: $isShowingDetailView)
            FrameworkTitleView(framework: framework)
//            Spacer()
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            Button {
                isShowingSafariView = true
            }label: {
                //AFButton(title: "Learn More")
                
                Label("Learn More", systemImage: "book.fill")
                
            }.buttonStyle(.borderedProminent)
                .controlSize(.large)
//                .foregroundColor(.yellow)
//                .buttonBorderShape(.roundedRectangle(radius: 20))
                .tint(.red)
        }.sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString)!)
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
//        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
        FrameworkDetailView(framework: MockData.sampleFramework)

    }
}
