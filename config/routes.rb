Rails.application.routes.draw do
  get    "articles",          to: "articles#index", as: :articles
  # Create
  get    "articles/new",      to: "articles#new",  as: :new_article
  post   "articles",          to: "articles#create"
  # Read one - The `show` route needs to be *after* `new` route.
  get    "articles/:id",      to: "articles#show", as: :article
  # # # Update
  # get    "articles/:id/edit", to: "articles#edit", as: :edit_article
  # patch  "articles/:id",      to: "articles#update"
  # # Delete
  # delete "articles/:id",      to: "articles#destroy"
end
