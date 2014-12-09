#VideoObserverTest

A demo project to answer SO question here: http://stackoverflow.com/questions/26765900/ios-avplayerviewcontroller-does-not-display-playback-controls

Summary: In iOS 8, AVPlayerViewController will not show player controls when the subclass file implements - (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context. This simple example makes it easy to demonstrate that bug, and implements a solution: creating an observer sublcass.

Happy coding. :-)