package com.eximiomedia

import org.springframework.transaction.annotation.Transactional

class ReminderService {
    
    def mailService

    def sendReminderEmail() {
        def datebefore
        use(groovy.time.TimeCategory) {
            datebefore = new Date() + 2.days
        }
        def twodaybefore = Reminder.findAllByReminderdate(datebefore)
        
        twodaybefore.each { r ->
            mailService.sendMail {
                to r.vaksinasi.patient.email
                subject "Reminder vaksin "+r.vaksinasi.vaksintype
                html "<p>Dear "+r.vaksinasi.patient.fullname+"<br><br>Dua hari lagi anda harus melakukan vaksinasi<br><br>Regards</p>"
            }
        }
        
        def today = Reminder.findAllByReminderdate(new Date())

        today.each { r ->
            mailService.sendMail {
                to r.vaksinasi.patient.email
                subject "Reminder vaksin "+r.vaksinasi.vaksintype
                html "<p>Dear "+r.vaksinasi.patient.fullname+"<br><br>Hari ini anda harus melakukan vaksinasi<br><br>Regards</p>"
            }
        }        
    }
}
