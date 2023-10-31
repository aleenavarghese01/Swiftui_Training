//
//  ContentView.swift
//  coreDataPractise
//
//  Created by Aleena Varghese on 30/10/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \Student.name, ascending: true)]) var students: FetchedResults<Student>
    @State  var selectedStudent: Student?
    @State private var selectedStudentIndices: IndexSet = IndexSet()
    @State var c = ""
    
    
    var body: some View {
        VStack {
            List{
                ForEach(Array(students.enumerated()), id: \.element) { (index, student) in
                    HStack {
                        Text("\(index + 1) ).")
                        Text(student.name ?? "unknown")
                        Spacer()
                        Image(systemName: selectedStudentIndices.contains(index) ? "checkmark.square" : "square")
                    }
                    .onTapGesture {
                        toggleStudentSelection(student)
                    }
                }
                .onDelete(perform: deleteStudent)
                
                Button("delete first"){
                    deleteStudent(at: IndexSet(integer: students.startIndex))
                }
                Button("delete last"){
                    deleteStudent(at: IndexSet(integer: students.endIndex-1))
                }
                Button("Delete Selected") {
                    deleteSelectedStudents()
                }
                Button("Add"){
                    let firstNames = ["Mia", "Mev", "Luc" ,"Ance"]
                    let lastNames = ["Roy", "John", "Joy", "Ken" ]
                    
                    
                    let choseFirstName = firstNames.randomElement() ?? ""
                    let choseLastName = lastNames.randomElement() ??  ""
                    
                    let student = Student(context: moc)
                    student.id = UUID()
                    student.name = "\(choseFirstName) \(choseLastName)"
                    
                    try?  moc.save()
                }
                Button("delete all"){
                    deleteAllStudents()
                }
                
            }
            .padding()
        }
    }
    
    func deleteStudent(at offsets: IndexSet){
        for offset in offsets{
            let student = students[offset]
            moc.delete(student)
        }
    }
    func deleteAllStudents() {
        for student in students {
            moc.delete(student)
        }
        try? moc.save()
    }
    func toggleStudentSelection(_ student: Student) {
        if let index = students.firstIndex(of: student) {
            if selectedStudentIndices.contains(index) {
                selectedStudentIndices.remove(index)
            } else {
                selectedStudentIndices.insert(index)
            }
        }
    }
    
    func deleteSelectedStudents() {
        for offset in selectedStudentIndices {
            let student = students[offset]
            moc.delete(student)
        }
        try? moc.save()
        selectedStudentIndices.removeAll()
    }
}

#Preview {
    ContentView()
}



