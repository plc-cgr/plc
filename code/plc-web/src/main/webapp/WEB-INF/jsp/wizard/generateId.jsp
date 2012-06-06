<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<div id="register_form">
    <h3><fmt:message key="generateId" /></h3>
    <p><fmt:message key="generateId.dataCollect" /></p>
    <s:form cssClass="form-stacked" id="registerForm" name="register" namespace="/www/wizard" action="generateId" method="post">
        <fieldset>
            <div class="clearfix">
                <label for="firstName"><fmt:message key="patientDemographics.firstName" /></label>
                <div class="input">
                    <s:textfield cssClass="xlarge required" id="firstName" name="patientDemographics.firstName" size="30" cssErrorClass="error-field" theme="simple"/>
                    <s:fielderror fieldName="patientDemographics.firstName" cssClass="error-message"/>
                </div>
            </div>
            <div class="clearfix">
                <label for="birthName"><fmt:message key="patientDemographics.birthName" /></label>
                <div class="input">
                    <s:textfield cssClass="xlarge required" id="birthName" name="patientDemographics.birthName" size="30" cssErrorClass="error-field"/>
                    <s:fielderror fieldName="patientDemographics.birthName" cssClass="error-message"/>
                </div>
            </div>
            <div class="clearfix">
                <label for="birthPlace"><fmt:message key="patientDemographics.birthPlace" /></label>
                <div class="input">
                    <s:textfield cssClass="xlarge required" id="birthPlace" name="patientDemographics.birthPlace" size="30" cssErrorClass="error-field"/>
                    <s:fielderror fieldName="patientDemographics.birthPlace" cssClass="error-message"/>
                </div>
            </div>
            <div class="clearfix">
                <label for="birthCountry"><fmt:message key="patientDemographics.birthCountry" /></label>
                <div class="input">
                    <s:select id="birthCountry" cssClass="xlarge required" name="patientDemographics.birthCountry"
                        list="%{@com.fiveamsolutions.plc.data.enums.Country@values()}" listValue="code"
                        headerKey="" headerValue="%{getText('select.emptyOption')}"        
                        cssErrorClass="error-field"/>
                    <s:fielderror fieldName="patientDemographics.birthCountry" cssClass="error-message"/>
                </div>
            </div>
            <div class="clearfix">
                <label for="dob"><fmt:message key="patientDemographics.birthDate" /></label>
                <div class="input">
                    <s:textfield cssClass="xlarge required date" id="dob" name="patientDemographics.birthDate" size="30" cssErrorClass="error-field"/>
                    <s:fielderror fieldName="patientDemographics.birthDate" cssClass="error-message"/>
                </div>
            </div>
            <div class="actions">
                <input type="submit" class="btn primary" value="<fmt:message key="menu.generateId" />" />
            </div>
        </fieldset>
    </s:form>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        $('#dob').datepicker($.datepicker.regional['<s:property value="%{locale}"/>']);
        $('#dob').datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '-100:+0'
        });
        markProgress('#generateIdStep');
    });
</script>