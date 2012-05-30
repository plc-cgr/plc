<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<div id="understand_form">
    <div class="alert-message warning"><fmt:message key="step6.dontKnowEnough" /></div>
    <ul>
        <li><a href="http://sagebase.org/" target="_blank"><fmt:message key="step6.backToSage" /></a>.</li>
        <li><a href="http://www.pgpstudy.org/" target="_blank"><fmt:message key="step6.backToPublicGenetics" /></a>.</li>
        <li><a href="http://trentcenter.duke.edu/research/bioethics" target="_blank"><fmt:message key="step6.backToBioethics" /></a>.</li>
    </ul>
    <s:form cssClass="form-stacked" name="understand" namespace="/www/wizard" action="step7" method="post">
        <fieldset>
            <div class="actions">
                <input type="submit" class="btn primary" value="<fmt:message key="step6.submit" />">
            </div>
        </fieldset>
    </s:form>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        markProgress('#checkpointStep');
    });
</script>