describe 'Application UICatalogConversion' do
  before do
    @app = UIApplication.sharedApplication
  end

  it 'has one window' do
    @app.windows.size.should == 1
  end

  it 'has a navigation controller as root view controller' do
    @app.keyWindow.rootViewController.class.should == UINavigationController
  end

  it 'root navigation controller has the title \'UIKit Views and Controls\'' do
    @app.keyWindow.rootViewController.title.should == 'UIKit Views and Controls'
  end

end