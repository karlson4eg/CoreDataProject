//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Evi St on 4/19/22.
//
import CoreData
import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @State private var lastNameFilter = "A"
    
    
    var body: some View {
        NavigationView{
            VStack{
                FilteredList(filterKey: "lastName", filterValue: lastNameFilter) { (singer: Singer) in
                    Text("\(singer.wrappedFirstName) \(singer.wrappedLastName)")
                }
                
                NavigationLink("To candy example", destination: CandyTestView())
                
                
                Button("Add Example"){
                    let taylor = Singer(context: moc)
                    taylor.firstName = "Taylor"
                    taylor.lastName = "Swift"
                    
                    let ed = Singer(context: moc)
                    ed.firstName = "Ed"
                    ed.lastName = "Sheeran"
                    
                    let adele = Singer(context: moc)
                    adele.firstName = "Adele"
                    adele.lastName = "Adkins"
                    
                    try? moc.save()
                }
                
                Button("Show A"){
                    lastNameFilter = "A"
                }
                
                Button("Show S"){
                    lastNameFilter = "S"
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
