ActsAsVotable::Vote.create!([
  {votable_type: "Image", votable_id: 6, voter_type: "User", voter_id: 2, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Image", votable_id: 9, voter_type: "User", voter_id: 2, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Image", votable_id: 1, voter_type: "User", voter_id: 3, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Image", votable_id: 5, voter_type: "User", voter_id: 2, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Image", votable_id: 2, voter_type: "User", voter_id: 2, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Image", votable_id: 3, voter_type: "User", voter_id: 3, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Image", votable_id: 4, voter_type: "User", voter_id: 3, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Image", votable_id: 7, voter_type: "User", voter_id: 3, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Image", votable_id: 10, voter_type: "User", voter_id: 3, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Image", votable_id: 8, voter_type: "User", voter_id: 3, vote_flag: true, vote_scope: nil, vote_weight: 1}
])
User.create!([
  {email: "bob@bob", encrypted_password: "$2a$11$EiDA8igIAbSRqbI1vIdv9OOJ49Qbo05blkAQYGRAaTCs4ArGp5iA.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2017-11-12 14:02:24", last_sign_in_at: "2017-11-07 14:12:26", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", last_name: "lennon", first_name: "bob"},
  {email: "maxime.bill@hotmail.fr", encrypted_password: "$2a$11$h5cL0sNFVmbnbJkt376c.elrHBoUK2O.2RPLADJ3qcvgZYIoM8fUu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 7, current_sign_in_at: "2017-11-12 14:02:33", last_sign_in_at: "2017-11-07 15:31:52", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", last_name: "billemaz", first_name: "maxime"}
])
Category.create!([
  {name: "People"},
  {name: "Travel"},
  {name: "Food"}
])
Image.create!([
  {picture: "winter-2896970_1280.jpg", user_id: 2, category_id: 2},
  {picture: "téléchargement.jpg", user_id: 2, category_id: 2},
  {picture: "leopard-2895448_1280.jpg", user_id: 2, category_id: 1},
  {picture: "pexels-photo-253758.jpeg", user_id: 3, category_id: 1},
  {picture: "pexels-photo-167964.jpeg", user_id: 3, category_id: 1},
  {picture: "salmon-dish-food-meal-46239.jpeg", user_id: 3, category_id: 3},
  {picture: "pexels-photo-428338.jpeg", user_id: 3, category_id: 1},
  {picture: "4c07056a46141187fbd94691e11cb115.jpeg", user_id: 2, category_id: 1},
  {picture: "9ab219405c88305c9328b7f6815d3a6d.jpeg", user_id: 3, category_id: 1},
  {picture: "2242c51e25d4f78b772f91e1de730657.jpeg", user_id: 3, category_id: 2}
])
Tag.create!([
  {name: "Happy"},
  {name: "Unhappy"},
  {name: "Men"},
  {name: "Women"},
  {name: "Childrens"},
  {name: "Spring"},
  {name: "Winter"},
  {name: "Summer"},
  {name: "Automn"}
])
TagImage.create!([
  {image_id: 8, tag_id: 1},
  {image_id: 8, tag_id: 4},
  {image_id: 9, tag_id: 4},
  {image_id: 10, tag_id: 1},
  {image_id: 10, tag_id: 8}
])
