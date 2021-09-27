//
//  ContentView.swift
//  iExpense
//
//  Created by Ibukunoluwa Soyebo on 22/07/2021.
//

import SwiftUI

struct User: Codable {
    var firstName:String
    var lastName:String
}

struct ContentView: View {
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    @State private var user = User(firstName: "Taylor", lastName: "Swift")


    var body: some View {
        Button("hq"){
            let encoder = JSONEncoder()

            if let data = try? encoder.encode(self.user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
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
