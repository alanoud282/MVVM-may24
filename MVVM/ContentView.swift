//
//  ContentView.swift
//  MVVM
//
//  Created by ساره المرشد on 24/05/2023.
//

import SwiftUI
struct ContentView: View {
@StateObject private var vm = ViewModel()
   
   var body: some View {
       VStack {
           
           HStack {
               Button("Increment") {
                   vm.increment()
               }
               Text("\(vm.counter)")
                   .bold()
                   .foregroundColor(.gray)
                   .padding()
           }
           List(vm.itemList) { item in
               HStack {
                   Text(item.name)
                   Spacer()
                   Text(item.description)
               }
           }
           .listStyle(.plain)
           .background(.thinMaterial)
           Button("Add item") {
               vm.addItem()
           }
           .padding()
       }
   }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
