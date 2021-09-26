//
//  SubView.swift
//  OnBoardPage
//
//  Created by Bruno Brito on 20/02/21.
//

import SwiftUI

struct SubView: View {
    
    var imageString: String
    
    var body: some View {
        Image(imageString)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipped()
    }
}

struct SubView_Previews: PreviewProvider {
    static var previews: some View {
        SubView(imageString: "meditating")
    }
}
