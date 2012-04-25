/*******************************************************************************
 * Copyright (c) 2012, 5AM Solutions, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification, are permitted provided that the 
 * following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice, this list of conditions and the following 
 * disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following 
 * disclaimer in the documentation 
 * and/or other materials provided with the distribution.
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, 
 * INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE 
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, 
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT 
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED 
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *******************************************************************************/
package com.fiveamsolutions.plc.service.scheduled;

import org.nnsoft.guice.guartz.QuartzModule;

import com.fiveamsolutions.plc.util.PLCApplicationResources;

/**
 * @author Abraham J. Evans-EL <aevansel@5amsolutions.com>
 *
 */
public class ScheduledJobModule extends QuartzModule {
    private static final String CLEANUP_INTERVAL_KEY = "file.cleanup.interval";
    private final PLCApplicationResources appResources;

    /**
     * Class constructor.
     * @param appResources the application resources
     */
    public ScheduledJobModule(PLCApplicationResources appResources) {
        this.appResources = appResources;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    protected void schedule() {
        String interval = appResources.getStringResource(CLEANUP_INTERVAL_KEY);
        scheduleJob(CleanupExpiredDownloadsJob.class).withCronExpression("0 0/" + interval + " * * * ?");
    }
}
