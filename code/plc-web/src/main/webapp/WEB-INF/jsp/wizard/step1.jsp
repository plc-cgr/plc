<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<div id="orientation_form">
    <h3><fmt:message key="step1.header" /></h3>
    <p>
        <span class="label"><fmt:message key="step1.first" /></span> <fmt:message key="step1.first.text" />
    </p>
    <p>
        <span class="label"><fmt:message key="step1.second" /></span> <fmt:message key="step1.second.text" />
    </p>
    <p>
        <span class="label"><fmt:message key="step1.third" /></span> <fmt:message key="step1.third.text" />
    </p>
    <s:form namespace="/www/wizard" action="step2" method="post">
        <fieldset>
            <input type="submit" class="btn primary" value="<fmt:message key="step1.submit" />">
        </fieldset>
    </s:form>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        markProgress('#welcomeStep');
    });
</script>