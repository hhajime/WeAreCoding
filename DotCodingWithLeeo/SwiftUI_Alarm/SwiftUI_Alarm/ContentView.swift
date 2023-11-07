//
//  ContentView.swift
//  SwiftUI_Alarm
//
//  Created by Ha Jong Myeong on 11/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            WorldTimeView()
                .tabItem {
                    Label("세계 시계", systemImage: "globe")
                }
            AlarmView()
                .tabItem {
                    Label("알람", systemImage: "alarm.fill")
                }
            StopWatchView()
                .tabItem {
                    Label("스톱 워치", systemImage: "stopwatch.fill")
                }
            TimerView()
                .tabItem {
                    Label("타이머", systemImage: "timer" )
                }
        }
    }
}

#Preview {
    ContentView()
}
