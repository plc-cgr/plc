<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<div id="requests_form">
    <s:form cssClass="form-stacked" namespace="/www/wizard" action="step4" method="post">
        <fieldset>
            <div class="clearfix">
                <label id="conditions"><fmt:message key="step3.termsOfUse.pre" />
                <a title="<fmt:message key="clickForMoreInfo" />" data-toggle="modal" data-target="#terms-of-use-modal" 
                	data-backdrop="true" data-keyboard="true"><fmt:message key="step3.termsOfUse" /></a><fmt:message key="step3.termsOfUse.post" />
                </label>
            </div>
            <div class="clearfix">
                <div class="input">
                    <ul>
                        <li>
                        	<fmt:message key="step3.reidentify.pre" /> 
                        	<a title="<fmt:message key="clickForMoreInfo" />" data-toggle="modal" 
                        	data-target="#re-identification-modal" data-backdrop="true" data-keyboard="true">
                            <fmt:message key="step3.reidentify" /></a><fmt:message key="step3.reidentify.post" />
                        </li>
                        <li>
							<fmt:message key="step3.dontharm.pre" />
                        	<a title="<fmt:message key="clickForMoreInfo" />" data-toggle="modal" 
                        	data-target="#harm-prevention-modal" data-backdrop="true" data-keyboard="true">
                            <fmt:message key="step3.dontharm" /></a><fmt:message key="step3.dontharm.post" />
                        </li>
                        <li>
                        	<fmt:message key="step3.share.pre" /> 
                        	<a title="<fmt:message key="clickForMoreInfo" />" data-toggle="modal"  
                        	data-target="#sharing-research-modal" data-backdrop="true" data-keyboard="true">
                        	<fmt:message key="step3.share" /></a><fmt:message key="step3.share.post" />
                        </li>
                    </ul>
                    <p><fmt:message key="step3.limits" /></p>
                </div>
                <div class="actions">
                    <input type="submit" class="btn primary" value="<fmt:message key="step3.submit" />">
                </div>
            </div>

        </fieldset>
    </s:form>

    <div id="your-requests-modal" class="modal hide fade">
        <div class="modal-header">
            <a href="#" class="close" data-dismiss="modal">×</a>
            <h3><fmt:message key="step3.yourRequests" /></h3>
        </div>
        <div class="modal-body">
            <p><fmt:message key="step3.yourRequests.text" /></p>
        </div>
        <div class="modal-footer"></div>
    </div>

    <div id="re-identification-modal" class="modal hide fade">
        <div class="modal-header">
            <a href="#" class="close" data-dismiss="modal">×</a>
            <h3><fmt:message key="step3.reidentification" /></h3>
        </div>
        <div class="modal-body">
            <p><fmt:message key="step3.reidentification.text" /></p>
        </div>
        <div class="modal-footer"></div>
    </div>

    <div id="harm-prevention-modal" class="modal hide fade">
        <div class="modal-header">
            <a href="#" class="close" data-dismiss="modal">×</a>
            <h3><fmt:message key="step3.harmPrevention" /></h3>
        </div>
        <div class="modal-body">
            <p><fmt:message key="step3.harmPrevention.text" /></p>
        </div>
        <div class="modal-footer"></div>
    </div>

    <div id="sharing-research-modal" class="modal hide fade">
        <div class="modal-header">
            <a href="#" class="close" data-dismiss="modal">×</a>
            <h3><fmt:message key="step3.sharing" /></h3>
        </div>
        <div class="modal-body">
            <p><fmt:message key="step3.sharing.text" /></p>
        </div>
        <div class="modal-footer"></div>
    </div>

    <div id="terms-of-use-modal" class="modal hide fade">
        <div class="modal-header">
            <a href="#" class="close" data-dismiss="modal">×</a>
            <h3><fmt:message key="step3.termsOfUse" /></h3>
        </div>
        <div class="modal-body">
            <p><fmt:message key="step3.termsOfUse.text" /></p>
        </div>
        <div class="modal-footer"></div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        markProgress('#termsOfUseStep');
    });
</script>