class AlertsSpecHelper

  def self.methods_that_responded(class_instance, methods)
    responding_methods = ' '
    methods.each do  |method|
      if class_instance.respond_to? method
        responding_methods = responding_methods + method + ' '
      end
    end
    responding_methods
  end

end