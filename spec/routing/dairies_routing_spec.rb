require 'rails_helper'

RSpec.describe DairiesController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(get: '/dairies').to route_to('dairies#index')
    end

    it 'routes to #new' do
      expect(get: '/dairies/new').to route_to('dairies#new')
    end

    it 'routes to #show' do
      expect(get: '/dairies/1').to route_to('dairies#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/dairies/1/edit').to route_to('dairies#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/dairies').to route_to('dairies#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/dairies/1').to route_to('dairies#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/dairies/1').to route_to('dairies#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/dairies/1').to route_to('dairies#destroy', id: '1')
    end

  end
end
