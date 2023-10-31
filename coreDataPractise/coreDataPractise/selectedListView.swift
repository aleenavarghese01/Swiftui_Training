//
//  selectedListView.swift
//  coreDataPractise
//
//  Created by Aleena Varghese on 31/10/23.
//

import SwiftUI

struct selectedListView: View {
    @State private var selectedStudentIndices: IndexSet = IndexSet()
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \Student.name, ascending: true)]) var students: FetchedResults<Student>
    var body: some View {
        
        ForEach(Array(students.enumerated()), id: \.element) { (index, student) in
            HStack {
                Text("\(index + 1) ).")
                Text(student.name ?? "unknown")
                Spacer()
                Image(systemName: selectedStudentIndices.contains(index) ? "checkmark.square" : "square")
            }
            .onTapGesture {
                ContentView().toggleStudentSelection(student)
            }
        }
        .onDelete(perform: ContentView().deleteStudent)
    }
}

#Preview {
    selectedListView()
}
