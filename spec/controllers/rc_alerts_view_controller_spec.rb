describe "\nTests RcAlertsViewController attr_accessor,constants and view title. " do
  tests RcAlertsViewController

  before do
    rotate_device to: :portrait, button: :bottom
  end

  after do
  end


  it 'should respond to attr_accessor \'dialog_simple_action_obj\'' do
    controller.respond_to?(:dialog_simple_action_obj).should == true
  end

  it 'should set the view\'s title' do
    controller.title.should == 'Alerts'
  end

  it 'should have a constant ALERT_CELL_ID and SOURCE_CELL_ID with values of \'AlertCellID\' and \'SourceCellID\'' do
    RcAlertsViewController::ALERT_CELL_ID.should == 'AlertCellID'
    RcAlertsViewController::SOURCE_CELL_ID.should == 'SourceCellID'
  end

  it 'should have 7 @data_source_array rows' do
    controller.instance_variable_get('@data_source_array').count.should == 7
  end


    describe "Tests UIActionSheet\'s three alert dialogs\n" do

      it 'should respond to ActionSheet methods \'dialog_simple_action\', \'dialog_ok_cancel_action\' \'dialog_other_action\' ' do
        controller.respond_to?(:dialog_simple_action).should == true
        controller.respond_to?(:dialog_ok_cancel_action).should == true
        controller.respond_to?(:dialog_other_action).should == true
      end

      it 'should have a dialog simple action with title of UIActionSheet Alert With OK Button' do
        controller.dialog_simple_action_obj.title.should == 'UIActionSheet Alert With OK Button'
      end

      it 'should have a dialog action with title of UIActionSheet Alert With Cancel and OK' do
        controller.dialog_ok_cancel_action_obj.title.should == 'UIActionSheet Alert With Cancel and OK'
      end

    end
end


