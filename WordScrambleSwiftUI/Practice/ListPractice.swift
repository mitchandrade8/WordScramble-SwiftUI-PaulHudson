//
//  ListPractice.swift
//  WordScrambleSwiftUI
//
//  Created by Mitch Andrade on 3/7/22.
//

import SwiftUI

struct ListPractice: View {
    var body: some View {
        List {
            Section(header: ListHeader()) {
                ForEach(0..<7) {
                    Text("Things accomplished today \($0)")
                }
            }
            
            Section("Static section") {
                Text("What it do babyyyy!!")
            }
        }
    }
}

struct ListHeader: View {
    var body: some View {
        HStack {
            Image(systemName: "crown.fill")
            Text("Dynamic data example")
            
        }
    }
}

struct ListPractice_Previews: PreviewProvider {
    static var previews: some View {
        ListPractice()
    }
}
