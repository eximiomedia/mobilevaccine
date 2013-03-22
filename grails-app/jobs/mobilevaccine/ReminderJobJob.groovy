package mobilevaccine



class ReminderJobJob {
    def reminderService
    
    static triggers = {
      cron name: 'cronTrigger', cronExpression: "0 0 2 ? * MON-SUN"
    }

    def execute() {
        reminderService.sendReminderEmail()
        log.info("Task reminders sent on ${new Date()}")
    }
}
