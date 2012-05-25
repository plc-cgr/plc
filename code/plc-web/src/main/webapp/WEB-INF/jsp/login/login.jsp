<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<div id="sage_form">
    <h3>Sign in using your Portal Legal Consent Username</h3>
    <form action="j_security_check" method="post" id="loginForm" name="loginForm" onsubmit="${onSubmit} return false;">
        <c:if test="${not empty param.failedLogin}">
            <div id="error-box" class="error-box">
                <fmt:message key="errors.password.mismatch" />
            </div>
        </c:if>
        <div class="clearfix">
            <label for="username"><fmt:message key="login.username" /></label>
            <div class="input">
                <input type="text" tabindex="1" id="username" name="j_username" maxlength="50" size="25" value="" class="xlarge"/>
            </div>
        </div>
        <div class="clearfix">
            <label for="password"><fmt:message key="login.password" /></label>
            <div class="input">
                <input type="password" tabindex="2" id="password" name="j_password" maxlength="50" size="25" value="" class="xlarge"/>
            </div>
        </div>
        <fmt:message key="button.signIn" var="signInLabel" />
        <input id="signInButton" class="btn primary" type="submit" value="${signInLabel}" tabindex="6" onclick="submit(); return false;" />
    </form>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        markProgress('#signInStep');
    });
</script>