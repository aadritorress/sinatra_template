require_relative './config/environment'
# require_relative 'app/controllers/doctor_controller'
# require_relative 'app/controllers/patient_controller'

use Rack::MethodOverride
use DoctorController
use PatientController
run ApplicationController
