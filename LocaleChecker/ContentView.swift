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
            LanguagePropertyView(title: "Language Code:", propertyValue: languageCode)
            LanguagePropertyView(title: "Region Code:", propertyValue: regionCode)
            LanguagePropertyView(title: "Calendar:", propertyValue: calendarType.description)
            LanguagePropertyView(title: "Currency Code:", propertyValue: currencyCode)
            LanguagePropertyView(title: "Uses metric?:", propertyValue: usesMetricSystem ? "Yes" : "No")
            LanguagePropertyView(title: "Preferred Languages:", propertyValue: languages.joined(separator: "\n"))
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LanguagePropertyView: View {
    var title: String
    var propertyValue: String
    var body: some View {
        Text(title)
            .font(.title2)
        Text(propertyValue).padding(.bottom)
    }
}
