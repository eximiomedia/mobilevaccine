package com.eximiomedia

class Vaksinasi {
    
    Patient patient
    Vaksintype vaksintype
    Integer sequence
    Date vaksindate
    
    static hasMany = [reminders:Reminder]

    static constraints = {
        patient blank:false
        vaksintype blank:false
        sequence blank:false
        vaksindate blank:false
        reminders nullable:true,blank:true
    }
}
