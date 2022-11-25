<%@ tag body-content="empty" pageEncoding="utf-8" %>
<%@ tag import="com.util.Time" %>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ attribute name="value" required="true" type="java.lang.String" %>
<%= Time.StringDateFormatDayOfWeek(value) %>