require File.join( File.dirname( __FILE__ ), '..', '..', '..', 'spec_helper' )

require 'coreplus/object/if_nil'

describe Object do
  
  describe "if_nil" do
    it "should yield if expression is nil" do
      
      val = false
      
      nil.if_nil do |expr|
        expr.should be_nil
        val = true
      end
      
      val.should == true
    end
    
    it "should not yield if expression is not nil" do
      val = true
      
      true.if_nil do |expr|
        val = false
      end
      
      val.should == true
    end
    
  end
  
  describe "if_not_nil" do
    it "should yield if expression is not nil" do
      val = false
      
      true.if_not_nil do |expr|
        expr.should == true
        val = true
      end
      
      val.should == true
    end
    
    it "should not yield if expression is nil" do
      val = true
      
      nil.if_not_nil do |expr|
        val = false
      end
      
      val.should == true
    end
  end
  
end