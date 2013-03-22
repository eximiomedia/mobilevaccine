package com.eximiomedia

class Patient {
    
    String fullname
    String sex
    Date dob
    String email

    static constraints = {
        fullname blank:false,maxLength:50
        sex blank:false,maxLength:20
        dob blank:false
        email email:true
    }
    
    String toString() {
        fullname
    }
}
