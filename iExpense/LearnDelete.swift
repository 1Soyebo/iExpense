//
//  LearnDelete.swift
//  iExpense
//
//  Created by Ibukunoluwa Soyebo on 27/09/2021.
//

import SwiftUI

struct LearnDelete: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }

    var body: some View {
        NavigationView{
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("\($0)")
                    }
                    .onDelete(perform: removeRows)

                }

                Button("Add Number") {
                    self.numbers.append(self.currentNumber)
                    self.currentNumber += 1
                }
            }
            .navigationBarItems(leading: EditButton())
        }

    }
}

struct LearnDelete_Previews: PreviewProvider {
    static var previews: some View {
        LearnDelete()
    }
}
