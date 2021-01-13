//
//  ContentView.swift
//  LocaleChecker
//
//  Created by Enrique Gonzalez on 1/13/21.
//

import SwiftUI

struct ContentView: View {
    @State private var languageCode: String = Locale.autoupdatingCurrent.languageCode ?? "N/A";
    @State private var regionCode: String = Locale.autoupdatingCurrent.regionCode ?? "N/A";
    @State private var calendarType: Calendar = Locale.autoupdatingCurrent.calendar;
    @State private var currencyCode: String = Locale.autoupdatingCurrent.currencyCode ?? "N/A";
    @State private var usesMetricSystem: Bool = Locale.autoupdatingCurrent.usesMetricSystem;
    @State private var languages: [String] = Locale.preferredLanguages;

    var body: some View {
        VStack {
            Group {
                Text("Language Code:")
                Text(languageCode)
                Text("Region Code:")
                Text(regionCode)
                Text("Calendar:")
                Text(calendarType.description)
                Text("Currency Code:")
                Text(currencyCode)
                Text("Uses metric?:")
                Text(usesMetricSystem ? "Yes" : "No")
            }
            Text("Preferred Languages:")
            Text(languages.joined(separator: "\n"))
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
