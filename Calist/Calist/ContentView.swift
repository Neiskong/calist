//
//  ContentView.swift
//  Calist
//
//  Created by Hong jeongmin on 2022/09/26.
//

import SwiftUI

struct ContentView: View {
    
    enum Tabs: String {
        case calendar = "캘린더"
        case toDoList = "투두 리스트"
    }
    
    @State var tabSelection: Tabs = .calendar
    
    var body: some View {
        NavigationView {
            TabView(selection: $tabSelection) {
                CalendarView()
                    .tabItem {
                        if tabSelection == Tabs.calendar {
                            Image(systemName: "calendar")
                        } else {
                            Image(systemName: "calendar")
                                .environment(\.symbolVariants, .none)
                        }
                        Text(Tabs.calendar.rawValue)
                    }
                    .tag(Tabs.calendar)
                
                ToDoListView()
                    .tabItem {
                        if tabSelection == Tabs.toDoList {
                            Image(systemName: "checkmark.circle.fill")
                        } else {
                            Image(systemName: "checkmark.circle.fill")
                                .environment(\.symbolVariants, .none)
                        }
                        Text(Tabs.toDoList.rawValue)
                    }
                    .tag(Tabs.toDoList)
            }
            .navigationBarTitle(self.tabSelection.rawValue, displayMode: .large)
        }
        .accentColor(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
