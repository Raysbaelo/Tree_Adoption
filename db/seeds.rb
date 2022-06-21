# TODO: implement your seeds
User.destroy_all
Tree.destroy_all

john = User.create!(
  first_name: 'John',
  last_name: 'Doe',
  password: 'secret',
  email: 'john@q.com'
)
rayane = User.create!(
  first_name: 'rayane',
  last_name: 'ziane',
  password: 'secret',
  email: 'rayane@z.com'
)

Tree.create!(
  name: 'John’s apple tree',
  address: '20 rue des Capucins 69001 Lyon',
  description: 'This apple tree produces both sweet and sour apples. They will be    perfect to cut a little hunger, or enjoy a juicy apple for the dessert.',
  price_per_year: 175,
  quantity_per_year: 5,
  fruit: 'apple',
  user: john
)


Tree.create!(
  name: 'Rayanes cherry tree',
  address: '21 rue des Capucins 69001 Lyon',
  description: 'This cherry tree produces both sweet and juicy cherries. They will be perfect to cut a little hunger, or enjoy a juicy cherry for the dessert or breakfast.',
  price_per_year: 200,
  quantity_per_year: 100,
  fruit: 'cherry',
  user: rayane
)
