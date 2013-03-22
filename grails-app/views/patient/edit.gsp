

<%@ page import="com.eximiomedia.Patient" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="mobile">
  <g:set var="entityName" value="${message(code: 'patient.label', default: 'Patient')}" />
  <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>
  <div data-role="header" data-position="fixed">
    <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
    <div data-role="navbar">
      <ul>
        <li><a data-icon="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link data-icon="grid" data-ajax="false" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
      </ul>
    </div>
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
    <g:form method="post" >
      <g:hiddenField name="id" value="${patientInstance?.id}" />
      <g:hiddenField name="version" value="${patientInstance?.version}" />

      <div data-role="fieldcontain">
        <label for="fullname"><g:message code="patient.fullname.label" default="Fullname" /></label>
        <g:textField name="fullname" required="required" value="${patientInstance?.fullname}" />
      </div>

      <div data-role="fieldcontain">
        <label for="sex"><g:message code="patient.sex.label" default="Sex" /></label>
        <g:textField name="sex" required="required" value="${patientInstance?.sex}" />
      </div>

      <div data-role="fieldcontain">
        <label for="dob"><g:message code="patient.dob.label" default="Dob" /></label>
        <g:datePicker name="dob" precision="day" value="${patientInstance?.dob}"  />
      </div>

      <div data-role="fieldcontain">
        <label for="email"><g:message code="patient.email.label" default="Email" /></label>
        <g:field type="email" name="email" value="${patientInstance?.email}" />
      </div>

      <g:actionSubmit data-icon="check" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
    </g:form>
  </div>
  <div data-role="footer">
  </div>
</body>
</html>
