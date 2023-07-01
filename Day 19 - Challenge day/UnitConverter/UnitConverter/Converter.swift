//
//  Converter.swift
//  UnitConverter
//
//  Created by Philipp Sanktjohanser on 05.12.22.
//
// MARK: 1. Use apples measurement translation

import SwiftUI

fileprivate enum Units: Int, CaseIterable {
    case meters
    case kilometers
    case feet
    case yards
    case miles
    
    var text: String {
        switch self {
        case .meters:       return "Meters"
        case .kilometers:   return "Kilometers"
        case .feet:         return "Feet"
        case .yards:        return "Yards"
        case .miles:        return "Miles"
        }
    }
    
    var unit: UnitLength {
        switch self {
        case .meters:       return UnitLength.meters
        case .kilometers:   return UnitLength.kilometers
        case .feet:         return UnitLength.feet
        case .yards:        return UnitLength.yards
        case .miles:        return UnitLength.miles
        }
    }
}

struct Converter: View {
    @State var inputValue = 1.0
    @State private var selectedInputUnit = "Meters"
    @State private var selectedOutputUnit = "Miles"
    
    private let units: [UnitLength] = [.meters, .kilometers, .feet, .yards, .miles]
    @State private var inputUnit = Units.meters.unit
    @State private var outputUnit = Units.kilometers.unit
    
    private var outputValue: Double {
        return Measurement(value: inputValue, unit: inputUnit).converted(to: outputUnit).value
    }
    
    private var inputUnitString: String {
        switch inputUnit {
        case .kilometers: return "Kilometers"
        case .feet: return "Feet"
        case .yards: return "Yards"
        case .miles: return "Miles"
        default: return "Meters"
        }
    }
    
    private var outputUnitString: String {
        switch outputUnit {
        case .kilometers: return "Kilometers"
        case .feet: return "Feet"
        case .yards: return "Yards"
        case .miles: return "Miles"
        default: return "Meters"
        }
    }
    
    var lengthUnitStrings = ["Meters", "Kilometers", "Feet", "Miles"]
    
    var convertedValue: Double {
        var inputUnit: Double
        switch selectedInputUnit {
        case "Meters":
            inputUnit = 1000
        case "Kilometers":
            inputUnit = 1
        case "Feet":
            inputUnit = 3280.84
        case "Miles":
            inputUnit = 0.621371
        default:
            inputUnit = 0
        }
        
        var outputUnit: Double
        switch selectedOutputUnit {
        case "Meters":
            outputUnit = 1000
        case "Kilometers":
            outputUnit = 1
        case "Feet":
            outputUnit = 3280.84
        case "Miles":
            outputUnit = 0.621371
        default:
            outputUnit = 1
        }
        
        let originalNumber = inputValue
        
        let result = originalNumber / inputUnit * outputUnit
        
        return result
    }
    
    var formatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }
    
    var body: some View {
        TabView {
            VStack(spacing: 10) {
                Section {
                    TextField("Value", value: $inputValue, formatter: formatter)
                        .keyboardType(.decimalPad)
                        .padding(10)
                        .font(.title2)
                        .background(Color.blue.opacity(0.25), in: RoundedRectangle(cornerRadius: 15))
                    
//                    Picker("Input Unit", selection: $selectedInputUnit) {
//                        ForEach(lengthUnitStrings, id: \.self) {
//                            Text($0)
//                        }
//                    }
//                    .pickerStyle(.segmented)
                    
                    Picker("Input Unit", selection: $inputUnit) {
                        ForEach(Units.allCases, id: \.rawValue) { unit in
                            Text(unit.text)
                                .tag(unit.unit)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Spacer()
                    .frame(height: 80)
                
                Section {
                    Text(outputValue.formatted(.number))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(10)
                        .font(.title2)
                        .background(Color.green.opacity(0.25), in: RoundedRectangle(cornerRadius: 15))
                    
//                    Text(convertedValue.formatted(.number))
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .padding(10)
//                        .font(.title2)
//                        .background(Color.green.opacity(0.25), in: RoundedRectangleπ∏(cornerRadius: 15))
                    
//                    Picker("Output Unit", selection: $selectedOutputUnit) {
//                        ForEach(lengthUnitStrings, id: \.self) {
//                            Text($0)
//                        }
//                    }
//                    .pickerStyle(.segmented)
                    
                    Picker("Output Unit", selection: $outputUnit) {
                        ForEach(Units.allCases, id: \.rawValue) { unit in
                            Text(unit.text)
                                .tag(unit.unit)
                        }
                    }
                    .pickerStyle(.segmented)
                }
            }
            .padding(.horizontal, 20)
        }
    }
}

struct Converter_Previews: PreviewProvider {
    static var previews: some View {
        Converter()
    }
}
