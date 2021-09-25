//
//  ContentView.swift
//  iExpense
//
//  Created by Ibukunoluwa Soyebo on 22/07/2021.
//

import SwiftUI

class User: ObservableObject {
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
}

struct ContentView: View {
    @State private var showingSheet = false

    @ObservedObject var user = User()
    
    var body: some View {
        Button("Show Sheet") {
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "@twostraws")
        }
    }
}


struct SecondView: View{
    var name: String

    var body: some View {
        Text("Hello, \(name)!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
