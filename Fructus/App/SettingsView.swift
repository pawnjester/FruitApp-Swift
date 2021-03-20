//
//  SettingsView.swift
//  Fructus
//
//  Created by okonji emmanuel on 20/03/2021.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack (spacing :20) {
                    
                    GroupBox(label:
                                SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")) {
                        Divider().padding(.vertical, 4)
                        
                        HStack (alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most Fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of essential nutrients, including potassium, dietary fiber, vitamins and so much more..")
                                .font(.footnote)
                        }
                        
                    }
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "app.iphone")) {
                        
                        
                        SettingsRowView(name: "Developer", content: "John / Jane")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "IOS 14")
                        SettingsRowView(name: "Website", linkLabel: "Swift UI MasterClass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robpetras")
                        SettingsRowView(name: "Swift UI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                        HStack {
                            Text( "Developer").foregroundColor(Color.gray)
                                Spacer()
                        }
                    }
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                })
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
