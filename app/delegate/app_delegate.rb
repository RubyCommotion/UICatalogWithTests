class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    return true if RUBYMOTION_ENV == 'test'
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    
    main_view_controller = RcRootViewController.alloc.init
    main_view_controller.title = 'UICatalog'

    UINavigationBar.appearance.setBarTintColor(UIColor.lightGrayColor)
    
    # add the navigation controller's view to the window as the root view controller
    @window.rootViewController = UINavigationController.alloc.initWithRootViewController(main_view_controller)
    @window.makeKeyAndVisible
    puts "tableView: #{main_view_controller.tableView.inspect}"
    true
  end
end
