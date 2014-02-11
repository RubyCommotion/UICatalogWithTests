# SPEC FILE READABILITY
#
# To improve readability these tests don't always follow the practice of only one assert to an it block.
# E.g. the 12 classes that demo UI views and controls are test instantiated in an it block contained loop.
#
# If an instantiation should fail, it's simple process to uncomment the NSLog output to see where the failure happened.
#
# THe same tactic can be used anywhere else that multiple asserts are made within an it block.
# the failing class for example.

describe 'RcRootViewController' do
  tests RcRootViewController

  def controller
    rotate_device to: :portrait, button: :bottom
    @root_view_controller = RcRootViewController.alloc.init
  end

  after do
    @root_view_controller = nil
  end

  before do
  end


# usual practice is not to do more than one assert - there are always exceptions :-)
  it 'should respond to attr_accessor :menu_list' do
    @root_view_controller.respond_to?(:menu_list).should == true
    @root_view_controller.respond_to?(:menu_list=).should == true
  end

  it 'should have a constant CELL_IDENTIFIER with a value of \'root_tvc_cell\'' do
    RcRootViewController::CELL_IDENTIFIER.should == 'root_tvc_cell'
  end

  it 'should have a title of \'UIKit Views and Controls\'' do
    @root_view_controller.title.should == 'UIKit Views and Controls'
  end


  it 'should have a menu list array of 12 entries' do
    @root_view_controller.menu_list.size.should == 12
  end


  it 'should instantiate all the UI controls and views demo classes as either a UITableViewController or UIViewController instance.' do
    is_it_ui_view_or_ui_table = lambda {|obj| (obj == UITableViewController || obj == UIViewController) }
    NSLog = ''
    @root_view_controller.menu_list.each do |item|
      # NSLog "\nTitle: #{item[:title]}"
      the_instantiated_controller = item[:view_controller]
      is_it_ui_view_or_ui_table.call(the_instantiated_controller.superclass).should  == true
    end
  end

  it 'should be the tableView\'s delegate and datasource' do
    @root_view_controller.tableView.delegate.should == @root_view_controller
    @root_view_controller.tableView.dataSource.should == @root_view_controller
  end

end