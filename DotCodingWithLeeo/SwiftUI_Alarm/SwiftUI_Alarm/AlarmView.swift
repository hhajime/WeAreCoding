//
//  AlarmView.swift
//  SwiftUI_Alarm
//
//  Created by Ha Jong Myeong on 11/2/23.
//

import SwiftUI

struct AlarmView: View {
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    HStack {
                        Image(systemName: "bed.double.fill")
                            .imageScale(.small)
                        Text("수면 | 기상")
                        Spacer()
                    }
                    .padding(.leading, 4)
                    Spacer()
                }
                VStack {
                    
                }
            }
            .padding()
            .navigationTitle("알람")
            .toolbar {
            content: do {
                ToolbarItem(placement: .topBarTrailing){
                    Button {
                        print("tap!")
                    } label: {
                        Label("Profile", systemImage: "plus")
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        print("tap!")
                    } label: {
                        Text("편집")
                    }
                }
            }
            }
        }
    }
}

#Preview {
    AlarmView()
}
