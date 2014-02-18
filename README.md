UICatalogWithTests
==================

Work in Progress
================

- add in tests to the UICatalogConversion RubyMotion app; apply more Ruby like syntax and practices.

A Note re Testing Strategy
==========================

A large number of tests are run; particularly the tests of label text which could be viewed as being overly brittle.
In this app's case the labelling is important and needs to be accurate e.g. file location of controls and views so they
are tested.

Another place where convention is broken is the recommendation for one assert per unit test - see the following link for
reasons as to why this is not always a hard and fast rule:
http://programmers.stackexchange.com/questions/7823/is-it-ok-to-have-multiple-asserts-in-a-single-unit-test

While there are a large number of spec tests for this app, their purpose is to demo testing - judgement is required
whether any further tests make sense. In this case, we're ignoring that trade-off - normally you wouldn't.


UICatalogConversion App
=======================

The UICatalogConversion app is a conversion of Apple's iOS UICatalog source code into RubyMotion source code.

RubyMotion Web Site: http://www.rubymotion.com

Apple's UICatalog About:https://developer.apple.com/library/ios/samplecode/uicatalog/Introduction/Intro.html#//apple_ref/doc/uid/DTS40007710-Intro-DontLinkElementID_2

Apple's UICatalog Readme:  https://developer.apple.com/library/ios/samplecode/uicatalog/Listings/ReadMe_txt.html#//apple_ref/doc/uid/DTS40007710-ReadMe_txt-DontLinkElementID_10

Purpose of UICatalogConversion App
==================================

  To provide template code for all iOS 7 UI elements and spec tests


UICatalogConversion App
=======================
 
This UICatalogConversion app is a demo of many of the views and controls in the UIKit framework, along with their various properties and styles.
If you need RubyMotion code to create specific UI controls or views, refer to this sample and it should give you a good head start in building your UI.
In most cases, you can simply copy and paste the code snippets you need. When images or custom views are used, accessibility code has been added.
Using the iOS Accessibility API enhances the user experience of VoiceOver users.

 
Using the Sample
================

Please see the RubyMotion web site for runtime requirements - http://www.rubymotion.com/developer-center/guides/getting-started/

In most areas of this example, as you see various UI elements, you will see a corresponding explanation as to where you can find the code.
So for example the Alerts page - there will be a label that identifies the source file for the Alert code e.g. rc_alerts_view_controller.rb".
This means refer to the rc_alerts_view_controller.rb
 
Buttons - This UIViewController or page contains various kinds of UIButton controls complete with background images.
 
Controls - This page contains other miscellaneous UIControl classes helpful in building your user interface including switch, slider page, and progress indicator.
 
TextFields - This page hosts different kinds of UITextField controls.  It also demonstrates how to handle the keyboard, particularly where text fields are placed.
 
SearchBar - This pages exhibits the UISearchBar control.
 
TextView - This page exhibits the use of UITextView.
 
Pickers - This page shows the varying picker style view including UIPickerView and UIDatePicker.  UIDatePicker variants include date, time, date and time, as well as a counter.  A custom picker is also included in this page.
 
Images - Shows how you can create a UIImageView containing a group of images used for animations or slide show.
 
Web - Shows how to properly use a UIWebView and target websites using NSURL class.
 
Segment - This page adds several types of UISegmentedControl views.
 
Toolbar - This page shows how to use UIToolbar and adds several kinds of UIBarButtonItems.
 
Alerts - This page shows how to use UIActionSheet and UIAlertView to display varying kinds of alerts that require user actions.  This includes simple alerts, OK/Cancel alerts, and alerts with custom titled buttons.
 
Transitions - This page shows how to implement view "flipping" and "curl" animations between two different views using a category of UIView called UIViewAnimation.
 
Localization - A work around was used to support localization under RubyMotion - see the Helper and Resources folder for applicable files.

Delegate Folder -a delegate folder was added to the usual RubyMotion folder build the happens with the RM command motion create MyApp


Contributors
============