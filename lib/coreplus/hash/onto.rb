class Hash
  assert_methods_not_defined( :onto, :onto! )
  
  def onto( &block )
    self.dup.onto!( &block )
  end
  
  def onto!( &block )
    self.each do |key,value|
      self[ key ] = yield( key, value )
    end
  end
end
