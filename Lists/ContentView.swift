//
//  ContentView.swift
//  Lists
//
//  Created by Rahul Shah on 16/05/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var Items: [itemsOfFruits] = [
        itemsOfFruits(Name: "Apple", price: 200),
        itemsOfFruits(Name: "Chery", price: 400),
        itemsOfFruits(Name: "Watermelon", price: 100),
        itemsOfFruits(Name: "MuskMelom", price: 700),
        itemsOfFruits(Name: "Kiwi", price: 160),
        itemsOfFruits(Name: "Coconut", price: 10),
        itemsOfFruits(Name: "Jira", price: 1080),
        ]
       
        
        @State private var toDoList: [String] = [
            "Walking my Dog",
            "Washing My Clothes",
            "Reading a Book"
           
        ]
    
    @State var scrollExample = false
        
    
    var body: some View {
        VStack {
            Text("This is Using List Method")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.blue)
            List(Items) {
                Item in
                HStack{
                    Text(Item.Name)
                    Spacer()
                    Text("$\(Item.price)")
                    
                }
            }
            Divider()
        
            Text("This is using Just text")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.blue)
            List{
                
                Text("Hello this is new list")
                Text("Hello this is new list")
                Text("Hello this is new list")
                Text("Hello this is new list")
            }
            
            Divider()
            Text("This is Using For Each Method")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.blue)
            List{
                ForEach(toDoList, id : \.self){
                    item in
                    Text(item)
                }
                
                    
                
            }
            
            
            
            Button(action: {
                scrollExample = true
            }, label: {
                Text("Scroll Example View")
            })
            
            .sheet(isPresented: $scrollExample, content: {
                ScrollExampleView()
            })
            
            Divider()
            
            .padding()
        }
    }
}
#Preview {
    ContentView()
}
