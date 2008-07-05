class Hash
  assert_methods_not_defined( :| )
  
  def |( other )
    self.merge( other )
  end
  
end