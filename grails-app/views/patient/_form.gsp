<%@ page import="com.eximiomedia.Patient" %>



<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'fullname', 'error')} required">
  <label for="fullname">
    <g:message code="patient.fullname.label" default="Fullname" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField name="fullname" required="required" value="${patientInstance?.fullname}" />
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'sex', 'error')} required">
  <label for="sex">
    <g:message code="patient.sex.label" default="Sex" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField name="sex" required="required" value="${patientInstance?.sex}" />
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'dob', 'error')} required">
  <label for="dob">
    <g:message code="patient.dob.label" default="Dob" />
    <span class="required-indicator">*</span>
  </label>
  <g:datePicker name="dob" precision="day" value="${patientInstance?.dob}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'email', 'error')} ">
  <label for="email">
    <g:message code="patient.email.label" default="Email" />

  </label>
  <g:field type="email" name="email" value="${patientInstance?.email}" />
</div>

