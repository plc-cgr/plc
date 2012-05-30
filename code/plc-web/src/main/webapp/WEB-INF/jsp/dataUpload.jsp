<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<div id="uploadData">
    <div id="take_survey_task">
        <h3>
            1. <fmt:message key="uploadData.takeOurSurvey" />
            <c:choose>
                <c:when test="${surveyTaken}">
                    <span class="label success"><fmt:message key="uploadData.done" /></span>
                </c:when>
                <c:otherwise>
                    <span class="label warning"><fmt:message key="uploadData.todo" /></span>
                </c:otherwise>
            </c:choose>
        </h3>
        <p><fmt:message key="uploadData.surveyDetail" /></p>
        
        <div class="actions">
            <s:form id="surveyForm" namespace="/www/protected" action="uploadData/takeSurvey" method="post">
                <a id="surveyLink" href="https://www.surveymonkey.com/s/DJZ3WSH" target="_blank" class="btn">Take the survey</a>
            </s:form>
        </div>
    </div>

    <h3>
        2. <fmt:message key="uploadData.uploadYourData" />
        <c:choose>
            <c:when test="${not empty retrievedPatientData}">
                <span class="label success"><fmt:message key="uploadData.done" /></span>
            </c:when>
            <c:otherwise>
                <span class="label warning"><fmt:message key="uploadData.todo" /></span>
            </c:otherwise>
        </c:choose>
    </h3>
    <p><fmt:message key="uploadData.uploadYourDataDetail" /></p>
    
    <c:if test="${not empty retrievedPatientData}">
        <table>
            <thead>
                <tr>
                    <th><fmt:message key="uploadData.file" /></th>
                    <th><fmt:message key="uploadData.source" /></th>
                    <th><fmt:message key="uploadData.version" /></th>
                    <th><fmt:message key="uploadData.uploadedDate" /></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${retrievedPatientData}" var="data">
                    <tr>
                        <td>${data.fileName}</td>
                        <td>${data.dataSource.code}</td>
                        <td>${data.version}</td>
                        <td><fmt:formatDate type="both" value="${data.uploadedDate}" /></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>
    <s:form cssClass="form-stacked" id="uploadDataForm" namespace="/www/protected" action="uploadData/upload" method="post"
        enctype="multipart/form-data">
        <fieldset>
            <div class="clearfix">
                <label for="dataFile"><fmt:message key="uploadData.dataFile" />:&nbsp;&nbsp;</label>
                <div class="input">
                    <s:file id="dataFile" name="dataFile" />
                    <s:fielderror fieldName="dataFile" cssClass="error-message" />
                </div>
            </div>
            <div class="clearfix">
                <label for=""><fmt:message key="uploadData.dataContained" /></label>
                <div class="input">
                    <s:select id="dataType" cssClass="xlarge required" name="patientData.dataType"
                        list="%{@com.fiveamsolutions.plc.data.enums.PatientDataType@values()}" listValue="code"
                        cssErrorClass="error-field" />
                    <s:fielderror fieldName="patientData.dataType" cssClass="error-message" />
                </div>
            </div>
            <div class="clearfix">
                <label for=""><fmt:message key="uploadData.source" /></label>
                <div class="input">
                    <s:select id="dataSource" cssClass="xlarge required" name="patientData.dataSource"
                        list="%{@com.fiveamsolutions.plc.data.enums.PatientDataSource@values()}" listValue="code"
                        cssErrorClass="error-field" />
                    <s:fielderror fieldName="patientData.dataSource" cssClass="error-message" />
                </div>
            </div>
            <div class="clearfix">
                <label for=""><fmt:message key="uploadData.version" /></label>
                <div class="input">
                    <s:textfield id="version" name="patientData.version" />
                    <s:fielderror fieldName="patientData.version" cssClass="error-message" />
                </div>
            </div>
            <div class="clearfix">
                <label for=""><fmt:message key="uploadData.tagsOptional" /></label>
                <div class="input">
                    <s:textfield id="tags" name="tags" />
                    <p><fmt:message key="uploadData.enterTags" /></p>
                    <s:fielderror fieldName="tags" cssClass="error-message" />
                </div>

            </div>
            <div class="clearfix">
                <label for=""><fmt:message key="uploadData.fileComments" /></label>
                <div class="input">
                    <s:textarea id="notes" name="patientData.notes" />
                    <s:fielderror fieldName="patientData.notes" cssClass="error-message" />
                </div>
            </div>
            <div class="actions">
                <s:submit label="Upload" id="uploadButton" cssClass="btn primary" />
            </div>
        </fieldset>
    </s:form>
</div>
<div id="confirmationMessage" style="display: none">
    <p><fmt:message key="uploadData.confirmationMessage" /></p>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        surveyLinkHandler();
        markProgress('#uploadDataStep');
    	var confirmDialog = 
        $('#confirmationMessage').dialog({
        	autoOpen: false,
            modal: true,
            buttons: {
                "Confirm": function() {
                    $(this).dialog('close');
                    $('#uploadDataForm').submit();
                 },
                 Cancel: function() {
                	$(this).dialog('close');
                }
            }
        });
    	$("#uploadButton").click(function(e) {
    		$(confirmDialog).dialog('open');
    		return false;
    	});
    });
</script>