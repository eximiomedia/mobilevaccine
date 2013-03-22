
<%@ page import="com.eximiomedia.Patient" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="mobile">
  <g:set var="entityName" value="${message(code: 'patient.label', default: 'Patient')}" />
  <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
  <div data-role="header" data-position="fixed">
    <h1><g:message code="default.show.label" args="[entityName]" /></h1>
    <div data-role="navbar">
      <ul>
        <li><a data-icon="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link data-icon="grid" data-ajax="false" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
      </ul>
    </div>
  </div>
  <div data-role="content">
    <g:if test="${flash.message}">
      <div class="message">${flash.message}</div>
    </g:if>
    <dl>

      <dt><g:message code="patient.id.label" default="Id" /></dt>

      <dd><g:fieldValue bean="${patientInstance}" field="id"/></dd>


      <dt><g:message code="patient.fullname.label" default="Fullname" /></dt>

      <dd><g:fieldValue bean="${patientInstance}" field="fullname"/></dd>


      <dt><g:message code="patient.sex.label" default="Sex" /></dt>

      <dd><g:fieldValue bean="${patientInstance}" field="sex"/></dd>


      <dt><g:message code="patient.dob.label" default="Dob" /></dt>

      <dd><g:formatDate date="${patientInstance?.dob}" /></dd>


      <dt><g:message code="patient.email.label" default="Email" /></dt>

      <dd><g:fieldValue bean="${patientInstance}" field="email"/></dd>


    </dl>
    <g:form>
      <g:hiddenField name="id" value="${patientInstance?.id}" />
      <g:actionSubmit data-icon="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" />
    </g:form>
  </div>
  <div data-role="footer">
  </div>
</body>
</html>
