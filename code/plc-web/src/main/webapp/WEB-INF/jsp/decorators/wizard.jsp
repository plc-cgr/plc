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
                <a href="${loginUrl}"><span class="label">login</span></a>
            </div>
            <div id="consent_header" class="page-header">
                <h1>
                    Consent to Research <small>Getting Consent</small>
                </h1>
            </div>
            <div id="row" class="row">
                <div id="span10" class="span10">
                    <decorator:body />
                </div>
                <div id="span4" class="span4">
                    <div id="sidebar">
                        <h6>Get Informed</h6>
                        <ul>
                            <li id="welcomeStep">Welcome</li>
                            <li id="termsOfUseStep">Researcher Terms of Use</li>
                            <li id="grantRightsStep">Grant Rights</li>
                            <li id="watchVideoStep">Watch Video</li>
                            <li id="checkpointStep">Checkpoint</li>
                            <li id="acknowledgeUnderstandingStep">Acknowledge Understanding</li>
                        </ul>
                        <h6>Consent to Research</h6>
                        <ul>
                            <li id="consentFormStep">Consent Form</li>
                            <li id="generateIdStep">Generate ID</li>
                        </ul>
                        <h6>Upload Your Data</h6>
                        <ul>
                            <li id="userProfileStep">User Profile</li>
                            <li id="signInStep">Sign In</li>
                            <li id="uploadDataStep">Upload Data</li>
                        </ul>
                    </div>
                    <div id="agreement_help" style="display: none;">
                    <h6>Table of Contents</h6>
                    <p>
                        <a href="#summary">Summary</a>
                    </p>
                    <p>
                        <a href="#purpose_of_the_study">Purpose of the Study</a>
                    </p>
                    <p>
                        <a href="#procedures">Procedures</a>
                    </p>
                    <p>
                        <a href="#risks_and_discomforts">Risks and Discomforts</a>
                    </p>
                    <p>
                        <a href="#new_information">New Information</a>
                    </p>
                    <p>
                        <a href="#benefits">Benefits</a>
                    </p>
                    <p>
                        <a href="#costs">Costs</a>
                    </p>
                    <p>
                        <a href="#payment_for_participation">Payment for Participation</a>
                    </p>
                    <p>
                        <a href="#alternative_treatment">Alternative Treatment</a>
                    </p>
                    <p>
                        <a href="#confidentiality">Confidentiality</a>
                    </p>
                    <p>
                        <a href="#compensation_for_injury">Compensation for Injury</a>
                    </p>
                    <p>
                        <a href="#voluntary_participation_and_withdrawl">Voluntary Participation and Withdrawl</a>
                    </p>
                    <p>
                        <a href="#source_of_funding_for_the_study">Source of Funding for the Study</a>
                    </p>
                    <p>
                        <a href="#questions">Questions</a>
                    </p>
                    <p>
                        <a href="#consent">Consent</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>