import Foundation

public enum ClawdisKitResources {
    public static let bundle: Bundle = {
        let bundleName = "ClawdisKit_ClawdisKit.bundle"
        let mainBundle = Bundle.main.bundleURL
        var candidateURLs: [URL] = [
            mainBundle.appendingPathComponent(bundleName),
        ]
        if let resourceURL = Bundle.main.resourceURL {
            candidateURLs.append(resourceURL.appendingPathComponent(bundleName))
        } else {
            candidateURLs.append(
                mainBundle.appendingPathComponent("Contents/Resources").appendingPathComponent(bundleName))
        }

        for url in candidateURLs {
            if let bundle = Bundle(url: url) {
                return bundle
            }
        }

        return Bundle.main
    }()
}
