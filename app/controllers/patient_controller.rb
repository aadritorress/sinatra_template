class PatientController < ApplicationController 

    set :views, "app/views/patients" #set base point for views

    #index action
    get '/patients' do         
        @patients = Patient.all 
        erb :index
    end

    #new action
    get '/patients/new' do 
        @doctors = Doctor.all
        erb :new
    end 

    post '/patients' do
        @patient = Patient.create(name: params['name'], doctor_id: params['doctor_id'])
     
        redirect "/patients/#{@patient.id}"
    end 


    #show action
    get '/patients/:id' do 
        @patient = Patient.find(params[:id])
      
        erb :show
    end 

    #edit action
    get '/patients/:id/edit' do 
        @patient = Patient.find(params[:id])
        @doctors = Doctor.all 
        erb :edit 
    end 

    patch '/patients/:id' do 
        @patient = Patient.find(params[:id])
        # @patient.update(name: params[:name])
        @patient.update(name: params['name'],doctor_id: params['doctor_id'])
        erb :show
        # redirect to '/patients/#{@patient.id}'
    end 

    
    #delete action
    delete '/patients/:id' do 
        @patient =Patient.find(params[:id])
        @patient.delete 

        redirect "/patients"
    end 

    
    end 