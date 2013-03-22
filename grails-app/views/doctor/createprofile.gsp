<%@ page import="com.eximiomedia.Vaksintype" %>

<!doctype html>
<html>
  <head>
    <meta name="layout" content="mobile">
    <title>Create Profile</title>
  </head>
  <body>
    <div data-role="header" data-position="fixed" data-theme="b">
      <h3>VACCINE REMINDER</h3>
    </div>
    <div data-role="content">
      <g:if test="${flash.message}">
        <div class="message" role="alert">${flash.message}</div>
      </g:if>
      <g:hasErrors bean="${patientInstance}">
        <div class="errors" role="alert">
          <g:renderErrors bean="${patientInstance}" as="list" />
        </div>
      </g:hasErrors>
      <g:form controller="doctor" action="saveprofile">
        <div data-role="fieldcontain">
          <label for="fullname"><g:message code="patient.fullname.label" default="Fullname" /></label>
          <g:textField name="fullname" required="required" />
        </div>
        <div data-role="fieldcontain">
          <label for="sex"><g:message code="patient.sex.label" default="Sex" /></label>
          <g:select name="sex" required="required" from="${['Male','Female']}" />
        </div>
        <div data-role="fieldcontain">
          <label for="dob"><g:message code="patient.dob.label" default="Birth" /></label>
          <input type="date" name="dob" />
        </div>
        <div data-role="fieldcontain">
          <label for="email"><g:message code="patient.email.label" default="Email" /></label>
          <g:field type="email" name="email" />
        </div>
        <div data-role="fieldcontain">
          <label for="vaksintype"><g:message code="patient.email.label" default="Vaksin" /></label>
          <g:select name="vaksintype" required="required" from="${Vaksintype.list()}" optionKey="id" />
        </div>
        <div data-role="fieldcontain">
          <label for="vaksindate"><g:message code="patient.dob.label" default="Date" /></label>
          <input type="date" name="vaksindate" />
        </div>
        <p>
        <g:submitButton name="submit" value="CONFIRM" data-inline="true" data-theme="b" />
        <g:link action="cancelprofile" data-role="button" data-inline="true" data-theme="b">CANCEL</g:link>
        </p>
      </g:form>
    </div>
    <div data-role="footer">
    </div>
  </body>
</html>
