<%--
  Created by IntelliJ IDEA.
  User: kyosti
  Date: 6.4.2015
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>

<portlet:defineObjects />

<portlet:renderURL var="viewURL">
  <portlet:param name="mvcPath" value="/view.jsp"></portlet:param>
</portlet:renderURL>

<portlet:actionURL name="addEntry" var="addEntryURL"></portlet:actionURL>

<aui:form action="<%= addEntryURL %>" name="<portlet:namespace />fm">
  <aui:fieldset>
    <aui:input name="name"></aui:input>
    <aui:input name="message"></aui:input>
  </aui:fieldset>

  <aui:button-row>
    <aui:button type="submit"></aui:button>
    <aui:button type="cancel" onClick="<%= viewURL.toString() %>"></aui:button>
  </aui:button-row>

</aui:form>