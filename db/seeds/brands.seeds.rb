puts "==== Create Brands ===="
Brand.destroy_all
ActiveRecord::Base.connection.execute(
  "ALTER SEQUENCE brands_id_seq RESTART WITH 1"
)

Brand.create(title: 'New Balance')
Brand.create(title: 'Nike')
Brand.create(title: 'Adidas')
Brand.create(title: 'Puma')
Brand.create(title: 'Fila')
Brand.create(title: 'ASICS')
puts "==== End ===="