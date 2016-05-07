after :brands do
  puts "==== Create Areas ===="
  Shoe.destroy_all
  ActiveRecord::Base.connection.execute(
    "ALTER SEQUENCE shoes_id_seq RESTART WITH 1"
  )

  file_

  Shoe.create([
    {
      name: 'New Balance Mens MX608V4 Training Shoe', shoe_code: 'MX608V4', price: 74.99
    }
  ])
  puts "==== End ===="
end