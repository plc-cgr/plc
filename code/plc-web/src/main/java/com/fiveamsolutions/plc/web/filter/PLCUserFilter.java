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
package com.fiveamsolutions.plc.web.filter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;

import com.fiveamsolutions.plc.dao.PLCUserDao;
import com.fiveamsolutions.plc.data.PLCUser;
import com.fiveamsolutions.plc.web.struts2.util.PLCSessionHelper;
import com.google.inject.Inject;

/**
 * Places the currently logged in user into the session if it's not already there.
 *
 * @author Abraham J. Evans-EL <aevansel@5amsolutions.com>
 */
public class PLCUserFilter implements Filter {
    private static final Logger LOG = Logger.getLogger(PLCUserFilter.class);
    private PLCUserDao userDao;

    /**
     * @param dao the user dao to set
     */
    @Inject
    public void setUserAccountDao(PLCUserDao dao) {
        this.userDao = dao;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void destroy() {
        //Do nothing
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        String username = httpRequest.getRemoteUser();
        if (StringUtils.isNotBlank(username) && PLCSessionHelper.getLoggedIn(httpRequest.getSession()) == null) {
            PLCUser user = userDao.getByUsername(username);
            PLCSessionHelper.setLoggedIn(user != null, httpRequest.getSession());
        }
        try {
            chain.doFilter(request, response);
        } catch (Exception e) {
            LOG.error("Filter chaining error.", e);
        }
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void init(FilterConfig config) {
        //Do nothing
    }
}
