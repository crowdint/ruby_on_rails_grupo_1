Curso::Application.routes.draw do
  match '/posts' => 'posts#index'
  match '/publicaciones' => 'posts#index'
end
