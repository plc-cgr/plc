<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<div id="video_form">
    <div class="well">
        <iframe id="ctrvideo"
            src="<fmt:message key="step5.video.url" />" width="500" height="375" frameborder="0"></iframe>
    </div>

    <div class="alert-message error" id="ff_disabled"><fmt:message key="step5.mustWatchVideoCompletely" /></div>
    <div class="alert-message" id="video_instructions"><fmt:message key="step5.mustWatchVideo" /></div>
    <s:form cssClass="form-stacked" namespace="/www/wizard" action="step6" method="post">
        <fieldset>
            <div class="actions">
                <input type="submit" class="btn primary disabled" disabled="disabled" value="<fmt:message key="step5.submit" />" />
            </div>
        </fieldset>
    </s:form>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#ff_disabled').hide();
            disableNavigationUntilVideoFinishes();
            markProgress('#watchVideoStep');
        });
    </script>
</div>