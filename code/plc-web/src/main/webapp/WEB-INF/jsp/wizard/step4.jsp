<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<div id="rights_form">
    <s:form cssClass="form-stacked" id="consentForm" name="rights" namespace="/www/wizard" action="step5" method="post">
        <fieldset>
            <div class="clearfix">
                <label id="rightsCheckboxes"><fmt:message key="step4.rights.pre" /> 
                    <a title="Click for more info" data-toggle="modal" data-target="#qualified-researchers-modal" data-backdrop="true" data-keyboard="true">
                    	<fmt:message key="step4.rights.a" /></a><fmt:message key="step4.rights.post" />
                </label>
                <div class="input">
                    <ul class="inputs-list">
                        <li>
                            <label>
                                <s:checkbox cssClass="required" name="researchPermission"/>
                                <s:fielderror fieldName="researchPermission" cssClass="error-message"/>
                                <span>
                                    <fmt:message key="step4.rightToResearch.pre" /> <a title="<fmt:message key="clickForMoreInfo" />" 
                                    data-toggle="modal" data-target="#right-to-research-modal" data-backdrop="true" data-keyboard="true">
                                    <fmt:message key="step4.rightToResearch.a" /></a><fmt:message key="step4.rightToResearch.post" />
                                </span>
                            </label>
                        </li>
                        <li>
                            <label> 
                                <s:checkbox cssClass="required" name="redistributePermission"/>
                                <s:fielderror fieldName="redistributePermission" cssClass="error-message"/>
                                <span>
                                    <fmt:message key="step4.rightToRedistribute.pre" /> <a title="<fmt:message key="clickForMoreInfo" />" 
                                    data-toggle="modal" data-target="#right-to-redistribute-modal" data-backdrop="true" data-keyboard="true">
                                    <fmt:message key="step4.rightToRedistribute.a" /></a><fmt:message key="step4.rightToRedistribute.post" />
                                </span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <s:checkbox cssClass="required" name="publishPermission"/>
                                <s:fielderror fieldName="publishPermission" cssClass="error-message"/>
                                <span>
                                    <fmt:message key="step4.rightToPublish.pre" /> <a title="<fmt:message key="clickForMoreInfo" />" 
                                    data-toggle="modal" data-target="#right-to-publish-modal" data-backdrop="true" data-keyboard="true">
                                    <fmt:message key="step4.rightToPublish.a" /></a><fmt:message key="step4.rightToPublish.post" />
                                </span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <s:checkbox cssClass="required" name="commercializePermission"/>
                                <s:fielderror fieldName="commercializePermission" cssClass="error-message"/>
                                <span>
                                    <fmt:message key="step4.rightToCommercialize.pre" /> <a title="<fmt:message key="clickForMoreInfo" />" 
                                    data-toggle="modal" data-target="#right-to-commercialize-modal" data-backdrop="true" data-keyboard="true">
                                    <fmt:message key="step4.rightToCommercialize.a" /></a><fmt:message key="step4.rightToCommercialize.post" />
                                </span>
                            </label>
                        </li>
                    </ul>
                    <span class="help-block"> <fmt:message key="step4.allBoxes" /> </span>
                </div>
                <div class="actions">
                    <input type="submit" class="btn primary" value="Next">
                </div>
            </div>
        </fieldset>
    </s:form>

    <div id="qualified-researchers-modal" class="modal hide fade">
        <div class="modal-header">
            <a href="#" class="close" data-dismiss="modal">×</a>
            <h3><fmt:message key="step4.qualifiedResearchers" /></h3>
        </div>
        <div class="modal-body">
            <p><fmt:message key="step4.qualifiedResearchers.text" /></p>
        </div>
        <div class="modal-footer"></div>
    </div>

    <div id="right-to-research-modal" class="modal hide fade">
        <div class="modal-header">
            <a href="#" class="close" data-dismiss="modal">×</a>
            <h3><fmt:message key="step4.rightToResearch" /></h3>
        </div>
        <div class="modal-body">
            <p><fmt:message key="step4.rightToResearch.text" /></p>
        </div>
        <div class="modal-footer"></div>
    </div>

    <div id="right-to-redistribute-modal" class="modal hide fade">
        <div class="modal-header">
            <a href="#" class="close" data-dismiss="modal">×</a>
            <h3><fmt:message key="step4.rightToRedistribute" /></h3>
        </div>
        <div class="modal-body">
            <p><fmt:message key="step4.rightToRedistribute.text" /></p>
        </div>
        <div class="modal-footer"></div>
    </div>

    <div id="right-to-publish-modal" class="modal hide fade">
        <div class="modal-header">
            <a href="#" class="close" data-dismiss="modal">×</a>
            <h3><fmt:message key="step4.rightToPublish" /></h3>
        </div>
        <div class="modal-body">
            <p><fmt:message key="step4.rightToPublish.text" /></p>
        </div>
        <div class="modal-footer"></div>
    </div>

    <div id="right-to-commercialize-modal" class="modal hide fade">
        <div class="modal-header">
            <a href="#" class="close" data-dismiss="modal">×</a>
            <h3><fmt:message key="step4.rightToCommercialize" /></h3>
        </div>
        <div class="modal-body">
            <p><fmt:message key="step4.rightToCommercialize.text" /></p>
        </div>
        <div class="modal-footer"></div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        markProgress('#grantRightsStep');
    });
</script>