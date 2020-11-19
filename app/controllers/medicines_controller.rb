class MedicinesController < ApplicationController
    def index
        @medicine = Medicine.all
    end

    def show
        @medicine = Medicine.find_by!(id: params[:id])
    end

    def create
        @medicine = Medicine.create(name: params[:medicineName],type: params[:medicineType])
    end

    def update 
        @medicine = Medicine.find_by!(id: params[:id])
        @medicine.update(name: params[:medicineName],type: params[:medicineType])
    end

    def destroy
        @medicine = Medicine.find_by!(id: params[:id])
        @medicine.destroy
    end
    
end
