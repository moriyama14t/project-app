require 'rails_helper'
describe MedicinesController, type: :request do

    describe 'Index test' do
        it 'success' do
        get medicines_path
        expect(response).to have_http_status(:success)
        end
    end

    describe 'Get Show' do

    end

    describe 'Post Create' do

    end

    describe 'Put Update' do

    end

    describe 'Destroy' do

    end
end

#404が帰ってくるか
#APIエンドポイント　