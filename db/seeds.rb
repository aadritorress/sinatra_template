Patient.destroy_all
Doctor.destroy_all

calla = Doctor.create(name: "Calla") 
kiara = Doctor.create(name: "Kiara") 
mancha = Doctor.create(name: "Mancha") 

nestor = Patient.create(name: "Nestor", doctor_id: calla.id)