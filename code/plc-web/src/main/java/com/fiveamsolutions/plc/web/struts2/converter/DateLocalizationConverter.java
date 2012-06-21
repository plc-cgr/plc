package com.fiveamsolutions.plc.web.struts2.converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;

import com.opensymphony.xwork2.ActionContext;

/**
 * Region aware date converter.  Unlike the default Struts converter, this will try to use
 * the English (US) date format by default if the region passed is not specifically supported.
 * 
 * @author Arthur Kong <akong@5amsolutions.com>
 *
 */
@SuppressWarnings("PMD.SimpleDateFormatNeedsLocale")
public class DateLocalizationConverter extends StrutsTypeConverter {
    
    private static Map<String, String> supportedLanguageMap = new HashMap<String, String>();
    
    private static final String FRENCH_LANGUAGE_CODE = "fr";
    private static final String GERMAN_LANGUAGE_CODE = "de";
    private static final String DUTCH_LANGUAGE_CODE = "nl";
    
    private static final String DEFAULT_DATE_FORMAT = "MM/dd/yyyy";
    
    static {
        supportedLanguageMap.put(FRENCH_LANGUAGE_CODE, "dd/MM/yyyy");
        supportedLanguageMap.put(GERMAN_LANGUAGE_CODE, "dd.MM.yyyy");
        supportedLanguageMap.put(DUTCH_LANGUAGE_CODE, "dd-MM-yyyy");
    }
    
    /**
     * {@inheritDoc}
     */
    public Object convertFromString(Map context, String[] values, Class toClass) {
        try {            
            SimpleDateFormat formatter = getRegionalDateFormatter();
                       
            return (Date) formatter.parse(values[0]);
        } catch (ParseException pe) {
            return null;
        }
    }

    /**
     * {@inheritDoc}
     */
    public String convertToString(Map context, Object o) {        
        Date date = (Date) o;        
        SimpleDateFormat formatter = getRegionalDateFormatter();
        
        return formatter.format(date);
    }
    
    private SimpleDateFormat getRegionalDateFormatter() {
        String languageCode = getLocale();       
        
        SimpleDateFormat formatter = new SimpleDateFormat(DEFAULT_DATE_FORMAT);
        String dateFormat = supportedLanguageMap.get(languageCode);
        if (dateFormat != null) {
            formatter = new SimpleDateFormat(dateFormat);
        }
        formatter.setLenient(false);
        
        return formatter;
    }
        
    /**
     * @return a String containing the locale/language code
     */
    protected String getLocale() {
        return ActionContext.getContext().getLocale().toString();
    }
}
