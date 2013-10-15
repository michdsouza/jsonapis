travel_category = Category.create(name: "Travel", description: "Around the world forever")
food_category = Category.create(name: "Food", description: "Nom nom nom nom")
work_category = Category.create(name: "Work", description: "Now for something completely serious")

author = User.create(first_name: "Michelle", last_name: "D'Souza")
user1 = User.create(first_name: "Eric", last_name: "Chernuka")
user2 = User.create(first_name: "John", last_name: "Doe")

post1 = Post.create(title: "Australia", body: "Kangaroos, Koalas, and Emus", tags: "australia, animals", user_id: author.id, category_id: travel_category.id)
post2 = Post.create(title: "Italy", body: "Art, architecture, and sculptures", tags: "italy, art", user_id: author.id, category_id: travel_category.id)
post3 = Post.create(title: "Calgary eats", body: "So many good restaurants, so little time", tags: "calgary, food", user_id: author.id, category_id: food_category.id)
post4 = Post.create(title: "JSON APIs", body: "RABLing, Serializing and JBuilding better APIs", tags: "rabl, serializers, jbuilder", user_id: author.id, category_id: work_category.id)

Like.create(user_id: user1.id, post_id: post1.id)
Like.create(user_id: user1.id, post_id: post2.id)
Like.create(user_id: user2.id, post_id: post4.id)
