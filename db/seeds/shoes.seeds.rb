after :brands do
  puts "==== Create Areas ===="
  Shoe.destroy_all
  ActiveRecord::Base.connection.execute(
    "ALTER SEQUENCE shoes_id_seq RESTART WITH 1"
  )

  new_balance             = Brand.find_by_title('New Balance')
  nike                    = Brand.find_by_title('Nike')
  adidas                  = Brand.find_by_title('Adidas')
  puma                    = Brand.find_by_title('Puma')
  fila                    = Brand.find_by_title('Fila')
  asics                   = Brand.find_by_title('ASICS')

  new_balance_path = "#{Rails.root}/app/assets/images/shoes/mx608v4.jpg"
  nike_flyknit_path = "#{Rails.root}/app/assets/images/shoes/nike_flyknit.jpg"
  nike_flex_path = "#{Rails.root}/app/assets/images/shoes/nike_flex.jpg"
  adidas_elite_path = "#{Rails.root}/app/assets/images/shoes/adidas_stan.jpg"
  nike_fit_path = "#{Rails.root}/app/assets/images/shoes/nike_synthetic.jpg"
  puma_tazon_path = "#{Rails.root}/app/assets/images/shoes/puma_tazon6.jpg"
  nike_print_path = "#{Rails.root}/app/assets/images/shoes/nike_print_women.jpg"
  puma_ignite_path = "#{Rails.root}/app/assets/images/shoes/puma_ignite.jpg"
  fila_shake_path = "#{Rails.root}/app/assets/images/shoes/fila_shake.jpg"
  asics_classic_path = "#{Rails.root}/app/assets/images/shoes/asiscs_woment.jpg"

  Shoe.create([
    {
      name: 'New Balance Men\'s MX608V4 Training Shoe', shoe_code: 'MX608V4', price: 74.99, image: File.open(new_balance_path), brand_id: new_balance
    },

    {
      name: 'Nike Free 4.0 Flyknit Sz 13 Mens Running Shoes ', shoe_code: 'MX608V4', price: 125.00, image: File.open(nike_flyknit_path), brand_id: nike
    },

    {
      name: 'Nike Flex 2015 Rn Sz 7 Mens Running Shoes', shoe_code: 'MX608V4', price: 74.99, image: File.open(nike_flex_path), brand_id: nike
    },

    {
      name: 'Adidas Performance Men\'s Galactic Elite M Running Shoe', shoe_code: 'MX608V4', price: 62.99, image: File.open(adidas_elite_path), brand_id: adidas
    },

    {
      name: 'Nike Free 5.0 Tr Fit 5 Synthetic Running Shoe', shoe_code: 'MX608V4', price: 103.99, image: File.open(nike_fit_path), brand_id: nike
    },

    {
      name: 'PUMA Men\'s Tazon 6 Cross-Training Shoe', shoe_code: 'MX608V4', price: 99.99, image: File.open(puma_tazon_path), brand_id: puma
    },

    {
      name: 'Nike Free 5.0 Tr Fit 5 Print Sz 12 Womens Cross Training Shoes', shoe_code: 'MX608V4', price: 74.99, image: File.open(nike_print_path), brand_id: nike
    }, 

    {
      name: 'PUMA Women\'s Ignite Mesh Running Shoe', shoe_code: 'MX608V4', price: 103.99, image: File.open(puma_ignite_path), brand_id: puma
    },

    {
      name: 'Adidas Youths Stan Smith Leather Trainers', shoe_code: 'MX608V4', price: 54.99, image: File.open(new_balance_path), brand_id: adidas
    }, 

    {
      name: 'Fila Men\'s Shake N Bake 3 Basketball Shoe', shoe_code: 'MX608V4', price: 73.99, image: File.open(fila_shake_path), brand_id: fila
    },

    {
      name: 'ASICS Women\'s Matchplay Classic Golf Shoe', shoe_code: 'MX608V4', price: 74.99, image: File.open(asics_classic_path), brand_id: asics
    }
  ])
  puts "==== End ===="
end