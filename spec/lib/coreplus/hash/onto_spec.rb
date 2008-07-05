require File.join( File.dirname( __FILE__ ), '..', '..', '..', 'spec_helper' )

require 'coreplus/hash/onto'

describe Hash do
  
  describe "onto" do
    it "should map a hash onto a duplicate" do
      u = { :a => 1, :b => 2 }
      u.freeze # Ensure 'u' is not modified
      u.onto { |key,value| "#{key}#{value}" }.should == { :a => "a1", :b => "b2" }
    end
  end
  
  describe "onto!" do
    it "should remap a hash onto itself" do
      u = { :a => 1, :b => 2 }
      u.onto! { |key,value| "#{key}#{value}" }
      u.should == { :a => "a1", :b => "b2" }
    end
  end
  
end