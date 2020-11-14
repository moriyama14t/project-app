class MedicinesController < ApplicationController
    def index
        @medicine = Medicine.all
    end

    def show
        @medicine = Medicine.find_by!(id: params[:id])
    end

    def create
        #binding.pry
        @medicine = Medicine.create(Name: params[:medicineName],Type: params[:medicineType])
    end

    def update 
        @medicine = Medicine.find_by!(id: params[:id])
        @medicine.update(Name: params[:medicineName],Type: params[:medicineType])
    end

    def destroy
        @medicine = Medicine.find_by!(id: params[:id])
        @medicine.destroy
    end
    
end
