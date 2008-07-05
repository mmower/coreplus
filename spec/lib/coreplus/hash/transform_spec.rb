require File.join( File.dirname( __FILE__ ), '..', '..', '..', 'spec_helper' )

require 'coreplus/hash/transform'

describe Hash do
  
  describe "transform" do
    it "should transform one hash into another" do
      { :a => 1, :b => 2, :c => 3 }.transform { |key,value| [value,key] }.should == { 1 => :a, 2 => :b, 3 => :c }
    end
  end
  
end