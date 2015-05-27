# WPTest
### Overview
This test requires the candidate of the iOS developer role to write a simple iOS app with best coding practises.

### App Specification
This is a simple "News" view app. The app will fetch a JSON feed from server:
http://mobilatr.mob.f2.com.au/services/views/9.json<br>
present a table view for news titles, and will switch to a web view for the news content when a cell row is selected.

###The app needs to:
1. Have a Refresh button on top left, and will refresh the news when pressed.
2. Should show/dismiss proper UI elements when loading contents from web.
3. Show the headLine from JSON feed as title, slugLine from JSON feed as subtitle in cell. The JSON feed
may or may not have an image URL. If it does, download and display the image in cell; otherwise, text
should take the empty space.
4. When a cell is tapped, switch to a web view that shows the HTML page of the desinated URL (the
tinyUrl field in JSON).
5. The news items are to be sorted by date, newest on top (check the dateLine field in JSON)

##Requirements

###Use the latest release version of XCode
You should use the latest release version of XCode, and link your app against the lastest iOS SDK.

###Deployment Target is iOS7
The app should run on iOS7 at minimum

###Support all iPhone/iPad Screen resolutions natively
The app is a Universal app that runs on iPhones and iPads with their native resolutions : which means the app
is not "streched up" to fit a bigger screen, it should show more content if screen is bigger.

###Lazy Load the thumbnail image
Thumbnail image (if any) should be lazy loaded, which means it is only loaded when it needs to be displayed.

###App should support landscape and portrait
The app should support landscape and portrait orientations both on iPhone and iPad, and views should re-size accordingly.

###Use Autolayout
You should always use autolayout in XIB/Storyboard files, if you choose to use XIB/Storyboard. However if you choose to do everything in code, you can use either autolayout, or auto-resize mask or layout by code at your decision.

###Use of third party libraries
The following libraries can be optionally used:
<ul><li>
AFNetwork</li><li>
ReactiveCocoa</li><li>
Reachability</li></ui>
Please notice that if you use any third party libraries, your project will be assessed on Dependency Management.
