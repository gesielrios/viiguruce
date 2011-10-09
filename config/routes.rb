Viiguruce::Application.routes.draw do
  root :to => "certificates#index"
  post "certificates/create"
end
