//
//  ContentView.swift
//  CoreData1of7
//
//  Created by Vahtee Boo on 31.01.2022.
//

import SwiftUI

struct Student: Hashable {
    let name: String
}

struct ContentView: View {
    let students = [Student(name: "Marly Grgundel"), Student(name: "Haggy Vaggy")]
    
    var body: some View {
        VStack {
            List(students, id: \.self) { student in
                Text(student.name)
            }
            List {
                ForEach([2, 4, 6, 7, 10], id: \.self) {
                    Text("\($0) is even")
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
