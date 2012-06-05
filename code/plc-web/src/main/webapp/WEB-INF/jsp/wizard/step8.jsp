<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<div id="agreement_form">

    <!-- The Beginning of a Record -->
    <h2><fmt:message key="step8.header" /></h2>

    <h3><fmt:message key="step8.title" />: <fmt:message key="step8.title.value" /></h3>
    
    <h3><fmt:message key="step8.sponsor" />: <fmt:message key="step8.sponsor.value" /></h3>

    <h3><fmt:message key="step8.investigator" />: <fmt:message key="step8.investigator.one" /> <br/> <fmt:message key="step8.investigator.two" /></h3>
    
    <h3><fmt:message key="step8.sites" />: <fmt:message key="step8.sites.value" /></h3>
    
    <h3><fmt:message key="step8.studyRelatedPhoneNumbers" />: <fmt:message key="step8.studyRelatedPhoneNumbers.phone" /> <br/>
    	<fmt:message key="step8.studyRelatedPhoneNumbers.fax" /> (<fmt:message key="fax" />)</h3>
    
    <h3><fmt:message key="step8.responsibleInstitution" /></h3>
    
    <p><fmt:message key="step8.consentForm.text" /></p>
        
    <h3 id="summary"><fmt:message key="step8.summary" /></h3>
    
    <p><fmt:message key="step8.informedConsentIncludes" />:
        <ul>
            <li><fmt:message key="step8.informedConsentIncludes.li1" /></li>
            <li><fmt:message key="step8.informedConsentIncludes.li2" /></li>
            <li><fmt:message key="step8.informedConsentIncludes.li3" /></li>
            <li><fmt:message key="step8.informedConsentIncludes.li4" /></li>
        </ul>

        <fmt:message key="step8.thingsToKnowBefore" />:  
        <ul>
            <li><fmt:message key="step8.thingsToKnowBefore.li1" /></li>
            <li><fmt:message key="step8.thingsToKnowBefore.li2" /></li>
            <li><fmt:message key="step8.thingsToKnowBefore.li3" /></li>
            <li><fmt:message key="step8.thingsToKnowBefore.li4" />.</li>
            <li><fmt:message key="step8.thingsToKnowBefore.li5" /></li>
        </ul>
    </p>
    
    <h3 id="purpose_of_the_study"><fmt:message key="step8.purposeOfStudy" /></h3>
    
    <p>
        <ul>
            <li><fmt:message key="step8.purposeOfStudy.li1" /></li>
            <li><fmt:message key="step8.purposeOfStudy.li2" /></li>
            <li><fmt:message key="step8.purposeOfStudy.li3" />:
                <ul>
                    <li><fmt:message key="step8.purposeOfStudy.li3.li1" /></li>
                    <li><fmt:message key="step8.purposeOfStudy.li3.li2" /></li>
                    <li><fmt:message key="step8.purposeOfStudy.li3.li3" /></li>
                </ul>
            </li>
            <li><fmt:message key="step8.purposeOfStudy.li4" /></li>
        </ul>
    </p>
    
    <h3 id="procedures"><fmt:message key="step8.procedures" /></h3>
    
    <p>
        <ul>
            <li><fmt:message key="step8.procedures.li1" /></li>
            <li><fmt:message key="step8.procedures.li2" /></li>
            <li><fmt:message key="step8.procedures.li3" /></li>
            <li><fmt:message key="step8.procedures.li4" />:
                
                <ol>
                    <li><fmt:message key="step8.procedures.li4.li1" /></li>
                    <li><fmt:message key="step8.procedures.li4.li2" /></li>
                    <li><fmt:message key="step8.procedures.li4.li3" /></li>
                    <li><fmt:message key="step8.procedures.li4.li4" /></li>
                    <li><fmt:message key="step8.procedures.li4.li5" /></li>
                    <li><fmt:message key="step8.procedures.li4.li6" /></li>
                    <li><fmt:message key="step8.procedures.li4.li7" /></li>
                    <li><fmt:message key="step8.procedures.li4.li8" /></li>
                    <li><fmt:message key="step8.procedures.li4.li9" /></li>
                    <li><fmt:message key="step8.procedures.li4.li10" /></li>
                    <li><fmt:message key="step8.procedures.li4.li11" /></li>
                    <li><fmt:message key="step8.procedures.li4.li12" /></li>
                    <li><fmt:message key="step8.procedures.li4.li13" /></li>
                    <li><fmt:message key="step8.procedures.li4.li14" /></li>
                    <li><fmt:message key="step8.procedures.li4.li15" /></li>
                    <li><fmt:message key="step8.procedures.li4.li16" /></li>
                    <li><fmt:message key="step8.procedures.li4.li17" /></li>
                    <li><fmt:message key="step8.procedures.li4.li18" /></li>
                </ol>
                <ul>
                    <li><fmt:message key="step8.procedures.li4.li19" /></li>
                </ul>
            </li>
            <li><fmt:message key="step8.procedures.li5" /></li>
            <li><fmt:message key="step8.procedures.li6" /></li>
        </ul>
    </p>
    
    <h3 id="risks_and_discomforts"><fmt:message key="step8.risksAndDiscomforts" /></h3>
    
    <p>
        <fmt:message key="step8.risksAndDiscomforts.top" />:
        <ul>
            <li><fmt:message key="step8.risksAndDiscomforts.li1" /></li>
            <li><fmt:message key="step8.risksAndDiscomforts.li2" /></li>
            <li><fmt:message key="step8.risksAndDiscomforts.li3" /></li>
            <li><fmt:message key="step8.risksAndDiscomforts.li4" /></li>
            <li><fmt:message key="step8.risksAndDiscomforts.li5" /></li>
            <li><fmt:message key="step8.risksAndDiscomforts.li6" /></li>
            <li><fmt:message key="step8.risksAndDiscomforts.li7" /></li>
            <li><fmt:message key="step8.risksAndDiscomforts.li8" /></li>
            <li><fmt:message key="step8.risksAndDiscomforts.li9" /></li>
            <li><fmt:message key="step8.risksAndDiscomforts.li10" /></li>
        </ul>
    </p>
    
    <h3 id="new_information"><fmt:message key="step8.newInformation" /></h3>
    <p><fmt:message key="step8.website" /> 
       <a href="<fmt:message key="step8.website.url" />" target="_blank"><fmt:message key="step8.website.name" /></a> 
       <fmt:message key="step8.website.remainder" /></p>
       
    <h3 id="benefits"><fmt:message key="step8.benefits" /></h3>
    <p><fmt:message key="step8.benefits.p1" /></p>
    <p><fmt:message key="step8.benefits.p2" /></p>
    <p><fmt:message key="step8.benefits.p3" /></p>
       
    <h3 id="costs"><fmt:message key="step8.costs" /></h3>
    <p><fmt:message key="step8.costs.p1" /></p>
    
    <h3 id="payment_for_participation"><fmt:message key="step8.paymentForParticipation" /></h3>
    <p><fmt:message key="step8.paymentForParticipation.p1" /></p>
       
    <h3 id="alternative_treatment"><fmt:message key="step8.alternativeTreatment" /></h3>
    <p><fmt:message key="step8.alternativeTreatment.p1" /></p>
    
    <h3 id="confidentiality"><fmt:message key="step8.confidentiality" /></h3>
    <p><fmt:message key="step8.confidentiality.p1" /></p>
    <p><fmt:message key="step8.confidentiality.p2" />:
       
        <ul>
            <li><fmt:message key="step8.confidentiality.p2.li1" /></li>
            <li><fmt:message key="step8.confidentiality.p2.li2" /></li>
            <li><fmt:message key="step8.confidentiality.p2.li3" /></li>
            <li><fmt:message key="step8.confidentiality.p2.li4" /></li>
        </ul>
    </p>
    <p><fmt:message key="step8.confidentiality.p3" /></p>
    <br/>
    
    <h5><fmt:message key="step8.confidentiality.p4" /></h5>
    <p>
        <ul>
            <li><fmt:message key="step8.confidentiality.p4.li1" /></li>
            <li><fmt:message key="step8.confidentiality.p4.li2" /></li>
            <li><fmt:message key="step8.confidentiality.p4.li3" /></li>
        </ul>
        <fmt:message key="step8.confidentiality.p4.end" />
    </p>
    
    <h5><fmt:message key="step8.confidentiality.p5" /></h5>
    <p><fmt:message key="step8.confidentiality.p6" /></p>
    
    <h5><fmt:message key="step8.confidentiality.p7" /></h5>
    <p><fmt:message key="step8.confidentiality.p8" /></p>
    
    <h5><fmt:message key="step8.confidentiality.p9" /></h5>
    <p><fmt:message key="step8.confidentiality.p10" /></p>
    <p><fmt:message key="step8.confidentiality.p11" /></p>
    <p><fmt:message key="step8.confidentiality.p12" /></p>
    
    <h5><fmt:message key="step8.confidentiality.p13" /></h5>
    <p><fmt:message key="step8.confidentiality.p14" /></p>
    
    <h3 id="compensation_for_injury"><fmt:message key="step8.compensationForInjury" /></h3>
    <p><fmt:message key="step8.compensationForInjury.p1" /></p>
       
    <h3 id="voluntary_participation_and_withdrawl"><fmt:message key="step8.voluntaryParticipationAndWithdrawl" /></h3>
    <p><fmt:message key="step8.voluntaryParticipationAndWithdrawl.p1" /></p>
    <p><fmt:message key="step8.voluntaryParticipationAndWithdrawl.p2" /></p>
       
    <h3 id="source_of_funding_for_the_study"><fmt:message key="step8.sourceOfFundingForTheStudy" /></h3>
    <p><fmt:message key="step8.sourceOfFundingForTheStudy.p1" /></p>
    
    <h5><fmt:message key="step8.financialDisclosure" /></h5>
    <p><fmt:message key="step8.financialDisclosure.p1" /></p>
    
    <h3 id="questions"><fmt:message key="step8.questions" /></h3>
    <p><fmt:message key="step8.questions.p1" />:
        <ul>
            <li><fmt:message key="step8.questions.p1.li1" /></li>
            <li><fmt:message key="step8.questions.p1.li2" /></li>
            <li><fmt:message key="step8.questions.p1.li3" /></li>
        </ul>
    </p>
    <p><fmt:message key="step8.questions.p2" />:</p>
    <p>  
       <br/><fmt:message key="step8.wirb" /><br/>
       <fmt:message key="step8.wirb.address1" /><br/>
       <fmt:message key="step8.wirb.address2" /><br/>
       <fmt:message key="step8.questions.p2.telephone" />  <fmt:message key="step8.wirb.phone" /><br/>
       <fmt:message key="step8.questions.p2.email" />: <fmt:message key="step8.wirb.email" /><br/>
    </p>       
    <p><fmt:message key="step8.wirb.p1" /></p>
    <p><fmt:message key="step8.wirb.p2" /></p>
    <p><fmt:message key="step8.wirb.p3" /></p>
    <p><fmt:message key="step8.wirb.p4" /></p>
    
    <h3 id="consent"><fmt:message key="step8.consent" /></h3>
    <p><fmt:message key="step8.consent.p1" /></p>
    <p><fmt:message key="step8.consent.p2" /></p>
    <p><fmt:message key="step8.consent.p3" /></p>
    
    <s:form cssClass="form-stacked" id="consentForm" name="agreement" namespace="/www/wizard" action="step9" method="post">
        <fieldset>
            <div class="clearfix">
                <div class="input">
                    <ul class="inputs-list">
                        <li><label> <s:checkbox cssClass="required" name="readAndUnderstood"/><span><fmt:message key="step8.readAndUnderstood.readAndUnderstood" /></span>
                                    <s:fielderror fieldName="readAndUnderstood" cssClass="error-message"/>
                        </label></li>
                        <li><label> <s:checkbox cssClass="required" name="consented"/><span><fmt:message key="step8.readAndUnderstood.consented" /></span>
                                    <s:fielderror fieldName="readAndUnderstood" cssClass="error-message"/>
                        </label></li>
                        <li><label> <s:checkbox cssClass="required" name="withdrawal"/><span><fmt:message key="step8.readAndUnderstood.withdrawal" /></span>
                                    <s:fielderror fieldName="readAndUnderstood" cssClass="error-message"/>
                        </label></li>
                    </ul>
                </div>
            </div>

    
            <div class="clearfix">
                <label for="first_name"><fmt:message key="user.firstName" /></label>
                <div class="input">
                    <s:textfield cssClass="xlarge required" id="first_name" name="firstName" size="30"/>
                    <s:fielderror fieldName="firstName" cssClass="error-message"/>
                </div>
            </div>
            <div class="clearfix">
                <label for="last_name"><fmt:message key="user.lastName" /></label>
                <div class="input">
                    <s:textfield cssClass="xlarge required" id="last_name" name="lastName" size="30"/>
                    <s:fielderror fieldName="lastName" cssClass="error-message"/>
                </div>
            </div>

            <div class="clearfix">
                <label for="date"><fmt:message key="date" /></label>
                <div class="input">
                    <s:textfield cssClass="xlarge disabled" id="date" name="today" />
                    <s:fielderror fieldName="today" cssClass="error-message"/>
                </div>
                <div class="actions">
                    <input type="submit" class="btn primary" value="<fmt:message key="step8.submit" />" />
                </div>
            </div>
        </fieldset>
    </s:form>
    <!-- The End of a Record -->
</div>
<script type="text/javascript">
    $(document).ready(function() {
    	$('#agreement_help').show();
        $('#date').datepicker();
        $('#date').datepicker('setDate', new Date());
        markProgress('#consentFormStep');
    });
</script>