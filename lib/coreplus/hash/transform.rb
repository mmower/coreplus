class Hash
  assert_methods_not_defined( :transform )
  
  def transform( &block )
    transformed_hash = {}
    each do |original_key,original_value|
      new_key,new_value = block.call( original_key, original_value )
      transformed_hash[new_key] = new_value
    end
    transformed_hash
  end
end