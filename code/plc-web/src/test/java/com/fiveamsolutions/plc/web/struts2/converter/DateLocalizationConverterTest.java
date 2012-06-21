package com.fiveamsolutions.plc.web.struts2.converter;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;

/**
 * 
 * @author Arthur Kong <akong@5amsolutions.com>
 *
 */
public class DateLocalizationConverterTest {
    
    private static String FRENCH_DATE = "20/06/2012";
    private static String FRENCH_INVALID_DATE = "33/33/2012";
    private static String GERMAN_DATE = "20.06.2012";
    private static String GERMAN_INVALID_DATE = "33.33.2012";
    private static String DUTCH_DATE = "20-06-2012";
    private static String DUTCH_INVALID_DATE = "33-33-2012";    
    private static String ENGLISH_DATE = "06/20/2012";
    private static String ENGLISH_INVALID_DATE = "33/33/2012";
    private static String UNSUPPORTED_DATE = "June 20, 2012";
    private static String COMPARISON_TEST_DATE = "2012-06-20";
        
    @Test
    public void testConvert_French() throws Exception {
        DateLocalizationConverter dateConverter = createDateLocalizationConverter("fr");
        Date comparisonDate = createComparisonDate();
        
        Date date = (Date) dateConverter.convertFromString(null, new String[] { FRENCH_DATE }, null);
        assertTrue(date.equals(comparisonDate));
             
        String dateString = dateConverter.convertToString(null, date);
        assertEquals(dateString, FRENCH_DATE);
        
        date = (Date) dateConverter.convertFromString(null, new String[] { FRENCH_INVALID_DATE }, null);
        assertNull(date);
        
        date = (Date) dateConverter.convertFromString(null, new String[] { UNSUPPORTED_DATE }, null);
        assertNull(date);      
    }
    
    @Test
    public void testConvert_German() throws Exception {
        DateLocalizationConverter dateConverter = createDateLocalizationConverter("de");
        Date comparisonDate = createComparisonDate();
        
        Date date = (Date) dateConverter.convertFromString(null, new String[] { GERMAN_DATE }, null);
        assertTrue(date.equals(comparisonDate));
        
        String dateString = dateConverter.convertToString(null, date);
        assertEquals(dateString, GERMAN_DATE);
        
        date = (Date) dateConverter.convertFromString(null, new String[] { GERMAN_INVALID_DATE }, null);
        assertNull(date);
        
        date = (Date) dateConverter.convertFromString(null, new String[] { UNSUPPORTED_DATE }, null);
        assertNull(date);
    }
    
    @Test
    public void testConvert_Dutch() throws Exception {
        DateLocalizationConverter dateConverter = createDateLocalizationConverter("nl");
        Date comparisonDate = createComparisonDate();
        
        Date date = (Date) dateConverter.convertFromString(null, new String[] { DUTCH_DATE }, null);
        assertTrue(date.equals(comparisonDate));
        
        String dateString = dateConverter.convertToString(null, date);
        assertEquals(dateString, DUTCH_DATE);
        
        date = (Date) dateConverter.convertFromString(null, new String[] { DUTCH_INVALID_DATE }, null);
        assertNull(date);
        
        date = (Date) dateConverter.convertFromString(null, new String[] { UNSUPPORTED_DATE }, null);
        assertNull(date);
    }
    
    @Test
    public void testConvert_English() throws Exception {
        DateLocalizationConverter dateConverter = createDateLocalizationConverter("en");
        Date comparisonDate = createComparisonDate();
        
        Date date = (Date) dateConverter.convertFromString(null, new String[] { ENGLISH_DATE }, null);        
        assertTrue(date.equals(comparisonDate));
        
        String dateString = dateConverter.convertToString(null, date);
        assertEquals(dateString, ENGLISH_DATE);
        
        date = (Date) dateConverter.convertFromString(null, new String[] { ENGLISH_INVALID_DATE }, null);
        assertNull(date);
        
        date = (Date) dateConverter.convertFromString(null, new String[] { UNSUPPORTED_DATE }, null);
        assertNull(date);
    }
    
    @Test
    public void testConvert_Unknown() throws Exception {
        DateLocalizationConverter dateConverter = createDateLocalizationConverter("unknown");
        Date comparisonDate = createComparisonDate();
        
        Date date = (Date) dateConverter.convertFromString(null, new String[] { ENGLISH_DATE }, null);
        assertTrue(date.equals(comparisonDate));
        
        String dateString = dateConverter.convertToString(null, date);
        assertEquals(dateString, ENGLISH_DATE);
        
        date = (Date) dateConverter.convertFromString(null, new String[] { ENGLISH_INVALID_DATE }, null);
        assertNull(date);
        
        date = (Date) dateConverter.convertFromString(null, new String[] { UNSUPPORTED_DATE }, null);
        assertNull(date);
    }
    
    private Date createComparisonDate() throws Exception {
        SimpleDateFormat df = new SimpleDateFormat ("yyyy-MM-dd");
        return df.parse(COMPARISON_TEST_DATE);
    }
    
    private DateLocalizationConverter createDateLocalizationConverter(final String languageCode) {
        return new DateLocalizationConverter() {
            @Override
            protected String getLocale() {
                return languageCode;
            }
        };
    }
    

}
