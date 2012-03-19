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
package com.fiveamsolutions.plc.service;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Locale;

import org.apache.commons.codec.binary.Hex;
import org.apache.log4j.Logger;

import com.fiveamsolutions.plc.dao.PatientAccountDao;
import com.fiveamsolutions.plc.data.PatientAccount;
import com.fiveamsolutions.plc.data.PatientData;
import com.fiveamsolutions.plc.data.PatientDemographics;
import com.fiveamsolutions.plc.util.PLCApplicationResources;
import com.google.inject.Inject;

/**
 * @author Abraham J. Evans-EL <aevansel@5amsolutions.com>
 *
 */
public class PatientInformationServiceBean implements PatientInformationService {
    private static final Logger LOG = Logger.getLogger(PatientInformationServiceBean.class);
    private static final String DATE_FORMAT_KEY = "hashing.date.format";
    private static final String HASHING_ALGORITHM_KEY = "hashing.algorithm";
    private static final String ENCODING_KEY = "hashing.string.encoding";
    private final PLCApplicationResources appResources;
    private final PatientAccountDao patientAccountDao;
    private final MessageDigest digester;

    /**
     * Class constructor.
     * @param appResources the application resources
     * @param patientAccountDao the patient account dao
     * @throws NoSuchAlgorithmException if the hashing algorithm doesn't exist
     */
    @Inject
    public PatientInformationServiceBean(PLCApplicationResources appResources, PatientAccountDao patientAccountDao)
            throws NoSuchAlgorithmException {
        this.appResources = appResources;
        this.patientAccountDao = patientAccountDao;
        digester = MessageDigest.getInstance(this.appResources.getStringResource(HASHING_ALGORITHM_KEY));
    }

    /**
     * {@inheritDoc}
     */
    public String registerPatient(PatientAccount patient) {
        String guid = generatePatientGUID(patient.getPatientDemographics());
        StringBuilder builder = new StringBuilder().append(patient.getSalt()).append(patient.getPassword());
        byte[] toHashBytes = hashString(builder.toString());
        patient.setPassword(Hex.encodeHexString(digester.digest(toHashBytes)));
        patient.setGuid(guid);
        patientAccountDao.save(patient);
        return guid;
    }

    /**
     * {@inheritDoc}
     */
    public String generatePatientGUID(PatientDemographics patientDemographics) {
        SimpleDateFormat sdf =
                new SimpleDateFormat(appResources.getStringResource(DATE_FORMAT_KEY), Locale.getDefault());
        String dob = sdf.format(patientDemographics.getBirthDate());
        StringBuilder builder = new StringBuilder().append(patientDemographics.getFirstName())
                .append(patientDemographics.getBirthName()).append(dob).append(patientDemographics.getBirthPlace())
                .append(patientDemographics.getBirthCountry());
        digester.reset();
        byte[] bytes = hashString(builder.toString());
        return Hex.encodeHexString(digester.digest(bytes));
    }

    /**
     * {@inheritDoc}
     */
    public void addPatientData(String guid, PatientData patientData) {
        PatientAccount account = patientAccountDao.getByGuid(guid);
        if (account == null) {
            return;
        }
        account.getPatientData().add(patientData);
        patientAccountDao.save(account);
    }

    /**
     * Hashes the given string.
     * @param input the string to encode
     * @return the hashed string
     */
    private byte[] hashString(String input) {
        byte[] toHashBytes = {};
        try {
            toHashBytes = input.getBytes(appResources.getStringResource(ENCODING_KEY));
        } catch (UnsupportedEncodingException e) {
            LOG.error("Unable to retrieve bytes in UTF-8 format.", e);
        }
        return toHashBytes;
    }
}
