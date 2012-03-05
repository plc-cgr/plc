/**
 * Copyright (c) 2012, 5AM Solutions, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * - Redistributions of source code must retain the above copyright notice,
 * this list of conditions and the following disclaimer.
 *
 * - Redistributions in binary form must reproduce the above copyright notice,
 * this list of conditions and the following disclaimer in the documentation
 * and/or other materials provided with the distribution.
 *
 * - Neither the name of the author nor the names of its contributors may be
 * used to endorse or promote products derived from this software without
 * specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */
package com.fiveamsolutions.plc.dao;

import java.util.Date;

import org.apache.commons.lang3.RandomStringUtils;

import com.fiveamsolutions.plc.data.ChallengeQuestion;
import com.fiveamsolutions.plc.data.PatientAccount;
import com.fiveamsolutions.plc.data.PatientData;
import com.fiveamsolutions.plc.data.transfer.Patient;

/**
 * @author Abraham J. Evans-EL <aevansel@5amsolutions.com>
 *
 */
public class TestPLCEntityFactory {
    private static final int PASSWORD_LENGTH = 20;
    private static final int USERNAME_LENGTH = 20;
    private static final int GUID_LENGTH = 64;

    /**
     * Creates a patient data entity for testing.
     * @return the patient data entity
     */
    public static PatientData createPatientData() {
        PatientData pd = new PatientData();
        pd.setFirstName("firstName");
        pd.setBirthName("birthName");
        pd.setBirthCountry("birthCountry");
        pd.setBirthPlace("birthPlace");
        pd.setBirthDate(new Date());
        return pd;
    }

    /**
     * Creates a patient account entity for testing.
     * @return the patient account entity
     */
    public static PatientAccount createPatientAccount() {
        PatientAccount pa = new PatientAccount();
        pa.setEmail("test@example.com");
        pa.setPassword(RandomStringUtils.random(PASSWORD_LENGTH));
        pa.setUsername(RandomStringUtils.random(USERNAME_LENGTH));
        pa.setGuid(RandomStringUtils.random(GUID_LENGTH));
        pa.setPatientData(createPatientData());

        ChallengeQuestion challenge = new ChallengeQuestion();
        challenge.setQuestion("Mother's Maiden Name");
        challenge.setAnswer("Foo");
        pa.getChallengeQuestions().add(challenge);
        return pa;
    }

    /**
     * Creates patient transfer entity for testing.
     * @return the patient
     */
    public static Patient createPatient() {
        Patient patient = new Patient();
        patient.setEmail("test@example.com");
        patient.setPassword(RandomStringUtils.random(PASSWORD_LENGTH));
        patient.setUsername(RandomStringUtils.random(USERNAME_LENGTH));
        patient.setFirstName("firstName");
        patient.setBirthName("birthName");
        patient.setBirthCountry("birthCountry");
        patient.setBirthPlace("birthPlace");
        patient.setBirthDate(new Date());
        return patient;
    }
}