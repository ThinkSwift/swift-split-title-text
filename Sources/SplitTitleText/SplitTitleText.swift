import SwiftUI

public struct SplitTitleText: View {
    let fullTitle: String
    var numberColor: Color
    var titleColor: Color
    var numberFont: Font
    var titleFont: Font
    var spacing: CGFloat

    private var numberPart: String {
        fullTitle.components(separatedBy: ".").first ?? ""
    }

    private var textPart: String {
        fullTitle
            .components(separatedBy: ".")
            .dropFirst()
            .joined(separator: ".")
            .trimmingCharacters(in: .whitespaces)
    }

    public init(
        fullTitle: String,
        numberColor: Color = .secondary,
        titleColor: Color = .primary,
        numberFont: Font = .caption,
        titleFont: Font = .body,
        spacing: CGFloat = 6
    ) {
        self.fullTitle = fullTitle
        self.numberColor = numberColor
        self.titleColor = titleColor
        self.numberFont = numberFont
        self.titleFont = titleFont
        self.spacing = spacing
    }

    public var body: some View {
        HStack(spacing: spacing) {
            Text(numberPart)
                .foregroundColor(numberColor)
                .font(numberFont)
                .monospacedDigit()

            Text(textPart)
                .foregroundColor(titleColor)
                .font(titleFont)
        }
    }
}
