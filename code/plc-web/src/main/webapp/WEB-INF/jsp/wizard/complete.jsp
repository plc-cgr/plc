<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<div id="register_form">
    <h3><fmt:message key="complete.profile" /></h3>
    <p><fmt:message key="complete.lastStep" /></p>
    <s:form namespace="/www/protected" action="uploadData/view">
        <div class="actions">
            <input type="submit" class="btn primary" value="<fmt:message key="complete.logIn" />">
        </div>
    </s:form>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        markProgress('#signInStep');
    });
</script>