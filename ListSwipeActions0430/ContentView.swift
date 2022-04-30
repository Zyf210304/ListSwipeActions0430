//
//  ContentView.swift
//  ListSwipeActions0430
//
//  Created by 亚飞 on 2022/4/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        List {
            
            ForEach(1..<10) { i in
                
                HStack{
                    
                    Text("\(i)")
                }
                .swipeActions {
                    
                    Button {
                        
                        print("trush")
                    } label: {
                        
                        Image(systemName: "trash")
                    }
                    .tint(.red)

                }
                .swipeActions(edge: .leading) {
                    
                    Button {
                        
                        print("add")
                    } label: {
                        
                        Image(systemName: "plus.circle")
                    }
                    .tint(.green)

                }
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
