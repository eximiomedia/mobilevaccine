<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="mobile"/>
    <title>Welcome to Grails</title>		
  </head>
  <body>      
    <div data-role="header" data-position="fixed" data-theme="b">
      <h3>VACCINE REMINDER</h3>
    </div>
    <img src="images/background.png" style="min-width: 320px;" /><br>
    <div data-role="content">
      <g:if test="${flash.message}">
        <div class="message" role="alert">${flash.message}</div>
      </g:if>
      <h3 align="center" style="margin: 0">VACCINE REMINDER</h3>
      <p align="center">Reminder for vaccines</p>
      <p><g:link controller="doctor" action="createprofile" data-role="button">CREATE PROFILE</g:link></p>
  </div>
</body>
</html>
