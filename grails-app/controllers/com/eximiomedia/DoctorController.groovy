package com.eximiomedia

import java.text.SimpleDateFormat

class DoctorController {

    def createprofile() {
        def patientInstance = new Patient()
        patientInstance.properties = params
        return [patientInstance: patientInstance]
    }
    
    def saveprofile() {
        def patientInstance = new Patient(fullname:params.fullname,sex:params.sex,dob:new SimpleDateFormat("yyyy-MM-dd").parse(params.dob),email:params.email)
        def vaksintype = Vaksintype.get(Long.parseLong(params.vaksintype))
        def ranges = []
        if (patientInstance.save(flush: true)) {
            def vaksinasi = new Vaksinasi(patient:patientInstance,vaksintype:vaksintype,sequence:1,vaksindate:new SimpleDateFormat("yyyy-MM-dd").parse(params.vaksindate)).save(failOnError:true)
            def remdate 
            ranges = vaksintype.vaksinrange.split("-")
            ranges.each { r ->
                Integer k = Integer.parseInt(r.toString())
                if(k!=0) {
                    use(groovy.time.TimeCategory) {
                        remdate = vaksinasi.vaksindate+k.month
                    }
                    new Reminder(vaksinasi:vaksinasi,reminderdate:remdate).save(failOnError:true)
                }
            }
            flash.message = patientInstance.fullname+" Created"
            redirect(uri:'/')
        }
        else {
            render(view: "createprofile", model: [patientInstance: patientInstance])
        }
    }
}
