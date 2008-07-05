require File.join( File.dirname( __FILE__ ), '..', '..', '..', 'spec_helper' )

describe Module do
  
  describe "assert_methods_not_defined" do
    it "should prevent method redefinition" do
      kls = Class.new do
        def a_method
        end
      end
      
      lambda {
        kls.class_eval do
          assert_methods_not_defined( :a_method )
        end
      }.should raise_error( MethodRedefinitionError )
    end
  end
  
end