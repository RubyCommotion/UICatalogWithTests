describe "\nThe RcAlertsViewController Object " do
  tests RcAlertsViewController

  before do
    rotate_device to: :portrait, button: :bottom
  end

  after do
  end

    context 'RcAlertsViewController is a UITableViewController listing rows of UIActionSheet and UIAlertView objects that.' do
      it ' should set its view title to \'Alerts\'' do
        controller.title.should == 'Alerts'
      end

      it 'should have two constants ALERT_CELL_ID and SOURCE_CELL_ID' do
        RcAlertsViewController::ALERT_CELL_ID.should.not.be == nil
        RcAlertsViewController::SOURCE_CELL_ID.should.not == nil
      end

      it 'should have a @data_source_array consisting of 7 rows' do
        controller.instance_variable_get('@data_source_array').count.should == 7
      end

      it 'should have a table that is displaying one or more visible cells.' do
        controller.tableView.visibleCells.should.not.be.empty
      end


      it "should respond to three UIActionSheet methods 'dialog_simple_action', 'dialog_ok_cancel_action' 'dialog_other_action'
        \n and four UIAlertView methods 'alert_simple_action', 'alert_ok_cancel_action' 'alert_other_action','alert_secure_text_action' " do

        methods = %w(dialog_simple_action dialog_ok_cancel_action dialog_other_action
                     alert_simple_action alert_ok_cancel_action alert_other_action alert_secure_text_action)

        AlertsSpecHelper.methods_that_responded(controller, methods).should ==
        ' dialog_simple_action dialog_ok_cancel_action dialog_other_action alert_simple_action alert_ok_cancel_action alert_other_action alert_secure_text_action '
      end

    end

    context "the RcAlertsViewController's has seven methods.\n" do

      it 'should respond to \'def dialog_simple_action\' and return an UIActionSheet object with defined states for title, delegate,
          destructiveButtonTitle, and otherButtonTitles'   do
        controller.dialog_simple_action_obj.title.should == 'UIActionSheet Alert With OK Button'
        controller.dialog_simple_action_obj.delegate.should == controller
        controller.dialog_simple_action_obj.cancelButtonIndex.should == -1 # not set
        controller.dialog_simple_action_obj.destructiveButtonIndex.should == 0
        controller.dialog_simple_action_obj.buttonTitleAtIndex(0).should == 'OK' # destructiveButtonIndex
        controller.dialog_simple_action_obj.firstOtherButtonIndex.should == -1 # not set
      end

      it 'should respond to \'def dialog_ok_cancel_action\' and return a UIActionSheet object with defined states for title, delegate,
          cancelButtonTitle, destructiveButtonTitle, and otherButtonTitles'   do
        controller.dialog_ok_cancel_action_obj.title.should == 'UIActionSheet Alert With Cancel and OK'
        controller.dialog_ok_cancel_action_obj.delegate.should == controller
        controller.dialog_ok_cancel_action_obj.cancelButtonIndex.should == 1
        controller.dialog_ok_cancel_action_obj.destructiveButtonIndex.should == 0
        controller.dialog_ok_cancel_action_obj.buttonTitleAtIndex(0).should == 'OK'
        controller.dialog_ok_cancel_action_obj.firstOtherButtonIndex.should == -1 # not set
      end


      it 'should respond to \'def dialog_other_action\' and return a UIActionSheet object with defined states for title, delegate,
          cancelButtonTitle, destructiveButton, otherButton indices and otherButtonTitles'  do
        controller.dialog_other_action_obj.title.should == 'UIActionSheet Custom Alert'
        controller.dialog_other_action_obj.delegate.should == controller
        controller.dialog_other_action_obj.cancelButtonIndex.should == -1
        controller.dialog_other_action_obj.destructiveButtonIndex.should == 1
        controller.dialog_other_action_obj.firstOtherButtonIndex.should == 0
        controller.dialog_other_action_obj.buttonTitleAtIndex(0).should == 'Button1'
        controller.dialog_other_action_obj.buttonTitleAtIndex(1).should == 'Button2'
      end
    end

end


