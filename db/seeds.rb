def create_categories
  Category.create(category_name: "Autos")
  Category.create(category_name: "Services")
  Category.create(category_name: "Forums")
end

create_categories
