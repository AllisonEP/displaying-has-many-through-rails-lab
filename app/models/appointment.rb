class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def doctor_name=(name)
        self.doctor = Doctor.find_or_create_by(name: name)
      end
   #so this is like making doctor_name a thing and calling doctor method on the appointment class and assigning doctor to whatever comes up when calling find on the Doctor class 
      def doctor_name
         self.doctor ? self.doctor.name : nil
      end
   
     def patient_name=(name)
       self.patient = Patient.find_or_create_by(name: name)
     end
   
     def patient_name
       self.patient ? self.patient.name : nil
     end
end
