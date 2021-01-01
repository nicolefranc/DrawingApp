//
//  HomeView.swift
//  Neuro Platform
//
//  Created by user175482 on 10/17/20.
//  Copyright © 2020 NDDP. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var testActive : Bool = false
    @State var recordsActive : Bool = false
    @State var instructionsActive : Bool = false
    @State var aboutAppActive : Bool = false
    
    var body: some View {
        VStack{
//            Just some navigation stuff
            NavigationLink(
                destination: NewPatientView(),
                isActive: $testActive,
                label: {
                    EmptyView()
                })
            NavigationLink(
                destination: FileManagerView(),
                isActive: $recordsActive,
                label: {
                    EmptyView()
                })
            NavigationLink(
                destination: InstructionsView(),
                isActive: $instructionsActive,
                label: {
                    EmptyView()
                })
            NavigationLink(
                destination: AboutAppView(),
                isActive: $aboutAppActive,
                label: {
                    EmptyView()
                })
            
            
//            Actually seen by user
            Text("Analysis Platform")
                .textStyle(TitleTextStyle())
            
            Button(action: {testActive.toggle()}, label: {
                Text("Take the Test")
            }).buttonStyle(MainButtonStyle())
            
            Button(action: {recordsActive.toggle()}, label: {
                Text("View Patient Records")
            }).buttonStyle(MainButtonStyle())
            
            Button(action: {instructionsActive.toggle()}, label: {
                Text("Instructions Overview")
            }).buttonStyle(MainButtonStyle())
            
            Button(action: {aboutAppActive.toggle()}, label: {
                Text("About the App")
            }).buttonStyle(MainButtonStyle())
            
        }.navigationBarHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
