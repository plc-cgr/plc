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
                <c:if test="${sessionScope.loggedIn}">
                    <s:url value="/www/login/logout.action" var="logoutUrl"/>
                    <a href="${logoutUrl}"><span class="label"><fmt:message key="logout" /></span></a>
                </c:if>
            </div>
            <div id="consent_header" class="page-header">
                <h1>
                    <fmt:message key="pageTitle" /> <small><fmt:message key="uploadData" /></small>
                </h1>
            </div>
            <div id="row" class="row">
                <div id="span10" class="span10">
                    <decorator:body />
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
                </div>
            </div>
        </div>
    </div>
</body>
</html>