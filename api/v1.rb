module Grappe
  class V1 < Grape::API
    format :json
    version 'v1'

    get :hallo do
      { hallo: 'grape' }
    end
  end
end
