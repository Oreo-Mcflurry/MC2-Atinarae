//
//  CameraDummyView.swift
//  Atinarae
//
//  Created by A_Mcflurry on 2023/05/08.
//

import SwiftUI

struct CameraDummyView: View {
    @EnvironmentObject var appData: AppData
    var body: some View {
        Text("Camera Dummy View")
    }
}

struct CameraDummyView_Previews: PreviewProvider {
    static var previews: some View {
        let appdata = AppData()
        CameraDummyView()
            .environmentObject(appdata)
    }
}
