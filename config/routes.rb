Rails.application.routes.draw do
  root to: 'application#index', via: :all
  match '*path' => 'application#index', via: :all
end
