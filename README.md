# SoundButton
Simple iOS app that plays a sound when you tap a button

There's a single function in the `ViewController`, `playTitleSound`.
It looks for a sound in `Assets.xcassets` with a name that matches the name of the button.

To add more sounds, select `Assets.xcassets` in Xcode and drag & drop them into the left pane.

To add more buttons, copy & paste the existing buttons, or create a new button and connect its action to `playTitleSound`

Sample sounds:
- http://www.freesound.org/people/fabiopx/sounds/170015/
- http://www.freesound.org/people/tuberatanka/sounds/110011/

Thanks to
- http://stackoverflow.com/a/39934071/1115020
