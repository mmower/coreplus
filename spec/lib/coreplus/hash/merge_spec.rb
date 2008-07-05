require File.join( File.dirname( __FILE__ ), '..', '..', '..', 'spec_helper' )

require 'coreplus/hash/merge'

describe Hash do
  
  describe "merge" do
    it "should return merged of hashes" do
      ( { :a => 1, :b => "two" } | { :c => :three } ).should == { :a => 1, :b => "two" }.merge( :c => :three )
    end
  end
  
end