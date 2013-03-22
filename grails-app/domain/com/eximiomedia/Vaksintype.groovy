package com.eximiomedia

class Vaksintype {

    String vaksinname
    String vaksinrange // Range between month
    boolean vaksinloops // loops or one time   

    static constraints = {
        vaksinname blank:false,maxLength:255
        vaksinrange blank:false,maxLength:255
        vaksinloops blank:false
    }
    
    String toString() {
        vaksinname
    }
}
