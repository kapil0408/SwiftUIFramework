//
//  FrameworkGridView.swift
//  SwiftUIFramework
//
//  Created by Kapil Kumar on 14/01/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        
        NavigationView {
            //ScrollView{
//                LazyVGrid(columns: viewModel.columns)
            List{
                    ForEach(MockData.frameworks, id: \.id){ framework in
                        
                        NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)){
                            FrameworkTitleView(framework: framework)

                        }
//                            .onTapGesture {
//                                viewModel.selectedFramework  = framework
//                            }
                    }
                }.navigationTitle("Apple Framework")
        }.accentColor(Color(.label))
//                .sheet(isPresented: $viewModel.isShowingDetailView) {
//                    FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
//                }
       // }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView().preferredColorScheme(.dark)
    }
}


