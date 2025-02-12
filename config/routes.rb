Rails.application.routes.draw do
  root "dice#index"  # Root route to index

  get "/dice/:number_of_dice/:sides", to: "dice#roll", as: "roll_dice"
end
