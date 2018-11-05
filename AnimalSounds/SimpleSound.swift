import Foundation
import AudioToolbox

class SimpleSound {
    
    private var soundID: SystemSoundID = 0
    
    public init(named name: String) {
        if let soundURL: URL = soundURL(forName: name) {
            let status: OSStatus = AudioServicesCreateSystemSoundID(soundURL as CFURL, &soundID);
            if status != noErr {
                print("Unable to create sound at URL: '\(name)'")
                soundID = 0
            }
        }
    }
    
    public func play() {
        if soundID != 0 {
            AudioServicesPlaySystemSound(soundID);
        }
    }
    
    private func soundURL(forName name: String) -> URL? {
        
        let fileExtensions: [String] = ["m4a", "wav", "mp3", "aac", "adts", "aif", "aiff", "aifc", "caf", "mp4"];
        
        for fileExtention in fileExtensions {
            if let soundURL: URL = Bundle.main.url(forResource: name, withExtension: fileExtention) {
                return soundURL;
            }
        }
        print("Unable to find sound file with name '\(name)'");
        return nil;
    }
    
    deinit {
        if soundID != 0 {
            AudioServicesDisposeSystemSoundID(soundID);
        }
    }
}
