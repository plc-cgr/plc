<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<div id="affirm_form">
    <s:form class="form-stacked" id="consentForm" name="affirm" namespace="/www/wizard" action="step8" method="post">
        <fieldset>
            <div class="clearfix">
                <label id="affirmCheckboxes"><fmt:message key="step7.affirmCheckboxes" /></label>
                <div class="input">
                    <ul class="inputs-list">
                        <li><label> <s:checkbox cssClass="required" name="affirmUncertainty"/> 
                        	<span><fmt:message key="step7.affirmUncertainty.pre" /> 
                        		<a title="<fmt:message key="clickForMoreInfo" />" data-toggle="modal" data-target="#uncertainty-and-risk-modal"
                                	data-backdrop="true" data-keyboard="true">
                                	<fmt:message key="step7.affirmUncertainty" /></a><fmt:message key="step7.affirmUncertainty.post" />
                                	<s:fielderror fieldName="affirmUncertainty" cssClass="error-message"/>
                            </span>
                        </label></li>
                        <li><label> <s:checkbox cssClass="required" name="affirmConsent"/> 
                        	<span><fmt:message key="step7.affirmConsent.pre" />
                        		<a title="<fmt:message key="clickForMoreInfo" />" data-toggle="modal" data-target="#providing-consent-modal"
                                    data-backdrop="true" data-keyboard="true">
                                    <fmt:message key="step7.affirmConsent" /></a><fmt:message key="step7.affirmConsent.post" />
                            	<s:fielderror fieldName="affirmConsent" cssClass="error-message"/>
                            </span>
                        </label></li>
                        <li><label> <s:checkbox class="required" name="affirmWithdrawlPolicy"/> 
                        	<span><fmt:message key="step7.affirmWithdrawlPolicy.pre" /> 
                        		<a title="<fmt:message key="clickForMoreInfo" />" data-toggle="modal" data-target="#withdrawing-modal"
                                    data-backdrop="true" data-keyboard="true"><fmt:message key="step7.affirmWithdrawlPolicy" /></a> 
                                    <fmt:message key="step7.affirmWithdrawlPolicy.inter" /> 
                                    <a title="<fmt:message key="clickForMoreInfo" />" data-toggle="modal"
                                    data-target="#withdrawing-data-modal" data-backdrop="true" data-keyboard="true">
                                    <fmt:message key="step7.affirmWithdrawlPolicy2" /></a><fmt:message key="step7.affirmWithdrawlPolicy.post" />
                            	<s:fielderror fieldName="affirmWithdrawlPolicy" cssClass="error-message"/>
                            </span>
                        </label></li>
                    </ul>
                    <span class="help-block"> <fmt:message key="step7.allBoxes" /> </span>
                </div>
                <div class="actions">
                    <input type="submit" class="btn primary" value="<fmt:message key="step7.submit" />">
                </div>
            </div>
        </fieldset>
    </s:form>
    <div id="uncertainty-and-risk-modal" class="modal hide fade">
        <div class="modal-header">
            <a href="#" class="close" data-dismiss="modal">×</a>
            <h3><fmt:message key="step7.uncertaintyAndRisk" /></h3>
        </div>
        <div class="modal-body">
            <p><fmt:message key="step7.uncertaintyAndRisk.text" /></p>
        </div>
        <div class="modal-footer"></div>
    </div>

    <div id="providing-consent-modal" class="modal hide fade">
        <div class="modal-header">
            <a href="#" class="close" data-dismiss="modal">×</a>
            <h3><fmt:message key="step7.providingConsent" /></h3>
        </div>
        <div class="modal-body">
            <p><fmt:message key="step7.providingConsent.text" /></p>
        </div>
        <div class="modal-footer"></div>
    </div>

    <div id="withdrawing-modal" class="modal hide fade">
        <div class="modal-header">
            <a href="#" class="close" data-dismiss="modal">×</a>
            <h3><fmt:message key="step7.withdrawing" /></h3>
        </div>
        <div class="modal-body">
            <p><fmt:message key="step7.withdrawing.text" /></p>
        </div>
        <div class="modal-footer"></div>
    </div>

    <div id="withdrawing-data-modal" class="modal hide fade">
        <div class="modal-header">
            <a href="#" class="close" data-dismiss="modal">×</a>
            <h3><fmt:message key="step7.withdrawingData" /></h3>
        </div>
        <div class="modal-body">
            <p><fmt:message key="step7.withdrawingData.text" /></p>
        </div>
        <div class="modal-footer"></div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        markProgress('#acknowledgeUnderstandingStep');
    });
</script>