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
    
    @ObservedObject var user = User()
    
    var body: some View {
        NavigationView{
            Form {
                Text("Your name is \(user.firstName) \(user.lastName).")
                TextField("First name", text: $user.firstName)
                TextField("Last name", text: $user.lastName)
                    
            }
            .navigationTitle("Well")
        }
        
    }
}


struct SecondView: View{
    var body: some View {
            Text("Second View")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
