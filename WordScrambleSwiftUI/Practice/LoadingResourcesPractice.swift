//
//  LoadingResourcesPractice.swift
//  WordScrambleSwiftUI
//
//  Created by Mitch Andrade on 3/7/22.
//

import SwiftUI

struct LoadingResourcesPractice: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding()
    }
    
    func loadFile() {
        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
            if let fileContents = try? String(contentsOf: fileURL) {
                fileContents
            }
        }
    }
}

struct LoadingResourcesPractice_Previews: PreviewProvider {
    static var previews: some View {
        LoadingResourcesPractice()
    }
}
