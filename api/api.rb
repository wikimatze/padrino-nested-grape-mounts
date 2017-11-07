module Grappe
  class Api < Grape::API
    format :json

    mount Grappe::V1

    get :hello do
      { hello: 'grape' }
    end
  end
end
