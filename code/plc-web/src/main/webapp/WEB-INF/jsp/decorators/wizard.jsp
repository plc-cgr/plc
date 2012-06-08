<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<fmt:message var="pageTitle" key="pageTitle" />
<title><decorator:title default="${pageTitle}" /></title>
<link type="image/x-icon" rel="shortcut icon" href="<c:url value='/images/favicon.ico'/>" />
<link type="text/css" rel="stylesheet" media="all" href="<c:url value='/styles/plc.css'/>" />
<link type="text/css" rel="stylesheet" media="all"
    href="<c:url value='/scripts/jquery/css/smoothness/jquery-ui-1.8.18.custom.css'/>" />
<%@ include file="/WEB-INF/jsp/common/scripts.jsp"%>
<decorator:head />
</head>
<body>
    <div id="bootstrap" />
    <div id="container" class="container">
        <div id="content" class="wrapper">
            <div id="logout_link">
                <s:url value="/www/protected/uploadData/view.action" var="loginUrl"/>
                <a href="${loginUrl}"><span class="label"><fmt:message key="login" /></span></a>
            </div>
            <div id="consent_header" class="page-header">
                <h1>
                    <fmt:message key="pageTitle" /> <small><fmt:message key="gettingConsent" /></small>
                </h1>
            </div>
            <div id="row" class="row">
                <div id="span10" class="span10">
                    <decorator:body />
                    <div id="fiveam-footer-logo"></div>
                </div>
                <div id="span4" class="span4">
                    <div id="sidebar">
                        <h6><fmt:message key="menu.getInformed" /></h6>
                        <ul>
                            <li id="welcomeStep"><fmt:message key="menu.welcome" /></li>
                            <li id="termsOfUseStep"><fmt:message key="menu.termsOfUse" /></li>
                            <li id="grantRightsStep"><fmt:message key="menu.grantRights" /></li>
                            <li id="watchVideoStep"><fmt:message key="menu.watchVideo" /></li>
                            <li id="checkpointStep"><fmt:message key="menu.checkpoint" /></li>
                            <li id="acknowledgeUnderstandingStep"><fmt:message key="menu.acknowledgeUnderstanding" /></li>
                        </ul>
                        <h6><fmt:message key="menu.consentToResearch" /></h6>
                        <ul>
                            <li id="consentFormStep"><fmt:message key="menu.consentForm" /></li>
                            <li id="generateIdStep"><fmt:message key="menu.generateId" /></li>
                        </ul>
                        <h6><fmt:message key="menu.uploadYourData" /></h6>
                        <ul>
                            <li id="userProfileStep"><fmt:message key="menu.userProfile" /></li>
                            <li id="signInStep"><fmt:message key="menu.signIn" /></li>
                            <li id="uploadDataStep"><fmt:message key="uploadData" /></li>
                        </ul>
                    </div>
                    <div id="agreement_help" style="display: none;">
                    <h6><fmt:message key="toc" /></h6>
                    <p>
                        <a href="#summary"><fmt:message key="toc.summary" /></a>
                    </p>
                    <p>
                        <a href="#purpose_of_the_study"><fmt:message key="toc.purposeOfTheStudy" /></a>
                    </p>
                    <p>
                        <a href="#procedures"><fmt:message key="toc.procedures" /></a>
                    </p>
                    <p>
                        <a href="#risks_and_discomforts"><fmt:message key="toc.risksAndDiscomforts" /></a>
                    </p>
                    <p>
                        <a href="#new_information"><fmt:message key="toc.newInformation" /></a>
                    </p>
                    <p>
                        <a href="#benefits"><fmt:message key="toc.benefits" /></a>
                    </p>
                    <p>
                        <a href="#costs"><fmt:message key="toc.costs" /></a>
                    </p>
                    <p>
                        <a href="#payment_for_participation"><fmt:message key="toc.paymentForParticipation" /></a>
                    </p>
                    <p>
                        <a href="#alternative_treatment"><fmt:message key="toc.alternativeTreatment" /></a>
                    </p>
                    <p>
                        <a href="#confidentiality"><fmt:message key="toc.confidentiality" /></a>
                    </p>
                    <p>
                        <a href="#compensation_for_injury"><fmt:message key="toc.compensationForInjury" /></a>
                    </p>
                    <p>
                        <a href="#voluntary_participation_and_withdrawl"><fmt:message key="toc.voluntaryParticipationAndWithdrawl" /></a>
                    </p>
                    <p>
                        <a href="#source_of_funding_for_the_study"><fmt:message key="toc.SourceOfFundingForTheStudy" /></a>
                    </p>
                    <p>
                        <a href="#questions"><fmt:message key="toc.questions" /></a>
                    </p>
                    <p>
                        <a href="#consent"><fmt:message key="toc.consent" /></a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>