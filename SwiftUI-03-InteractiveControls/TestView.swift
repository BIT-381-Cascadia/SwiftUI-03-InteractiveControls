//
//  TestView.swift
//  SwiftUI-03-InteractiveControls
//
//  Created by ROBERT BRONSON on 4/12/21.
//

import SwiftUI

struct TestView: View {
    var disaster: String
    var body: some View {
        Text("Hello \(disaster)")
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView(disaster:"TestString")
    }
}
