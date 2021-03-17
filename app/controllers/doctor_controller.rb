class DoctorController < ApplicationController 

set :views, "app/views/doctors" #set base point for views

    #index action
    get '/doctors' do         
        @doctors = Doctor.all 
        erb :index
    end

    #new action
    get '/doctors/new' do 

        erb :new
    end 

    post '/doctors' do
        @doctor = Doctor.create(name: params['name'])

        redirect "/doctors/#{@doctor.id}"
    end 


    #show action
    get '/doctors/:id' do 
        @doctor = Doctor.find(params[:id])
        @patients = Patient.all
        erb :show
    end 

    #edit action
    get '/doctors/:id/edit' do 
        @doctor = Doctor.find(params[:id])

        erb :edit 
    end 

    patch '/doctors/:id' do 
        @doctor = Doctor.find(params[:id])
        # @doctor.update(name: params[:name])
        @doctor.update(name: params['name'])
        erb :show
        # redirect to '/doctors/#{@doctor.id}'
    end 

    
    #delete action
    delete '/doctors/:id' do 
        @doctor = Doctor.find(params[:id])
        @doctor.delete 

        redirect "/doctors"
    end 



end 